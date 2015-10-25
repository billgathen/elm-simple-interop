# Elm Simple Interop Demo

This is a demo application to explore how [Elm](http://elm-lang.org) and [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) can interoperate.

One box is driven entirely by Elm. The other by JavaScript. They communicate by sending messages over Elm [ports](http://elm-lang.org/guide/interop#ports).

This app is intended to be a learning/teaching tool for discovering how Elm can play nicely in a mixed-language browser world. There are many annotations explaining the techniques, but it's not an intro-level project. I learned what I know about Elm mainly from the [Elm](https://pragmaticstudio.com/elm) and [Elm Signals](https://pragmaticstudio.com/elm-signals) videos from [Pragmatic Studio](http://pragmaticstudio.com) and I can't recommend them highly-enough.

A WARNING: this project is not a good example of a canonical Elm project, in that it doesn't use [The Elm Architecture](https://github.com/evancz/elm-architecture-tutorial/). This is intentional, to keep the focus on interop, and not the model-update-view approach that makes Elm so cool. See the linked article to get a better picture of what a "real" Elm app looks like. :)

## Building the project

1. After forking the project, [install Elm](http://elm-lang.org/install)
1. In the project directory, run ```elm package install``` to get all the dependencies.
1. Run ```elm make Main.elm``` to compile the Elm code into JavaScript. The results will be in ```elm.js```.
1. Open ```index.html``` in your browser and everything should just work!

[MIT LICENSE](/LICENSE)
