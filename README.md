# HERD3

The Haskell, Elasticsearch, React.js, D3 playground. The goal is to create
an analytics dashboard of D3/react.js components displaying elasticsearch
facets of our coaches, messages, etc, all served from a lightning-fast, typesafe
scotty webserver.

    Download the clang wrapper from [1] below
    $ mv ~/Downloads/clang-xcode5-wrapper /usr/local/bin/
    $ chmod a+x /usr/local/bin/clang-xcode5-wrapper
    Edit the GHC settings, per [1].

    $ cd path/to/herd3
    $ cabal sandbox init
    $ cabal install --only-dependencies
    $ cabal build
    $ dist/build/herd3/herd3





Notes:

Scotty as backend
[0] http://adit.io/posts/2013-04-15-making-a-website-with-haskell.html

Haskell issues
[1] http://justtesting.org/post/64947952690/the-glasgow-haskell-compiler-ghc-on-os-x-10-9

React + D3: replace much of D3 with react (not our approach)
[2] http://10consulting.com/2014/02/19/d3-plus-reactjs-for-charting/

React + D3: "blackbox" D3 apart from react (our approach)
[3] http://stackoverflow.com/questions/21903604/is-there-any-proper-way-to-integrate-d3-js-graphics-into-facebook-react-applicat
