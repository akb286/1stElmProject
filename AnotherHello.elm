module AnotherHello exposing (..)
import Html exposing (..)

checkStatus : Int -> String
checkStatus status =
  if status == 200 then
    "You got it right"
  else if status == 404 then
    "Page not found"
  else
    "unknown response"

statusChecks : List String
statusChecks =
  [ checkStatus 200
  , checkStatus 404
  , checkStatus 418
  ]

renderList: List String -> Html msg
renderList lst =
  lst
  |> List.map createLi
  |> ul []

createLi : String -> Html msg
createLi str =
  li [] [ text str ]


main =
  div [] [
    h1 [] [ text "list of statuses:" ]
    , renderList statusChecks
  ]