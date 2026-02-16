module Helper exposing (..)

import Html
import Html.Attributes


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


record1 : { name : String, releaseYear : Int, currentVersion : String }
record1 =
    { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }


record2 : { name : String, releaseYear : Int, currentVersion : String }
record2 =
    { name = "javascript", releaseYear = 1995, currentVersion = "ECMAscSip2cript 2025" }


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames lista =
    List.map .name lista


type alias User =
    { name : String, uType : String }


s1 : User
s1 =
    { name = "Andrei"
    , uType = "Student"
    }


s2 : User
s2 =
    { name = "Mitsiu"
    , uType = "Professor"
    }


onlyStudents : List User -> List String
onlyStudents lista =
    List.map
        (\rec ->
            if rec.uType == "Student" then
                rec.name

            else
                ""
        )
        lista


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


v1 : Videogame
v1 =
    { title = "Control"
    , releaseYear = 2019
    , available = True
    , downloads = 190
    , genres = [ "Action", "Shooter" ]
    }


v2 : Videogame
v2 =
    { title = "Ocarina of the Time"
    , releaseYear = 2020
    , available = True
    , downloads = 2980
    , genres = [ "Action", "Adventure" ]
    }


getVideogameGenre : List Videogame -> List (List String)
getVideogameGenre videog =
    List.map .genres videog


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "Kingston Fury 16GB"
    , model = "Pavilion 15"
    , brand = "HP"
    , screenSize = "18 pulgadas"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 []
            [ Html.text "My laptop"
            ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram:" ++ myLaptop.ram) ]
                , Html.li [] [ Html.text ("Modelo:" ++ myLaptop.model) ]
                , Html.li [] [ Html.text ("Marca:" ++ myLaptop.brand) ]
                , Html.li [] [ Html.text ("Pulgadas:" ++ myLaptop.screenSize) ]
                ]
            ]
        ]
