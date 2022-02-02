module Story.Home exposing (main)

import Article.Feed as Feed
import Article.Tag as Tag exposing (Tag)
import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Main exposing (Model(..))
import Page.Home as Home exposing (FeedTab(..), Model, Status(..))
import Session exposing (Session(..))
import Time
import Url



-- VIEW


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

        LinkClicked urlRequest ->
            ( model, Cmd.none )

        UrlChanged url ->
            ( model, Cmd.none )

        HomeMsg _ ->
            ( model, Cmd.none )


type alias Model =
    { key : Nav.Key }


mainModel : Nav.Key -> Main.Model
mainModel navKey =
    Home (homeModel navKey)


homeModel : Nav.Key -> Home.Model
homeModel navKey =
    { session = Guest navKey
    , timeZone = Time.utc
    , feedTab = GlobalFeed
    , feedPage = 1
    , tags = Loading
    , feed = Loading
    }


view : Model -> Browser.Document Msg
view model =
    let
        hm =
            homeModel model.key

        { title, body } =
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



-- MODEL


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init _ _ key =
    ( Model key, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
