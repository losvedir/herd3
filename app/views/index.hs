{-# LANGUAGE OverloadedStrings #-}

module App.Views.Index where

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
      header ! class_ "navigation" $ do
        H.div ! class_ "menu-wrapper" $ do
          a ! class_ "logo" $ do
            img ! src "https://raw.github.com/Magnus-G/Random/master/placeholder_logo_1.png"
          H.div ! class_ "nav" $ do
            ul ! HA.id "navigation-menu" $ do
              li ! class_ "nav-link" $ do
                a "Packages"
              li ! class_ "nav-link" $ do
                a "Coaches"
              li ! class_ "nav-link" $ do
                a "Messages"
      H.div ! HA.id "main" ! class_ "container" $ do ""

      script ! src "http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.6.0/underscore.js" $ ""
      script ! src "http://cdnjs.cloudflare.com/ajax/libs/react/0.10.0/react.js" $ ""
      script ! src "http://cdnjs.cloudflare.com/ajax/libs/react/0.10.0/JSXTransformer.js" $ ""
      script ! src "http://cdnjs.cloudflare.com/ajax/libs/d3/3.4.6/d3.js" $ ""
      script ! type_ "text/jsx" ! src "js/herd3.js" $ ""
