{-# LANGUAGE OverloadedStrings #-}

module Herd3.Models.SampleData where

import Data.Aeson

data SampleData = SampleData [SampleRecord]
data SampleRecord = SampleRecord { from :: Maybe Integer, to :: Maybe Integer, docCount :: Integer, avgHeight :: Double }

instance ToJSON SampleData where
  toJSON (SampleData srs) = object ["aggregations" .= (object ["age_group" .= srs])]

instance ToJSON SampleRecord where
  toJSON (SampleRecord from to docCount avgHeight) = object ["from" .= from, "to" .= to, "doc_count" .= docCount, "avg_height" .= avgHeight]

--var sampleData = {
--  "aggregations": {
--    "age_group": [
--      {
--        "to": 5,
--        "doc_count": 10,
--        "avg_height": 95
--      },
--      {
--        "from": 5,
--        "to": 10,
--        "doc_count": 5,
--          "avg_height": 130
--      },
--      {
--        "from": 10,
--        "to": 15,
--        "doc_count": 4,
--          "avg_height": 160
--      },
--      {
--        "from": 15,
--        "doc_count": 10,
--        "avg_height": 175.5
--      }
--    ]
--  }
--}
sampleData = SampleData [sampleRecord1, sampleRecord2, sampleRecord3, sampleRecord4]
  where
    sampleRecord1 = SampleRecord {from=Nothing, to=Just 5, docCount=10, avgHeight=95}
    sampleRecord2 = SampleRecord {from=Just 5, to=Just 10, docCount=5, avgHeight=130}
    sampleRecord3 = SampleRecord {from=Just 10, to=Just 15, docCount=4, avgHeight=160}
    sampleRecord4 = SampleRecord {from=Just 15, to=Nothing, docCount=10, avgHeight=175.5}
