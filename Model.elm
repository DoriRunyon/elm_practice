module Model exposing (..)

type TypeOfSong = Happy | Sad | Dance | RoadTrip

type alias Model =
    { songResult : String
    , typeOfSong : TypeOfSong }


init : Model
init =
    { songResult = "https://www.youtube.com/watch?v=QXCGnTy-v2M" 
    , typeOfSong = Happy }

