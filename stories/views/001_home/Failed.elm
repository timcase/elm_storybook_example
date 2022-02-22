module Story.Home.Failed exposing (main)

import Browser
import Browser.Navigation as Nav
import FakeSession
import Html exposing (..)
import Html.Attributes exposing (..)
import Main exposing (Model(..))
import Page.Home as Home exposing (FeedTab(..), Model, Status(..))
import Time
import Url


type Msg
    = NoOp
    | LinkClicked Browser.UrlRequest
    | UrlChanged Url.Url
    | HomeMsg Main.Msg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        LinkClicked _ ->
            ( model, Cmd.none )

        UrlChanged _ ->
            ( model, Cmd.none )

        HomeMsg _ ->
            ( model, Cmd.none )


type alias Model =
    { key : Nav.Key }


homeModel : Nav.Key -> Home.Model
homeModel navKey =
    { session = FakeSession.guest navKey
    , timeZone = Time.utc
    , feedTab = GlobalFeed
    , feedPage = 1
    , tags = Failed
    , feed = Failed
    }


view : Model -> Browser.Document Msg
view model =
    let
        hm =
            homeModel model.key

        { body } =
            Main.view (Home hm)

        vf =
            div [] body
    in
    { title = "Home - Desktop"
    , body = [ Html.map HomeMsg vf ]
    }


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init _ _ key =
    ( Model key, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
