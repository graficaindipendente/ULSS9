javascript:(async()=> {
  const url = "https://ulss9scaligera.prenotami.cloud/mobile/inizio.html";
  if (location.href !== url) {
    window.open(url, "_blank");
    return;
  }

  try {
    const text = await navigator.clipboard.readText();
    const trimmed = text.trim();
    if (!/^\d{3,}$/.test(trimmed)) {
      alert("Il testo negli appunti non è un numero valido.");
      return;
    }
    const phone = trimmed.slice(2);
    const input = document.getElementById("id_telefono");
    if (!input) {
      alert("Campo 'id_telefono' non trovato sulla pagina.");
      return;
    }
    input.value = phone;
    input.dispatchEvent(new Event('input', { bubbles: true }));
  } catch (err) {
    alert("Errore durante l'accesso agli appunti: " + err);
  }
})();
