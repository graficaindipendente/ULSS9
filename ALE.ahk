F1::
FormatTime, date, , dd/MM/yyyy HH:mm

InputBox, choice, SELEZIONA CODICE, ♥ 𝗔𝗖𝗖𝗘𝗧𝗧𝗔`n   𝟭0 → Utente ACCETTA data e struttura letto note`n   𝟭1 → Utente ACCETTA data e struttura letto note c/MAIL`n   𝟭2 → Utente ACCETTA data e struttura letto note c/MAIL con allegato modulo consenso informato`n   𝟭3 → Utente ACCETTA data e struttura letto note c/MAIL con allegato preparazione`n   𝟭4 → Utente ACCETTA data e struttura letto note c/MAIL e PagoPA`n`n♦ 𝗥𝗜𝗙𝗜𝗨𝗧𝗔`n   𝟮0 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍`n   𝟮1 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 gia eseguito in LP`n   𝟮2 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 troppo lontano.`n   𝟮3 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 per problematiche lavorative.`n   𝟮4 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 per problematiche di trasporto.`n   𝟮5 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 presente prenotazione più favorevole`n`n♣ 𝗡𝗢𝗡 𝗥𝗜𝗦𝗣𝗢𝗡𝗗𝗘`n   𝟯0 → Utente NON RISPONDE`n   𝟯1 → Utente NON RISPONDE lasciato messaggio in segreteria`n   𝟯2 → Utente NON RISPONDE non lascio altri messaggi in segreteria`n   𝟯3 → Utente NON RISPONDE senza segreteria`n   𝟯4 → Utente RISPONDE MA `n   𝟯5 → Utenza STACCATA: non parte la chiamata`n   𝟯6 → Utente NON RISPONDE e non sono presenti altri recapiti telefonici`n   𝟯7 → Utente NON RAGGIUNGIBILE: utenza spenta o non raggiungibile`n   𝟯8 → Utente ha BLOCCATO il nostro recapito cosi da rendere impossibile ogni tentativo`n`n♠ 𝗔𝗟𝗧𝗥𝗢`n   𝟰0 → Data e Ora `n   𝟰1 → NOTA DA ALTRO OPERATORE: `n   𝟰2 → Riporto recapiti da altri gestionali: `n   𝟰3 → Non presenti altri recapiti telefonici `n   𝟵  → AVVISATO,,660,675,600
if ErrorLevel
    return

choice := Trim(choice)
formatted := ""

if (choice = "10" or choice = "1")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura letto note"
else if (choice = "11")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura letto note c/MAIL"
else if (choice = "12")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura letto note c/MAIL con allegato modulo consenso informato"
else if (choice = "13")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura letto note c/MAIL con allegato preparazione"
else if (choice = "14")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura letto note c/MAIL e PagoPA"

else if (choice = "20" or choice = "2") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra
}
else if (choice = "21") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra . " già eseguito in LP"
}
else if (choice = "22") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra . " troppo lontano"
}
else if (choice = "23") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra . " per problematiche lavorative"
}
else if (choice = "24") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra . " per problematiche di trasporto"
}
else if (choice = "25") {
    InputBox, extra, Codice Disdetta, Inserisci le ultime 4 cifre del codice
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare 97" . extra . " presente prenotazione più favorevole"
}



else if (choice = "30" or choice = "3")
    formatted := "Ale " . date . "h Utente NON RISPONDE"
else if (choice = "31")
    formatted := "Ale " . date . "h Utente NON RISPONDE: lasciato messaggio in segreteria"
else if (choice = "32")
    formatted := "Ale " . date . "h Utente NON RISPONDE: non lascio altri messaggi in segreteria"
else if (choice = "33")
    formatted := "Ale " . date . "h Utente NON RISPONDE: senza segreteria"
else if (choice = "34")
    formatted := "Ale " . date . "h Utente RISPONDE MA "
else if (choice = "35")
    formatted := "Ale " . date . "h Utenza STACCATA: non parte la chiamata"
else if (choice = "36")
    formatted := "Ale " . date . "h Utente NON RISPONDE e non sono presenti altri recapiti telefonici"
else if (choice = "37")
    formatted := "Ale " . date . "h Utente NON RAGGIUNGIBILE: utenza spenta o non raggiungibile"
else if (choice = "38")
    formatted := "Ale " . date . "h Utente ha BLOCCATO il nostro recapito così da rendere impossibile ogni tentativo"
else if (choice = "39")
    formatted := "Ale " . date . "h Utente NON RISPONDE"
	else if (choice = "4")
    formatted := date . "h "
else if (choice = "40")
    formatted := date . "h "
else if (choice = "41") {
    InputBox, extra, Altro Operatore, Inserisci la nota dell'altro operatore
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Nota altro operatore: " . extra
}
else if (choice = "42")
    formatted := " Riporto recapiti da altri gestionali: "
else if (choice = "43")
    formatted := " Non presenti altri recapiti telefonici"
	else if (choice = "9")
    formatted := "AVVISATO"
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


F12::
{
    ; Attiva la finestra specifica
    SetTitleMatchMode, 2
    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome

    if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
        ; Esegue un clic sinistro alle coordinate assolute (schermo)
    MouseClick, left, 328, 549
    } else {
        MsgBox, La finestra non è attiva.
    }
}
return

 F11::
{
    ; Attiva la finestra specifica
    SetTitleMatchMode, 2
    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome

    if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
        ; Esegue un clic sinistro alle coordinate assolute (schermo)
    MouseClick, left, 403, 563

        ; Doppio clic alle coordinate 78,246
        Sleep, 200
        MouseClick, left, 78, 246, 2
		
		

        ; Attendere brevemente e copiare la selezione
        Sleep, 200
        Send, ^c
    } else {
        MsgBox, La finestra non è attiva.
    }
}
return
