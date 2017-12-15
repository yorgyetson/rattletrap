module Rattletrap.Type.ActorMap
  ( ActorMap
  ) where

import Rattletrap.Type.CompressedWord
import Rattletrap.Type.Word32

import qualified Data.Map as Map

type ActorMap = Map.Map CompressedWord Word32
