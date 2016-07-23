{- This file was auto-generated from POGOProtos/Inventory/PokemonFamily.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
module Proto.POGOProtos.Inventory.PokemonFamily where
import qualified Prelude
import qualified Data.ProtoLens
import qualified Data.ProtoLens.Message.Enum
import qualified Lens.Family2
import qualified Lens.Family2.Unchecked
import qualified Data.Default.Class
import qualified Data.Text
import qualified Data.Int
import qualified Data.Word
import qualified Data.Map
import qualified Data.ByteString
import qualified Proto.POGOProtos.Enums.PokemonFamilyId

data PokemonFamily = PokemonFamily{_PokemonFamily'familyId ::
                                   Proto.POGOProtos.Enums.PokemonFamilyId.PokemonFamilyId,
                                   _PokemonFamily'candy :: Data.Int.Int32}
                   deriving (Prelude.Show, Prelude.Eq)

type instance Data.ProtoLens.Field "familyId" PokemonFamily =
     Proto.POGOProtos.Enums.PokemonFamilyId.PokemonFamilyId

instance Data.ProtoLens.HasField "familyId" PokemonFamily
         PokemonFamily where
        field _
          = Lens.Family2.Unchecked.lens _PokemonFamily'familyId
              (\ x__ y__ -> x__{_PokemonFamily'familyId = y__})

type instance Data.ProtoLens.Field "candy" PokemonFamily =
     Data.Int.Int32

instance Data.ProtoLens.HasField "candy" PokemonFamily
         PokemonFamily where
        field _
          = Lens.Family2.Unchecked.lens _PokemonFamily'candy
              (\ x__ y__ -> x__{_PokemonFamily'candy = y__})

instance Data.Default.Class.Default PokemonFamily where
        def
          = PokemonFamily{_PokemonFamily'familyId = Data.Default.Class.def,
                          _PokemonFamily'candy = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message PokemonFamily where
        descriptor
          = let familyId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "family_id"
                      (Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.POGOProtos.Enums.PokemonFamilyId.PokemonFamilyId)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional familyId)
                candy__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "candy"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional candy)
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, familyId__field_descriptor),
                    (Data.ProtoLens.Tag 2, candy__field_descriptor)])
                (Data.Map.fromList
                   [("family_id", familyId__field_descriptor),
                    ("candy", candy__field_descriptor)])

candy ::
      forall msg msg' . Data.ProtoLens.HasField "candy" msg msg' =>
        Lens.Family2.Lens msg msg' (Data.ProtoLens.Field "candy" msg)
          (Data.ProtoLens.Field "candy" msg')
candy
  = Data.ProtoLens.field
      (Data.ProtoLens.ProxySym :: Data.ProtoLens.ProxySym "candy")

familyId ::
         forall msg msg' . Data.ProtoLens.HasField "familyId" msg msg' =>
           Lens.Family2.Lens msg msg' (Data.ProtoLens.Field "familyId" msg)
             (Data.ProtoLens.Field "familyId" msg')
familyId
  = Data.ProtoLens.field
      (Data.ProtoLens.ProxySym :: Data.ProtoLens.ProxySym "familyId")