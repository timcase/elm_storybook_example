module FakeFeed exposing (stub)

import Article exposing (Article, Preview)
import Article.Feed as Feed
import Browser.Navigation as Nav
import FakeSession exposing (guest)
import Json.Decode as Decode exposing (Decoder, decodeString)
import PaginatedList exposing (PaginatedList)


stub : Nav.Key -> Feed.Model
stub key =
    Feed.init (guest key) articles


articles : PaginatedList (Article Preview)
articles =
    decodeString (Feed.decoder Nothing 10) sampleArticlesJson
        |> Result.withDefault (PaginatedList.fromList 0 [])


sampleArticlesJson : String
sampleArticlesJson =
    """
        {"articles":[{"slug":"Create-a-new-implementation-1","title":"Create a new implementation","description":"join the community by creating a new implementation","body":"Share your knowledge and enpower the community by creating a new implementation","createdAt":"2021-11-24T12:11:08.212Z","updatedAt":"2021-11-24T12:11:08.212Z","tagList":["implementations"],"author":{"username":"Gerome","bio":null,"image":"https://api.realworld.io/images/demo-avatar.png","following":false},"favoritesCount":992,"favorited":false},{"slug":"Explore-implementations-1","title":"Explore implementations","description":"discover the implementations created by the RealWorld community","body":"Over 100 implementations have been created using various languages, libraries, and frameworks. Explore them on CodebaseShow.","createdAt":"2021-11-24T12:11:07.952Z","updatedAt":"2021-11-24T12:11:07.952Z","tagList":["codebaseShow","implementations"],"author":{"username":"Gerome","bio":null,"image":"https://api.realworld.io/images/demo-avatar.png","following":false},"favoritesCount":633,"favorited":false},{"slug":"Welcome-to-RealWorld-project-1","title":"Welcome to RealWorld project","description":"Exemplary fullstack Medium.com clone powered by React, Angular, Node, Django, and many more","body":"See how the exact same Medium.com clone (called Conduit) is built using different frontends and backends. Yes, you can mix and match them, because they all adhere to the same API spec","createdAt":"2021-11-24T12:11:07.557Z","updatedAt":"2021-11-24T12:11:07.557Z","tagList":["welcome","introduction"],"author":{"username":"Gerome","bio":null,"image":"https://api.realworld.io/images/demo-avatar.png","following":false},"favoritesCount":413,"favorited":false}],"articlesCount":3}
    """
