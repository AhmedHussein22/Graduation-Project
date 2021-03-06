    W    ?X?:   \  s:13SwiftProtobuf07Google_B15_MessageOptionsV8mapEntrySbvpT   Whether the message is an automatically generated map entry type for the maps field.      M   /// Whether the message is an automatically generated map entry type for the
      /// maps field.
      ///
      /// For maps fields:
   /   ///     map<KeyType, ValueType> map_field = 1;
   &   /// The parsed descriptor looks like:
       ///     message MapFieldEntry {
   %   ///         option map_entry = true;
   &   ///         optional KeyType key = 1;
   *   ///         optional ValueType value = 2;
   
   ///     }
   .   ///     repeated MapFieldEntry map_field = 1;
      ///
   O   /// Implementations may choose not to generate the map_entry=true message, but
   I   /// use a native map in the target language to hold the keys and values.
   F   /// The reflection APIs in such implementations still need to work as
   .   /// if the field is a repeated message field.
      ///
   L   /// NOTE: Do not set the option in .proto files. Always use the maps syntax
   L   /// instead. The option should only be implicitly set by the proto compiler
      /// parser.
    ?    ???D   ?   s:13SwiftProtobuf07Google_B21_OneofDescriptorProtoV12clearOptionsyyFT   Clears the value of options. Subsequent reads from it will return its default value.      [   /// Clears the value of `options`. Subsequent reads from it will return its default value.
    U   ???   A   s:13SwiftProtobuf0B6StringV   String         ///
      /// String
      ///
        ?@&?L   {   s:13SwiftProtobuf07Google_B16_DescriptorProtoV14ExtensionRangeV8hasStartSbvp.   Returns true if start has been explicitly set.      5   /// Returns true if `start` has been explicitly set.
        ????8   ?  s:13SwiftProtobuf07Google_B9_DurationV7secondss5Int64Vvp?   Signed seconds of the span of time. Must be from -315,576,000,000 to +315,576,000,000 inclusive. Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years      F   /// Signed seconds of the span of time. Must be from -315,576,000,000
   I   /// to +315,576,000,000 inclusive. Note: these bounds are computed from:
   H   /// 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years
        ?象T   T  s:13SwiftProtobuf7VisitorP24visitRepeatedDoubleField5value11fieldNumberySaySdG_SitKFJ   The method is called once with the complete array of values for the field.      D   /// The method is called once with the complete array of values for
      /// the field.
      ///
   ;   /// A default implementation is provided that simply calls
   @   /// `visitSingularDoubleField` once for each item in the array.
        ?PֆV   S  s:13SwiftProtobuf7VisitorP23visitRepeatedInt32Field5value11fieldNumberySays0F0VG_SitKFJ   The method is called once with the complete array of values for the field.      D   /// The method is called once with the complete array of values for
      /// the field.
      ///
   ;   /// A default implementation is provided that simply calls
   ?   /// `visitSingularInt32Field` once for each item in the array.
        ???E*     s:13SwiftProtobuf07Google_B4_ApiV4nameSSvpm   The fully qualified name of this interface, including package name followed by the interface’s simple name.      G   /// The fully qualified name of this interface, including package name
   -   /// followed by the interface's simple name.
        ???E1   Q   s:13SwiftProtobuf07Google_B6_ValueV06stringD0SSvp   Represents a string value.         /// Represents a string value.
        ????#   ?  s:13SwiftProtobuf07Google_B6_ValueV?   Value represents a dynamically typed value which can be either null, a number, a string, a boolean, a recursive struct value, or a list of values. A producer of value is expected to set one of that variants, absence of any variant indicates an error.      E   /// `Value` represents a dynamically typed value which can be either
   H   /// null, a number,