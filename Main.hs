{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import qualified Text.Blaze.Html.Renderer.Text as T
import qualified Herd3.Views.Index
import Network.Wai.Middleware.Static

blaze = html . T.renderHtml

main = scotty 3000 $ do
  middleware $ staticPolicy (addBase "herd3/assets/")

  get "/" $ do
    blaze Herd3.Views.Index.render
