F1::
FormatTime, date, , dd/MM/yyyy HH:mm

InputBox, choice, SELEZIONA CODICE, 10  Utente ACCETTA data e struttura letto note`n11  Utente ACCETTA data e struttura letto note + MAIL`n12  Utente ACCETTA data e struttura letto note + MAIL con allegato modulo consenso informato`n13  Utente ACCETTA data e struttura letto note + MAIL con allegato preparazione`n14  Utente ACCETTA data e struttura letto note + MAIL e PagoPA`n`n20  Utente RIFIUTA con disdetta regolare XX+XXXX`n21  Utente RIFIUTA con disdetta regolare XX+XXXX gia eseguito in LP`n22  Utente RIFIUTA con disdetta regolare XX+XXXX troppo lontano.`n23  Utente RIFIUTA con disdetta regolare XX+XXXX per problematiche lavorative.`n`n30  Utente NON RISPONDE`n31  Utente NON RISPONDE: lasciato messaggio in segreteria`n32  Utente NON RISPONDE: non lascio altri messaggi in segreteria`n33  Utente NON RISPONDE: senza segreteria`n34  Utente RISPONDE ma `n35  Utenza STACCATA: non parte la chiamata`n36  Utente NON RISPONDE e non sono presenti altri recapiti telefonici`n37  Utente NON RAGGIUNGIBILE: utenza spenta o non raggiungibile`n38  Utente ha BLOCCATO il nostro recapito cosi da rendere impossibile ogni tentativo`n  `n40  NOTA `n41  Nota altro operatore: `n42  Aggiunto recapiti telefonici: `n43  Non presenti altri recapiti telefonici.,,600,600,600
if ErrorLevel
    return

choice := Trim(choice)
formatted := ""

if (choice = "10" or choice = "1")
    formatted := "AP " . date . "h Utente ACCETTA data e struttura letto note"
else if (choice = "11")
    formatted := "AP " . date . "h Utente ACCETTA data e struttura letto note + MAIL"
else if (choice = "12")
    formatted := "AP " . date . "h Utente ACCETTA data e struttura letto note + MAIL con allegato modulo consenso informato"
else if (choice = "13")
    formatted := "AP " . date . "h Utente ACCETTA data e struttura letto note + MAIL con allegato preparazione"
else if (choice = "14")
    formatted := "AP " . date . "h Utente ACCETTA data e struttura letto note + MAIL e PagoPA"

else if (choice = "20" or choice = "2") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "AP " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra
}
else if (choice = "21") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "AP " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra . ": già eseguito in LP"
}
else if (choice = "22") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "AP " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra . ": troppo lontano."
}
else if (choice = "23") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "AP " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra . " per problematiche lavorative."
}
else if (choice = "30" or choice = "3")
    formatted := "AP " . date . "h Utente NON RISPONDE"
else if (choice = "31")
    formatted := "AP " . date . "h Utente NON RISPONDE: lasciato messaggio in segreteria"
else if (choice = "32")
    formatted := "AP " . date . "h Utente NON RISPONDE: non lascio altri messaggi in segreteria"
else if (choice = "33")
    formatted := "AP " . date . "h Utente NON RISPONDE: senza segreteria"
else if (choice = "34")
    formatted := "AP " . date . "h Utente RISPONDE ma "
else if (choice = "35")
    formatted := "AP " . date . "h Utenza STACCATA: non parte la chiamata"
else if (choice = "36")
    formatted := "AP " . date . "h Utente NON RISPONDE e non sono presenti altri recapiti telefonici"
else if (choice = "37")
    formatted := "AP " . date . "h Utente NON RAGGIUNGIBILE: utenza spenta o non raggiungibile"
else if (choice = "38")
    formatted := "AP " . date . "h Utente ha BLOCCATO il nostro recapito così da rendere impossibile ogni tentativo"
else if (choice = "39")
    formatted := "AP " . date . "h Utente NON RISPONDE"
else if (choice = "40")
    formatted := "AP " . date . "h NOTA "
else if (choice = "41") {
    InputBox, extra, Altro Operatore, Inserisci la nota dell'altro operatore
    if ErrorLevel
        return
    formatted := "AP " . date . "h Nota altro operatore: " . extra
}
else if (choice = "42")
    formatted := "AP " . date . "h Aggiunto recapiti telefonici: "
else if (choice = "43")
    formatted := "AP " . date . "h Non presenti altri recapiti telefonici."
else {
    MsgBox, 48, Errore, Codice non valido!
    return
}

; Invia il testo simulando battitura, senza usare gli appunti
SendInput %formatted%
return

F9::
{
    ; Salva gli appunti correnti
    ClipSaved := ClipboardAll
    Clipboard := ""

    ; Copia la selezione dell'utente
    Send, ^c
    ClipWait, 1
    if (ErrorLevel) {
        MsgBox, Errore: Nessun testo selezionato o copia fallita.
        Clipboard := ClipSaved
        return
    }

    phone := Clipboard
    phone := StrReplace(phone, " ", "")  ; Rimuove gli spazi

    ; Attiva la finestra Chrome
    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome, , 2
    if (ErrorLevel) {
        MsgBox, Errore: Finestra Chrome non trovata.
        Clipboard := ClipSaved
        return
    }

    Sleep, 50  ; Attendi stabilizzazione

    ; Clicca sul campo di input (regola se necessario)
    CoordMode, Mouse, Window

    MouseClick, left, 137, 614  ; Cambia queste coordinate!
    Sleep, 50

    ; Incolla il numero
    Clipboard := phone
    Send, ^v
    Sleep, 50

    ; Clic finale alle coordinate richieste (1049, 434 relative alla finestra)
    MouseClick, left, 394, 614

    ; Ripristina gli appunti originali
    Sleep, 50
    Clipboard := ClipSaved
}
return




F10::
{
    ; Attiva la finestra specifica
    SetTitleMatchMode, 2
    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome

    if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
        ; Esegue un clic sinistro alle coordinate assolute (schermo)
    MouseClick, left, 329, 592
    } else {
        MsgBox, La finestra non è attiva.
    }
}
return

 