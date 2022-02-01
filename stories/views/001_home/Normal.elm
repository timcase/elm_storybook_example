module Story.Home exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)



-- VIEW


type Msg
    = NoOp


type alias Model =
    List Int


view : Model -> Html Msg
view model =
    div [] [ text "made it here" ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- MAIN


main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


init : Int -> ( Model, Cmd Msg )
init flags =
    ( [ flags, flags ]
    , Cmd.none
    )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
