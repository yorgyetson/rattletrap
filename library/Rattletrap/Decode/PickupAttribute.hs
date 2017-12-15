module Rattletrap.Decode.PickupAttribute
  ( getPickupAttribute
  ) where

import Rattletrap.Decode.Word32le
import Rattletrap.Type.PickupAttribute

import qualified Data.Binary.Bits.Get as BinaryBit

getPickupAttribute :: BinaryBit.BitGet PickupAttribute
getPickupAttribute = do
  instigator <- BinaryBit.getBool
  maybeInstigatorId <- if instigator
    then do
      instigatorId <- getWord32Bits
      pure (Just instigatorId)
    else pure Nothing
  pickedUp <- BinaryBit.getBool
  pure (PickupAttribute maybeInstigatorId pickedUp)
