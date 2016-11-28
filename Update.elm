module Update exposing (..)

import Model
import Random

type Msg
    = HappySong | SadSong | Dance | RoadTrip


update : Msg -> Model.Model -> Model.Model
update msg model =
    case msg of
        HappySong ->
            { model | songResult = "https://www.youtube.com/watch?v=QXCGnTy-v2M", typeOfSong = Model.Happy }
        SadSong ->
            { model | songResult = "https://www.youtube.com/watch?v=S2N_uvnvGbI", typeOfSong =  Model.Sad }
        Dance ->
            { model | songResult = "https://www.youtube.com/watch?v=La4Dcd1aUcE", typeOfSong =  Model.Dance  }
        RoadTrip ->
            { model | songResult = "https://www.youtube.com/watch?v=AWtCittJyr0", typeOfSong =  Model.RoadTrip  }
    
