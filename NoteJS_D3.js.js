javascript:(function(){

  var message = "➡ 𝟭𝟬×ACCETTA ↪𝟭𝟭×Mail \n\n" + 
        "➡ 𝟮𝟬×RIFIUTA\n\n" + 
        "➡ 𝟯𝟬×NON RISP ↪𝟯𝟭×MsgSegr ↪𝟯𝟮×NoMsgSegr ↪𝟯𝟯×SenzaSegr ↪𝟯𝟰×RispMa\n\n" + 
        "➡ 𝟰𝟬×NOTA ↪𝟰𝟭×AltroOp ↪𝟰𝟮×AggRec ↪𝟰𝟯×NoRec";
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
    case "10":
      formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente ACCETTA data e struttura letto note';
      break;
    case "11":
      formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente ACCETTA data e struttura letto note + MAIL';
      break;
    case "20":
      var extraText20 = prompt("CODICE DISDETTA ultime 4 cifre");
      formatted = 'AP ' +  day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h Utente RIFIUTA con disdetta regolare ' + (extraText20 ? '95' + extraText20 : "");
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
    case "40":
      formatted = 'AP ' + day + '/' + month + '/' + year + ' ' + hours + '.' + minutes + 'h NOTA ';
      break;
    case "41":
      var extraText41 = prompt("Inserisci la nota dell'altro operatore:");
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
