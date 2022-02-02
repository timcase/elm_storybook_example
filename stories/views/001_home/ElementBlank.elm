module Story.Home exposing (main)

import Article.Feed as Feed
import Article.Tag as Tag exposing (Tag)
import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Main exposing (Model(..))
import Page.Home exposing (FeedTab, Model)
import Session
import Time



-- VIEW


type Msg
    = NoOp


type alias Model =
    List Int



-- type alias Model =
--     { session : Session
--     , timeZone : Time.Zone
--     , feedTab : FeedTab
--     , feedPage : Int
--     -- Loaded independently from server
--     , tags : Status (List Tag)
--     , feed : Status Feed.Model
--     }


view : Model -> Html Msg
view model =
    div [] [ text "This is element blank" ]



-- let
--   homeModel =
--   modelStub = Home homeModel
-- in
-- Html.map HomeMsg (Main.View.viewContent modelStub)
-- div [] [ text "made it here" ]


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
