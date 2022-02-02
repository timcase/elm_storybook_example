module FakeSession exposing (guest)

import Browser.Navigation as Nav
import Session exposing (Session(..))


guest : Nav.Key -> Session
guest key =
    Guest key
