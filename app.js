// Embed Elm
var elmDiv = document.getElementById('elm-app');
var elm = Elm.embed(Elm.Main, elmDiv, { jsMessage: "" });

// Listen for elm messages
// Since we tied the button to the `message` port,
// we'll get a string every time it's clicked
var msgDisplayer = document.getElementById('msg-displayer');
elm.ports.elmMessage.subscribe(function(msg) {
  msgDisplayer.innerText = msg;
});

// Send messages to elm when JS button clicked
// The jsMessage in the Elm.embed statement "primes" this port
var jsButton = document.getElementById('send-js-msg');
jsButton.addEventListener("click", function(e) {
  elm.ports.jsMessage.send("Hello from JS!");
});
