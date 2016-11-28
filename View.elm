module View exposing (..)

import Update
import Model
import Html
import Html.Events
import Html.Attributes


view : Model.Model -> Html.Html Update.Msg
view model =
    Html.div
        [ Html.Attributes.class "skeleton-elm-project bongle" ]
        [ Html.node "link"
            [ Html.Attributes.rel "stylesheet"
            , Html.Attributes.href "stylesheets/main.css"
            ]
            []
        , Html.div
            [ Html.Attributes.class "buttons" ]
            [ Html.div
            []
            [ Html.div
                [ Html.Attributes.class "waves-effect waves-light btn-large"
                , Html.Events.onClick Update.HappySong
                ]
                [ Html.text "Happy Tune" ]
            , Html.div
                [ Html.Attributes.class "waves-effect waves-light btn-large"
                , Html.Events.onClick Update.SadSong
                ]
                [ Html.text "Sad Jam" ]
            , Html.div
                [ Html.Attributes.class "waves-effect waves-light btn-large"
                , Html.Events.onClick Update.Dance
                ]
                [ Html.text "Dance" ]
            , Html.div
                [ Html.Attributes.class "waves-effect waves-light btn-large"
                , Html.Events.onClick Update.RoadTrip
                ]
                [ Html.text "Road Trip" ]
            ]
        , Html.div
            []
            [Html.h4
                [ Html.Attributes.class "song-result" ]
                [ Html.a 
                    [ Html.Attributes.href model.songResult ] 
                    [ Html.text ("Here is your " ++ (typeOfSong model) ++ " song") ]
                ]
            ]
        ]
    ]

typeOfSong : Model.Model -> String
typeOfSong model = 
       case model.typeOfSong of
        Model.Happy ->
         "happy"
        Model.Sad ->
          "sad"
        Model.Dance ->
          "dance"
        Model.RoadTrip ->
          "road trip"




