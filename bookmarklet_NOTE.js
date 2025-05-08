javascript:(function(){
    var message = "✅ 𝟭𝟬.𝗔𝗖𝗖𝗘𝗧𝗧𝗔 𝟭𝟭.Mail 𝟭𝟮.Mail+PDF 𝟭𝟯.Mail+Prep.\n🟥 𝟮𝟬.𝗥𝗜𝗙𝗜𝗨𝗧𝗔 𝟮𝟭.LP 𝟮𝟮.Lontano 𝟮𝟯.Lav \n" + 
          "🟨 𝟯𝟬.𝗡𝗢𝗡𝗥𝗜𝗦𝗣 𝟯𝟭.MsgSegr 𝟯𝟮.NoMsgSegr 𝟯𝟯.SenzaSegr \n𝟯𝟰.RispMa 𝟯𝟱.NoParte 𝟯𝟲.NoReca 𝟯𝟳.NoCampo 𝟯𝟴.Blocca\n" + 
          "ℹ️ 𝟰𝟬.𝗡𝗢𝗧𝗘 𝟰𝟭.AltroOp 𝟰𝟮.AggRec 𝟰𝟯.NoRec  \n                                                                   💯 ᴬᴸᴱˢˢᴬᴺᴰᴿᴼ ᴾᴵᴼⱽᴬᴺ ᴺᴼᵀᴱ ᴬᴰᴰᴼᴺ";
    var choice = prompt(message);
    if(choice === null) return; 

    function simulateInput(text) {
      var event = new KeyboardEvent('input', {
        bubbles: true,
        cancelable: true,
        key: text,
        keyCode: 0,
        which: 0
      });
      var activeElement = document.activeElement;
      if (activeElement && (activeElement.tagName === 'TEXTAREA' || 
          (activeElement.tagName === 'INPUT' && activeElement.type === 'text'))) {
        activeElement.value += text;
        activeElement.dispatchEvent(event);
      } else {
        navigator.clipboard.writeText(text).then(function(){}, function(err){});
      }
    }

    var date = new Date();
    var day = date.getDate().toString().padStart(2, '0');
    var month = (date.getMonth() + 1).toString().padStart(2, '0');
    var year = date.getFullYear();
    var hours = date.getHours().toString().padStart(2, '0');
    var minutes = date.getMinutes().toString().padStart(2, '0');
    var formatted;

    switch(choice.trim()){
		          case "1":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente ACCETTA data e struttura letto note';
        break;
      case "10":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente ACCETTA data e struttura letto note';
        break;
      case "11":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente ACCETTA data e struttura letto note + MAIL';
        break;
		      case "12":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente ACCETTA data e struttura letto note + MAIL con allegato modulo consenso informato';
        break;
				      case "13":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente ACCETTA data e struttura letto note + MAIL con allegato preparazione';
        break;
		          case "2":
        var extraText20 = prompt("CODICE DISDETTA ultime 4 cifre");
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente RIFIUTA con disdetta regolare ' + (extraText20 ? '96' + extraText20 : "") ;
        break;
      case "20":
        var extraText20 = prompt("CODICE DISDETTA ultime 4 cifre");
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente RIFIUTA con disdetta regolare ' + (extraText20 ? '96' + extraText20 : "") ;
        break;
		
		      case "21":
        var extraText20 = prompt("CODICE DISDETTA ultime 4 cifre");
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente RIFIUTA con disdetta regolare ' + (extraText20 ? '96' + extraText20 : "") + ': già eseguito in LP';
        break;
		      case "22":
        var extraText20 = prompt("CODICE DISDETTA ultime 4 cifre");
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente RIFIUTA con disdetta regolare ' + (extraText20 ? '96' + extraText20 : "") + ': troppo lontano.';
        break;
		      case "23":
        var extraText20 = prompt("CODICE DISDETTA ultime 4 cifre");
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente RIFIUTA con disdetta regolare ' + (extraText20 ? '96' + extraText20 : "") + ' per problematiche lavorative.';
        break;
		
	      case "3":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente NON RISPONDE';
        break;	
      case "30":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente NON RISPONDE';
        break;
      case "31":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente NON RISPONDE: lasciato messaggio in segreteria';
        break;
      case "32":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente NON RISPONDE: non lascio altri messaggi in segreteria';
        break;
      case "33":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente NON RISPONDE: senza segreteria';
        break;
      case "34":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente RISPONDE ma ';
        break;
      case "35":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utenza STACCATA: non parte la chiamata';
        break;
      case "36":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente NON RISPONDE e non sono presenti altri recapiti telefonici';
        break;
      case "37":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente NON RAGGIUNGIBILE: utenza spenta o non raggiungibile';
        break;
      case "38":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente ha BLOCCATO il nostro recapito così da rendere impossibile ogni tentativo';
        break;
      case "39":
        formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente NON RISPONDE  ';
        break;
      case "40":
        formatted = 'AP ' + day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h NOTA ';
        break;
      case "41":
        var extraText41 = prompt("Inserisci la nota dell\'altro operatore:");
        formatted = 'AP ' + day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Nota altro operatore: ' + (extraText41 ? extraText41 : "");
        break;
      case "42":
        formatted = 'AP ' + day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Aggiunto recapiti telefonici: ';
        break;
      case "43":
        formatted = 'AP ' + day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Non presenti altri recapiti telefonici. ';
        break;
      default:
        alert("Scelta non valida.");
        return;
    }

    simulateInput(formatted);
  })();
