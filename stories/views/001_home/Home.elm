module Story.Home exposing (main)

import Browser
import Browser.Navigation as Nav
import FakeFeed
import FakeSession
import FakeTag
import Html exposing (..)
import Json.Decode as Decode
import Main exposing (Model(..))
import Page.Home as Home exposing (FeedTab(..), Model, Status(..))
import Time
import Url


main : Program Decode.Value Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }


type State
    = Normal
    | Loading
    | Error


type alias Model =
    { state : State, key : Nav.Key }


stateDecoder : Decode.Decoder State
stateDecoder =
    Decode.string
        |> Decode.andThen
            (\str ->
                case str of
                    "normal" ->
                        Decode.succeed Normal

                    "loading" ->
                        Decode.succeed Loading

                    "error" ->
                        Decode.succeed Error

                    somethingElse ->
                        Decode.fail <| "Unknown state: " ++ somethingElse
            )


homeModel : State -> Nav.Key -> Home.Model
homeModel state navKey =
    case state of
        Error ->
            { session = FakeSession.guest navKey
            , timeZone = Time.utc
            , feedTab = GlobalFeed
            , feedPage = 1
            , tags = Failed
            , feed = Failed
            }

        Loading ->
            { session = FakeSession.guest navKey
            , timeZone = Time.utc
            , feedTab = GlobalFeed
            , feedPage = 1
            , tags = LoadingSlowly
            , feed = LoadingSlowly
            }

        Normal ->
            { session = FakeSession.guest navKey
            , timeZone = Time.utc
            , feedTab = GlobalFeed
            , feedPage = 1
            , tags = Loaded FakeTag.stubList
            , feed = Loaded (FakeFeed.stub navKey)
            }


init : Decode.Value -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags _ key =
    case Decode.decodeValue stateDecoder flags of
        Ok state ->
            ( Model state key, Cmd.none )

        Err _ ->
            ( Model Normal key, Cmd.none )


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


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Browser.Document Msg
view model =
    let
        pageModel =
            Home (homeModel model.state model.key)

        { body } =
            Main.view pageModel

        content =
            div [] body
    in
    { title = "Home - Desktop"
    , body = [ Html.map HomeMsg content ]
    }
