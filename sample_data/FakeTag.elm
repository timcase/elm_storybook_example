module FakeTag exposing (stubList)

import Article.Tag exposing (Tag, decoder)
import Json.Decode as Decode exposing (decodeString)


stubList : List Tag
stubList =
    decodeString (Decode.field "tags" (Decode.list decoder)) response
        |> Result.withDefault []


response : String
response =
    "{\"tags\":[\"welcome\",\"implementations\",\"codebaseShow\",\"introduction\"]}"
