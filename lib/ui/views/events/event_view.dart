will return its default value.      W   /// Clears the value of `end`. Subsequent reads from it will return its default value.
       #O?;   A   s:13SwiftProtobuf07Google_B5_TypeV6syntaxAA0c1_B7_SyntaxOvp   The source syntax.         /// The source syntax.
       s??8   ?  s:13SwiftProtobuf6VarintO11encodedSize2ofSis6UInt64V_tFZ?   Computes the number of bytes that would be needed to store an unsigned 64-bit varint, if it were treated as a signed integer witht he same bit pattern.      `   /// Computes the number of bytes that would be needed to store an unsigned 64-bit varint, if it
   @   /// were treated as a signed integer witht he same bit pattern.
      ///
   J   /// - Parameter value: The number whose varint size should be calculated.
   9   /// - Returns: The size, in bytes, of the 64-bit varint.
        Cu?   ?  s:13SwiftProtobuf7MessagePAAE12jsonUTF8Data10extensions7optionsx10Foundation0F0V_AA12ExtensionMap_pSgAA19JSONDecodingOptionsVtKcfc?   Creates a new message by decoding the given Data containing a serialized message in JSON format, interpreting the data as UTF-8 encoded text.	      D   /// Creates a new message by decoding the given `Data` containing a
   N   /// serialized message in JSON format, interpreting the data as UTF-8 encoded
   
   /// text.
      ///
   M   /// - Parameter jsonUTF8Data: The JSON-formatted data to decode, represented
      ///   as UTF-8 encoded text.
   F   /// - Parameter extensions: The extension map to use with this decode
   9   /// - Parameter options: The JSONDecodingOptions to use.
   5   /// - Throws: `JSONDecodingError` if decoding fails.
       ?ȅ   ?   s:13SwiftProtobuf01_B3MapV6   SwiftProtobuf Internal: Support for Encoding/Decoding.      ;   /// SwiftProtobuf Internal: Support for Encoding/Decoding.
         ???C   ?  s:13SwiftProtobuf07Google_B12_FileOptionsV19javaStringCheckUtf8SbvpP  If set true, then the Java2 code generator will generate code that throws an exception whenever an attempt is made to assign a non-UTF-8 byte sequence to a string field. Message reflection will do the same. However, an extension field still accepts non-UTF-8 byte sequences. This option has no effect on when used with the lite runtime.      G   /// If set true, then the Java2 code generator will generate code that
   J   /// throws an exception whenever an attempt is made to assign a non-UTF-8
   %   /// byte sequence to a string field.
   )   /// Message reflection will do the same.
   H   /// However, an extension field still accepts non-UTF-8 byte sequences.
   B   /// This option has no effect on when used with the lite runtime.
    ?     k??2   ;   s:13SwiftProtobuf07Google_B10_BoolValueV5valueSbvp   The bool value.         /// The bool value.
        #;?O>   {   s:13SwiftProtobuf17JSONDecodingErrorO17missingFieldNamesyA2CmF/   The message does not have fieldName information      4   /// The message does not have fieldName information
        %C??:   ?  s:13SwiftProtobuf07Google_B12_FileOptionsV10deprecatedSbvp?   Is this file deprecated? Depending on the target platform, this can emit Deprecated annotations for everything in the file, or it will be completely ignored; in the very least, this is a formalization for deprecating files.         /// Is this file deprecated?
   K   /// Depending on the target platform, this can emit Deprecated annotations
   N   /// for everything in the file, or it will be completely ignored; in the very
   :   /// least, this is a formalization for deprecating files.
    ?    '???K   {   s:13SwiftProtobuf07Google_B16_DescriptorProtoV13ReservedRangeV8hasStartSbvp.   Returns true if start has been explicitly set.      5   /// Returns true if `start` has been explicitly set.
    $   'K?*2   ?   s:13SwiftProtobuf7MessageP