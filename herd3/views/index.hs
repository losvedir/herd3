{-# LANGUAGE OverloadedStrings #-}

module Herd3.Views.Index where

import Text.Blaze.Html5
import Text.Blaze.Html5.Attributes
import Text.Blaze.Html5.Attributes as HA
import qualified Text.Blaze.Html5 as H

render = do
  docTypeHtml $ do
    H.head $ do
      meta ! charset "UTF8"
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

      H.div ! HA.id "container" $ ""

      script ! src "http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.6.0/underscore.js" $ ""
      script ! src "http://cdnjs.cloudflare.com/ajax/libs/react/0.10.0/react.js" $ ""
      script ! src "http://cdnjs.cloudflare.com/ajax/libs/react/0.10.0/JSXTransformer.js" $ ""
      script ! src "http://cdnjs.cloudflare.com/ajax/libs/d3/3.4.6/d3.js" $ ""
      script ! type_ "text/jsx" ! src "js/herd3.js" $ ""
