module FakeArticle exposing (stub)

import Page.Article exposing (Model, Status(..))
import Session exposing (Session)
import Time



-- type alias Model =
--     { session : Session
--     , timeZone : Time.Zone
--     , errors : List String
--     -- Loaded independently from server
--     , comments : Status ( CommentText, List Comment )
--     , article : Status (Article Full)
--     }


stub : Session -> Model
stub session =
    { session = session
    , timeZone = Time.utc
    , errors = []
    , comments = Loading
    , article = Loading
    }
