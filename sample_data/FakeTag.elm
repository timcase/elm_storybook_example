module FakeTag exposing (stubList)

import Article.Tag as Tag exposing (Tag, decoder)
import Json.Decode as Decode exposing (Decoder, decodeString)


stubList : List Tag
stubList =
    decodeString (Decode.field "tags" (Decode.list decoder)) response
        |> Result.withDefault []


response : String
response =
    "{\"tags\":[\"welcome\",\"implementations\",\"codebaseShow\",\"introduction\"]}"
