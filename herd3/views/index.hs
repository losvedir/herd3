{-# LANGUAGE OverloadedStrings #-}

module Herd3.Views.Index where

import Text.Blaze.Html5
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5 as H

render = do
  docTypeHtml $ do
    H.head $ do
      H.title "Welcome to the Future. HERD3 Analytics Dashboard."
      link ! rel "stylesheet" ! href "css/herd3.css"
    body $ do
      h1 "Analytics Dashboard"
      H.div $ do
        p "Possible graphs:"
        ul $ do
          li "date histogram of how many coaches have been approved over time"
          li "pie chart of coaches by sport"
          li "count of messages over time"
          li "sum of package revenue over time"
      p "Also: Control panel to filter and select stuff."
      script ! src "js/herd3.js" $ ""
