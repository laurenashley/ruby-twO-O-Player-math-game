# ruby-twO-O-Player-math-game
LHL Assingment

# Classes Planning

## Game
Creates players and manage current player then prompts the first turn. Prints message containing player scores reurned from turn. Repeats turns until there is a zero score. Prints winner announcement.

## Player
Defines and holds state for lives and player's name.

## Turn
Creates question, then matches player answer against correct answer. If incorrect removes 1 life from player and returns player's lives count as score.

## Question
Generates random numbers between 1-20 to define math equation question then prompts player for answer. Returns player answer.
