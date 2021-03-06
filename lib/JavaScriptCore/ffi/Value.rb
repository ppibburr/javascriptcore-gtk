
#       Value.rb
             

# 
module JavaScriptCore
  module Lib
    class Value < JavaScriptCore::BaseObject

      #       Creates a JavaScript value of the undefined type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @return         The unique undefined value.
      def self.make_undefined(ctx)
        JavaScriptCore::Lib.JSValueMakeUndefined(ctx)
      end

      #       Creates a JavaScript value of the null type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @return         The unique null value.
      def self.make_null(ctx)
        JavaScriptCore::Lib.JSValueMakeNull(ctx)
      end

      #       Creates a JavaScript value of the boolean type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:bool] boolean  The bool to assign to the newly created JSValue.
      # @return         A JSValue of the boolean type, representing the value of boolean.
      def self.make_boolean(ctx,boolean)
        JavaScriptCore::Lib.JSValueMakeBoolean(ctx,boolean)
      end

      #       Creates a JavaScript value of the number type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:double] number   The double to assign to the newly created JSValue.
      # @return         A JSValue of the number type, representing the value of number.
      def self.make_number(ctx,number)
        JavaScriptCore::Lib.JSValueMakeNumber(ctx,number)
      end

      #       Creates a JavaScript value of the string type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSStringRef] string   The JSString to assign to the newly created JSValue. The
      # @return         A JSValue of the string type, representing the value of string.
      def self.make_string(ctx,string)
        JavaScriptCore::Lib.JSValueMakeString(ctx,string)
      end

      #       Returns a JavaScript value's type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue whose type you want to obtain.
      # @return         A value of type JSType that identifies value's type.
      def get_type(ctx,value)
        JavaScriptCore::Lib.JSValueGetType(ctx,value)
      end

      #       Tests whether a JavaScript value's type is the undefined type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to test.
      # @return         true if value's type is the undefined type, otherwise false.
      def is_undefined(ctx,value)
        JavaScriptCore::Lib.JSValueIsUndefined(ctx,value)
      end

      #       Tests whether a JavaScript value's type is the null type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to test.
      # @return         true if value's type is the null type, otherwise false.
      def is_null(ctx,value)
        JavaScriptCore::Lib.JSValueIsNull(ctx,value)
      end

      #       Tests whether a JavaScript value's type is the boolean type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to test.
      # @return         true if value's type is the boolean type, otherwise false.
      def is_boolean(ctx,value)
        JavaScriptCore::Lib.JSValueIsBoolean(ctx,value)
      end

      #       Tests whether a JavaScript value's type is the number type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to test.
      # @return         true if value's type is the number type, otherwise false.
      def is_number(ctx,value)
        JavaScriptCore::Lib.JSValueIsNumber(ctx,value)
      end

      #       Tests whether a JavaScript value's type is the string type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to test.
      # @return         true if value's type is the string type, otherwise false.
      def is_string(ctx,value)
        JavaScriptCore::Lib.JSValueIsString(ctx,value)
      end

      #       Tests whether a JavaScript value's type is the object type.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to test.
      # @return         true if value's type is the object type, otherwise false.
      def is_object(ctx,value)
        JavaScriptCore::Lib.JSValueIsObject(ctx,value)
      end

      # Tests whether a JavaScript value is an object with a given class in its class chain.
      #
      # @param [:JSContextRef] ctx The execution context to use.
      # @param [:JSValueRef] value The JSValue to test.
      # @param [:JSClassRef] jsClass The JSClass to test against.
      # @return true if value is an object and has jsClass in its class chain, otherwise false.
      def is_object_of_class(ctx,value,jsClass)
        JavaScriptCore::Lib.JSValueIsObjectOfClass(ctx,value,jsClass)
      end

      # Tests whether two JavaScript values are equal, as compared by the JS == operator.
      #
      # @param [:JSContextRef] ctx The execution context to use.
      # @param [:JSValueRef] a The first value to test.
      # @param [:JSValueRef] b The second value to test.
      # @param [:pointer] exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
      # @return true if the two values are equal, false if they are not equal or an exception is thrown.
      def is_equal(ctx,a,b,exception)
        JavaScriptCore::Lib.JSValueIsEqual(ctx,a,b,exception)
      end

      #       Tests whether two JavaScript values are strict equal, as compared by the JS === operator.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] a        The first value to test.
      # @param [:JSValueRef] b        The second value to test.
      # @return         true if the two values are strict equal, otherwise false.
      def is_strict_equal(ctx,a,b)
        JavaScriptCore::Lib.JSValueIsStrictEqual(ctx,a,b)
      end

      # Tests whether a JavaScript value is an object constructed by a given constructor, as compared by the JS instanceof operator.
      #
      # @param [:JSContextRef] ctx The execution context to use.
      # @param [:JSValueRef] value The JSValue to test.
      # @param [:JSObjectRef] constructor The constructor to test against.
      # @param [:pointer] exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
      # @return true if value is an object constructed by constructor, as compared by the JS instanceof operator, otherwise false.
      def is_instance_of_constructor(ctx,value,constructor,exception)
        JavaScriptCore::Lib.JSValueIsInstanceOfConstructor(ctx,value,constructor,exception)
      end

      #       Converts a JavaScript value to boolean and returns the resulting boolean.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to convert.
      # @return         The boolean result of conversion.
      def to_boolean(ctx,value)
        JavaScriptCore::Lib.JSValueToBoolean(ctx,value)
      end

      #       Converts a JavaScript value to number and returns the resulting number.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to convert.
      # @param [:pointer] exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
      # @return         The numeric result of conversion, or NaN if an exception is thrown.
      def to_number(ctx,value,exception)
        JavaScriptCore::Lib.JSValueToNumber(ctx,value,exception)
      end

      #       Converts a JavaScript value to string and copies the result into a JavaScript string.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to convert.
      # @param [:pointer] exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
      # @return         A JSString with the result of conversion, or NULL if an exception is thrown. Ownership follows the Create Rule.
      def to_string_copy(ctx,value,exception)
        JavaScriptCore::Lib.JSValueToStringCopy(ctx,value,exception)
      end

      # Converts a JavaScript value to object and returns the resulting object.
      #
      # @param [:JSContextRef] ctx  The execution context to use.
      # @param [:JSValueRef] value    The JSValue to convert.
      # @param [:pointer] exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
      # @return         The JSObject result of conversion, or NULL if an exception is thrown.
      def to_object(ctx,value,exception)
        JavaScriptCore::Lib.JSValueToObject(ctx,value,exception)
      end

      # Protects a JavaScript value from garbage collection.
      #
      # @param [:JSContextRef] ctx The execution context to use.
      # @param [:JSValueRef] value The JSValue to protect.
      def protect(ctx,value)
        JavaScriptCore::Lib.JSValueProtect(ctx,value)
      end

      #       Unprotects a JavaScript value from garbage collection.
      #
      # @param [:JSContextRef] ctx      The execution context to use.
      # @param [:JSValueRef] value    The JSValue to unprotect.
      def unprotect(ctx,value)
        JavaScriptCore::Lib.JSValueUnprotect(ctx,value)
      end
    end
  end
end
