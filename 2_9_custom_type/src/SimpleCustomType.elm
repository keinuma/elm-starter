module SimpleCustomType exposing (..)

type Day = Mon | Tue | Wed | Thu | Fri | Sat | Sun

firstDay : Day
firstDay = Mon

weekDay : List Day
weekDay = [ Mon, Tue, Wed, Thu, Fri]


type Lang = En | Ja | Fr

hello : Lang -> String
hello lang =
    case lang of
        En -> "Hello"
        Ja -> "こんにちは"
        Fr -> "Bonjour"


type User
    = LoggedIn Bool String
    | Guest

user1 : User
user1 = LoggedIn True "Taro"

user2 : User
user2 = LoggedIn False "Hanako"

user3 : User
user3 = Guest

message : User -> String
message user =
    case user of
        LoggedIn True name ->
            "Hello, " ++ name ++ "(Administrator)."
        LoggedIn False name ->
            "Hello, " ++ name ++ "."
        Guest ->
            "Please Login."

adminUser : String -> User
adminUser = LoggedIn True

admin = adminUser "Hugi"
