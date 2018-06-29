module HelloTwo exposing (..)

import Html exposing (text, div, h1, p)
import Html.Attributes exposing (class)


main =
    div [ class "elm-div" ]
        --a function that takes 2 arguments (attribute or text)
        [ h1 [ class "banner" ] [ text "Welcome to my Elm Site!" ] --firt [] is an argument, 2nd [] is a function
        , p [] [ text "I am liking Elm yay" ]
        , p [] [ text "Eager to learn!" ]
        ]
