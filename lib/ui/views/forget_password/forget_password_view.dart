 
   ///     }
      ///     message User {
   #   ///       string display_name = 1;
      ///       string address = 2;
   
   ///     }
      ///
   :   /// In proto a field mask for `Profile` may look as such:
      ///
      ///     mask {
   %   ///       paths: "user.display_name"
      ///       paths: "photo"
   
   ///     }
      ///
   4   /// In JSON, the same mask is represented as below:
      ///
   
   ///     {
   )   ///       mask: "user.displayName,photo"
   
   ///     }
      ///
   #   /// # Field Masks and Oneof Fields
      ///
   L   /// Field masks treat fields in oneofs just as regular fields. Consider the
      /// following message:
      ///
       ///     message SampleMessage {
      ///       oneof test_oneof {
      ///         string name = 4;
   (   ///         SubMessage sub_message = 9;
      ///       }
   
   ///     }
      ///
      /// The field mask can be:
      ///
      ///     mask {
      ///       paths: "name"
   
   ///     }
      ///
      /// Or:
      ///
      ///     mask {
      ///       paths: "sub_message"
   
   ///     }
      ///
   M   /// Note that oneof type names ("test_oneof" in this case) cannot be used in
      /// paths.
      ///
      /// ## Field Mask Verification
      ///
   Q   /// The implementation of any API method which has a FieldMask type field in the
   B   /// request should verify the included field paths, and return an
   8   /// `INVALID_ARGUMENT` error if any path is unmappable.
         }?P?:   I  s:13SwiftProtobuf07Google_B10_TimestampV7secondss5Int64Vvp?   Represents seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z inclusive.      4   /// Represents seconds of UTC time since Unix epoch
   ?   /// 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to
   $   /// 9999-12-31T23:59:59Z inclusive.
        ?4?>   ?   s:13SwiftProtobuf19BinaryDecodingErrorO15trailingGarbageyA2CmFB   Extraneous data remained after decoding should have been complete.      G   /// Extraneous data remained after decoding should have been complete.
        ??P`   ?   s:13SwiftProtobuf07Google_B13_FieldOptionsV19uninterpretedOptionSayAA0c1_b14_UninterpretedG0VGvpA   The parser stores options it doesn’t recognize here. See above.      D   /// The parser stores options it doesn't recognize here. See above.
    ?   ???,   ;   s:13SwiftProtobuf07Google_B6_FieldV4nameSSvp   The field name.         /// The field name.
        ?>;?U   -  s:13SwiftProtobuf7VisitorP22visitPackedUInt32Field5value11fieldNumberySays0F0VG_SitKFD   This is called once with the complete array of values for the field.         ///
   >   /// This is called once with the complete array of values for
      /// the field.
      ///
   F   /// There is a default implementation that forwards to the non-packed
      /// function.
    )    ????>   c   s:13SwiftProtobuf17JSONDecodingErrorO17malformedDurationyA2CmF#   A JSON Duration could not be parsed      (   /// A JSON Duration could not be parsed
        ?nV?(   ?   s:13SwiftProtobuf20PackedExtensionFieldV   Packed Repeated fields         ///
      /// Packed Repeated fields
      ///
   F   /// TODO: This is almost (but not quite) identical to RepeatedFields;
   0   /// find a way to collapse the implementations.
      ///
       ????5   ?   s:13SwiftProtobuf8_NameMapV5names3forAC5NamesVSgSi_tFc   Returns the name bundle for the field/enum-case with the given number, or nil if there is no match.      N   /// Returns the name bundle for the field/enum-case with the given number, or
       /// `nil` if there is no match.
    
    ?^_g   ?  s:13SwiftProtobuf15BinaryDelimitedO9s