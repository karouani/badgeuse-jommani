var rc522 = require("rc522");
var mysql      = require('mysql');
var os = require( 'os' );
var networkInterfaces = os.networkInterfaces( );
var LCD = require('lcdi2c');
var lcd = new LCD( 1, 0x27, 20, 4 );
var macAddress = require('getmac');
/*********************************************************************/

var Gpio = require('onoff').Gpio,
   green_led = new Gpio(18, 'out'),
   buzzer = new Gpio(17, 'out'),
   red_led = new Gpio(17, 'out');


ecran_lcd("Bonjour tous le ","monde !!");

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'xxxxxxxxxxxxxxx',
  database : 'pointeuse'
});




connection.connect();
console.log('Ready!!!');
green_led.writeSync(green_led.readSync() === 0 ? 1 : 0)
lcd.off(); 

rc522(function(rfidSerialNumber){
    macAddress.getMac(function(err,macAddress){
    	if (err)  throw err;

    console.log("RFID withou replace ==> ",rfidSerialNumber);
    rfidSerialNumber = rfidSerialNumber.replace('InitRc522','');
		tcheck_badge(rfidSerialNumber,macAddress);
		console.log("RFID with replace ==> ",rfidSerialNumber);
		console.log("@Mac ==> ",macAddress);
	});
});

function ecran_lcd(message, message2){
		lcd.clear();
		//clearInterval(horloge);
		lcd.on();
	 	lcd.println(message,1);
		lcd.println(message2,2);
}

var getNetworkIPs = (function () {
    var ignoreRE = /^(127\.0\.0\.1|::1|fe80(:1)?::1(%.*)?)$/i;

    var exec = require('child_process').exec;
    var cached;
    var command;
    var filterRE;

    switch (process.platform) {
    case 'win32':
    //case 'win64': // TODO: test
        command = 'ipconfig';
        filterRE = /\bIPv[46][^:\r\n]+:\s*([^\s]+)/g;
        break;
    case 'darwin':
        command = 'ifconfig';
        filterRE = /\binet\s+([^\s]+)/g;
        // filterRE = /\binet6\s+([^\s]+)/g; // IPv6
        break;
    default:
        command = 'ifconfig';
        filterRE = /\binet\b[^:]+:\s*([^\s]+)/g;
        // filterRE = /\binet6[^:]+:\s*([^\s]+)/g; // IPv6
        break;
    }

    return function (callback, bypassCache) {
        if (cached && !bypassCache) {
            callback(null, cached);
            return;
        }
        // system call
        exec(command, function (error, stdout, sterr) {
            cached = [];
            var ip;
            var matches = stdout.match(filterRE) || [];
            //if (!error) {
            for (var i = 0; i < matches.length; i++) {
                ip = matches[i].replace(filterRE, '$1')
                if (!ignoreRE.test(ip)) {
                    cached.push(ip);
                }
            }
            //}
            callback(error, cached);
        });
    };
})();

function tcheck_badge(badge,address_mac){
  saveData(badge,address_mac);
}

function saveData(badge,address_mac){
	created = new Date();
	//var card  = {card:rfidSerialNumber,date:connection.escape(created)};
	var card  = {card:badge,connected:JSON.stringify(networkInterfaces)};
  badge = badge.replace('InitRc522','');
	var sql = "SELECT * FROM autorized_card  where state=1 AND card = '"+badge+"' ";
	//console.log(sql);
	connection.query(sql, function(err, results) {
	    numRows = results.length;
      //console.log(results);
	    var state  = 0;
		if(numRows > 0){
			state  = 2;
			//saveBadge(address_mac,results[0].id);
			connection.query('INSERT INTO cards SET date = now(),imei="'+address_mac+'", fk_autorized='+results[0].id+',?', card, function(err, result) { });
			if((results[0].name).length > 0){
				var msg1 = (((results[0].name).length > 16)?(results[0].name).substring(0,8):results[0].name);
				var msg2 = ((results[0].name).length > 17)?(results[0].name).substring(8):"Bienvenue !!" ;
				ecran_lcd(msg1,msg2);
        state = (results[0].imei == address_mac )?1:2;
			}else ecran_lcd("Bonjour Monsieur","Bienvenue !!");
			
			interval = (state == 1)?300:((state == 2)?500:1500);	 
			//beep_buzzer(red_led,state);
			//var query = connection.query('INSERT INTO cards SET date = now(),imei="'+address_mac+'", fk_autorized='+results[0].id+',?', card, function(err, result) { });
			var iv = setInterval(function(){
   				 buzzer.writeSync(buzzer.readSync() === 0 ? 1 : 0)
   			}, 100);
   			 
   			 // Stop blinking the LED and turn it off after 5 seconds.
   			setTimeout(function() {
   			 	clearInterval(iv); // Stop blinking
   			 	buzzer.writeSync(0);  // Turn LED off.
   			}, interval);

		}else{
			connection.query('INSERT INTO cards SET date = now(),imei="'+address_mac+'", fk_autorized=-1,?', card, function(err, result) { });
			var msg1 = "vous avez un ";
			var msg2 = "badge invalid !!" ;
			ecran_lcd(msg1,msg2);
			
			var iv = setInterval(function(){
   				 buzzer.writeSync(buzzer.readSync() === 0 ? 1 : 0)
   			}, 100);
   			 
   			 // Stop blinking the LED and turn it off after 5 seconds.
   			setTimeout(function() {
   			 	clearInterval(iv); // Stop blinking
   			 	buzzer.writeSync(0);  // Turn LED off.
   			}, 1500);
   		} 
		
		setTimeout(function() {
			lcd.off();
			lcd.clear();
		}, 3000);
	});
}

function beep_buzzer(buzzerid,state){
	
	var success_buzzer = setInterval(function(err){
        buzzerid.writeSync(buzzerid.readSync() === 0 ? 1 : 0);
	}, 100);
    buzzerid.writeSync(1);
	setTimeout(function() {
	    clearInterval(success_buzzer);
	    buzzerid.writeSync(0);
	    buzzerid.unexport();
	}, interval);
}
  
