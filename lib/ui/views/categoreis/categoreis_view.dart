eneration of the standard "descriptor()" accessor, which can
   M   /// conflict with a field of the same name.  This is meant to make migration
   I   /// from proto1 easier; new code should avoid fields named "descriptor".
    ?    ???C   ?  s:13SwiftProtobuf21BinaryDecodingOptionsV20discardUnknownFieldsSbvpj   Discard unknown fields while parsing.  The default is false, so parsering does not discard unknown fields.      N   /// Discard unknown fields while parsing.  The default is false, so parsering
   %   /// does not discard unknown fields.
      ///
   H   /// The Protobuf binary format allows unknown fields to be still parsed
   O   /// so the schema can be expanded without requiring all readers to be updated.
   J   /// This works in part by haivng any unknown fields preserved so they can
   I   /// be relayed on without loss. For a while the proto3 syntax definition
   J   /// called for unknown fields to be dropped, but that lead to problems in
   L   /// some case. The default is to follow the spec and keep them, but setting
   J   /// this option to `true` allows a developer to strip them during a parse
   J   /// in case they have a specific need to drop the unknown fields from the
       /// object graph being created.
        ???JF   ?   s:13SwiftProtobuf07Google_B20_UninterpretedOptionV14hasStringValueSbvp4   Returns true if stringValue has been explicitly set.      ;   /// Returns true if `stringValue` has been explicitly set.
       ??P-      s:13SwiftProtobuf7MessagePAAE4withyxyxzKXEKFZ?   Creates an instance of the message type on which this method is called, executes the given block passing the message in as its sole inout argument, and then returns the message.      L   /// Creates an instance of the message type on which this method is called,
   H   /// executes the given block passing the message in as its sole `inout`
   ,   /// argument, and then returns the message.
      ///
   N   /// This method acts essentially as a "builder" in that the initialization of
   M   /// the message is captured within the block, allowing the returned value to
   2   /// be set in an immutable variable. For example,
      ///
   8   ///     let msg = MyMessage.with { $0.myField = "foo" }
   9   ///     msg.myOtherField = 5  // error: msg is immutable
      ///
   O   /// - Parameter populator: A block or function that populates the new message,
   =   ///   which is passed into the block as an `inout` argument.
   9   /// - Returns: The message af