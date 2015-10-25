module Main where

import Html exposing (..)
import Html.Events exposing (..)

--
-- OUTGOING MESSAGES
--

-- A mailbox allows a pub-sub approach to messaging.
-- We create a mailbox and prime it with a blank message,
-- then use outbox.address to send it messages
-- and listen to outbox.signal to know when a message
-- has arrived.

outbox : Signal.Mailbox String
outbox =
  Signal.mailbox "" -- initialize the signal with an empty string

-- We set our outgoing port to listen to the mailbox's
-- signal. By making that signal the return value for our
-- port, it will send a message out to JavaScript whenever
-- outbox receives one.
port elmMessage : Signal String
port elmMessage =
  outbox.signal

--
-- INCOMING MESSAGES
--
  
-- Incoming ports only need a declaration and a signal type.
-- Elm automatically creates a signal with the same name
-- and wires the port to its input.
-- We'll listen to this signal in our main function.
port jsMessage : Signal String

--
-- VIEW
--

view : String -> Html
view message =
  div [ ]
  [
    h1 [ ] [ text "Elm" ],
    button [
      -- Send a message to the outbox when it's clicked
      onClick outbox.address "Hello from Elm!"
      ] [ text "Send message from Elm" ],
    -- Put the contents of our incoming jsMessage in this text field
    pre [ ] [ text message ]
    ]

-- Every time a jsMessage appears, we'll run it through the
-- view function to include the contents in our HTML
main : Signal Html
main =
  Signal.map view jsMessage
