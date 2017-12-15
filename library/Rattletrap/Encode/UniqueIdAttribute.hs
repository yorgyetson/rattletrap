module Rattletrap.Encode.UniqueIdAttribute
  ( putUniqueIdAttribute
  ) where

import Rattletrap.Encode.RemoteId
import Rattletrap.Encode.Word8le
import Rattletrap.Type.UniqueIdAttribute

import qualified Data.Binary.Bits.Put as BinaryBit

putUniqueIdAttribute :: UniqueIdAttribute -> BinaryBit.BitPut ()
putUniqueIdAttribute uniqueIdAttribute = do
  putWord8Bits (uniqueIdAttributeSystemId uniqueIdAttribute)
  putRemoteId (uniqueIdAttributeRemoteId uniqueIdAttribute)
  putWord8Bits (uniqueIdAttributeLocalId uniqueIdAttribute)
