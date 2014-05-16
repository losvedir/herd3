{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import qualified Text.Blaze.Html.Renderer.Text as T
import qualified Herd3.Views.Index

blaze = html . T.renderHtml

main = scotty 3000 $ do
  get "/" $ do
    blaze Herd3.Views.Index.render
