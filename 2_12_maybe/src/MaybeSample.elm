module MaybeSample exposing (..)

showFirstValue : List Int -> String
showFirstValue list =
    case List.head list of
        Just value ->
            String.fromInt value
        Nothing ->
            "Empty!"

toIntInListHead : List String -> Maybe Int
toIntInListHead list =
    Maybe.andThen String.toInt (List.head list)

toIntPipeList list =
    List.head list
     |> Maybe.andThen String.toInt
     |> Maybe.map (\num -> num * 10)
     |> Maybe.withDefault 0
