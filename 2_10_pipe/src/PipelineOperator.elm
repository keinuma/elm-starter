module PipelineOperator exposing (..)

showNumbersUntil max =
    List.range 1 max
        |> List.map String.fromInt
        |> String.join ","

compositionShowNumbersUntil =
    List.range 1 >> List.map String.fromInt >> String.join ","
