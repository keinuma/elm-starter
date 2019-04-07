module Annotation exposing (..)

output : String

output = "1 + 1 = " ++ String.fromInt (add 1 1)

add : Int -> Int -> Int

add a b = a + b
