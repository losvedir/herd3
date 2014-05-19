{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import qualified Text.Blaze.Html.Renderer.Text as T
import qualified App.Views.Index
import qualified App.Models.SampleData
import Network.Wai.Middleware.Static

blaze = html . T.renderHtml

main = scotty 3000 $ do
  middleware $ staticPolicy (addBase "app/static/")

  get "/" $ do
    blaze App.Views.Index.render

  get "/data" $ do
    json App.Models.SampleData.sampleData
