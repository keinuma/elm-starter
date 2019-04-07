module TypeAlias exposing (..)

type alias User =
    { id : Int
    , name : String
    , image : String
    }

isValid : User -> Bool

isValid user =
    String.length user.name > 0

getId : { a | id : Int } -> Int
getId something =
    something.id
