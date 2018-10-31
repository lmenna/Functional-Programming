{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Main where

import Lib
import Data.Monoid ((<>))
import Data.Aeson (FromJSON, ToJSON, encode)
import System.IO (readFile)
import Data.Time (getCurrentTime)
import Web.Scotty
import GHC.Generics

-- Structure to contain the users
data User = User { userId :: Int, userName :: String } deriving (Show, Generic)
instance ToJSON User
instance FromJSON User
-- Sample data
bob :: User
bob = User { userId = 1, userName = "Bob" }
luigi :: User
luigi = User { userId = 2, userName = "Luigi" }
allUsers :: [User]
allUsers = [bob, luigi]

matchesId :: Int -> User -> Bool
matchesId id user = userId user == id

main = do
  putStrLn "Starting server..."
  scotty 3000 $ do
    get "/hello/:name" $ do
      name <- param "name"
      text ("hello " <> name <> "!")

    get "/users" $ do
      json allUsers

    get "/users/:id" $ do
      id <- param "id"
      json (filter (matchesId id) allUsers)
