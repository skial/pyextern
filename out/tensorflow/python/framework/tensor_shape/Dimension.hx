/* This file is generated, do not edit! */
package tensorflow.python.framework.tensor_shape;
@:pythonImport("tensorflow.python.framework.tensor_shape", "Dimension") extern class Dimension {
	/**
		Returns the sum of `self` and `other`.
		
		Dimensions are summed as follows:
		
		```python
		tf.Dimension(m)    + tf.Dimension(n)    == tf.Dimension(m + n)
		tf.Dimension(m)    + tf.Dimension(None) == tf.Dimension(None)
		tf.Dimension(None) + tf.Dimension(n)    == tf.Dimension(None)
		tf.Dimension(None) + tf.Dimension(None) == tf.Dimension(None)
		```
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A Dimension whose value is the sum of `self` and `other`.
	**/
	public function __add__(other:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DEPRECATED: Use `__floordiv__` via `x // y` instead.
		
		This function exists only for backwards compatibility purposes; new code
		should use `__floordiv__` via the syntax `x // y`.  Using `x // y`
		communicates clearly that the result rounds down, and is forward compatible
		to Python 3.
		
		Args:
		  other: Another `Dimension`.
		
		Returns:
		  A `Dimension` whose value is the integer quotient of `self` and `other`.
	**/
	public function __div__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Returns true if `other` has the same known value as this Dimension.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Returns the quotient of `self` and `other` rounded down.
		
		Dimensions are divided as follows:
		
		```python
		tf.Dimension(m)    // tf.Dimension(n)    == tf.Dimension(m // n)
		tf.Dimension(m)    // tf.Dimension(None) == tf.Dimension(None)
		tf.Dimension(None) // tf.Dimension(n)    == tf.Dimension(None)
		tf.Dimension(None) // tf.Dimension(None) == tf.Dimension(None)
		```
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A `Dimension` whose value is the integer quotient of `self` and `other`.
	**/
	public function __floordiv__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True if `self` is known to be greater than or equal to `other`.
		
		Dimensions are compared as follows:
		
		```python
		(tf.Dimension(m)    >= tf.Dimension(n))    == (m >= n)
		(tf.Dimension(m)    >= tf.Dimension(None)) == None
		(tf.Dimension(None) >= tf.Dimension(n))    == None
		(tf.Dimension(None) >= tf.Dimension(None)) == None
		```
		
		Args:
		  other: Another Dimension.
		
		Returns:
		  The value of `self.value >= other.value` if both are known, otherwise
		  None.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Returns True if `self` is known to be greater than `other`.
		
		Dimensions are compared as follows:
		
		```python
		(tf.Dimension(m)    > tf.Dimension(n))    == (m > n)
		(tf.Dimension(m)    > tf.Dimension(None)) == None
		(tf.Dimension(None) > tf.Dimension(n))    == None
		(tf.Dimension(None) > tf.Dimension(None)) == None
		```
		
		Args:
		  other: Another Dimension.
		
		Returns:
		  The value of `self.value > other.value` if both are known, otherwise
		  None.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	public function __index__():Dynamic;
	/**
		Creates a new Dimension with the given value.
	**/
	@:native("__init__")
	public function ___init__(value:Dynamic):Dynamic;
	/**
		Creates a new Dimension with the given value.
	**/
	public function new(value:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __int__():Dynamic;
	/**
		Returns True if `self` is known to be less than or equal to `other`.
		
		Dimensions are compared as follows:
		
		```python
		(tf.Dimension(m)    <= tf.Dimension(n))    == (m <= n)
		(tf.Dimension(m)    <= tf.Dimension(None)) == None
		(tf.Dimension(None) <= tf.Dimension(n))    == None
		(tf.Dimension(None) <= tf.Dimension(None)) == None
		```
		
		Args:
		  other: Another Dimension.
		
		Returns:
		  The value of `self.value <= other.value` if both are known, otherwise
		  None.
	**/
	public function __le__(other:Dynamic):Dynamic;
	public function __long__():Dynamic;
	/**
		Returns True if `self` is known to be less than `other`.
		
		Dimensions are compared as follows:
		
		```python
		(tf.Dimension(m)    < tf.Dimension(n))    == (m < n)
		(tf.Dimension(m)    < tf.Dimension(None)) == None
		(tf.Dimension(None) < tf.Dimension(n))    == None
		(tf.Dimension(None) < tf.Dimension(None)) == None
		```
		
		Args:
		  other: Another Dimension.
		
		Returns:
		  The value of `self.value < other.value` if both are known, otherwise
		  None.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	/**
		Returns `self` modulo `other`.
		
		Dimension moduli are computed as follows:
		
		```python
		tf.Dimension(m)    % tf.Dimension(n)    == tf.Dimension(m % n)
		tf.Dimension(m)    % tf.Dimension(None) == tf.Dimension(None)
		tf.Dimension(None) % tf.Dimension(n)    == tf.Dimension(None)
		tf.Dimension(None) % tf.Dimension(None) == tf.Dimension(None)
		```
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A Dimension whose value is `self` modulo `other`.
	**/
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Returns the product of `self` and `other`.
		
		Dimensions are summed as follows:
		
		```python
		tf.Dimension(m)    * tf.Dimension(n)    == tf.Dimension(m * n)
		tf.Dimension(m)    * tf.Dimension(None) == tf.Dimension(None)
		tf.Dimension(None) * tf.Dimension(n)    == tf.Dimension(None)
		tf.Dimension(None) * tf.Dimension(None) == tf.Dimension(None)
		```
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A Dimension whose value is the product of `self` and `other`.
	**/
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Returns true if `other` has a different known value from `self`.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the sum of `other` and `self`.
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A Dimension whose value is the sum of `self` and `other`.
	**/
	public function __radd__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Returns the quotient of `other` and `self` rounded down.
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A `Dimension` whose value is the integer quotient of `self` and `other`.
	**/
	public function __rfloordiv__(other:Dynamic):Dynamic;
	/**
		Returns `other` modulo `self`.
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A Dimension whose value is `other` modulo `self`.
	**/
	public function __rmod__(other:Dynamic):Dynamic;
	/**
		Returns the product of `self` and `other`.
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A Dimension whose value is the product of `self` and `other`.
	**/
	public function __rmul__(other:Dynamic):Dynamic;
	/**
		Returns the subtraction of `self` from `other`.
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A Dimension whose value is the subtraction of `self` from `other`.
	**/
	public function __rsub__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Returns the subtraction of `other` from `self`.
		
		Dimensions are subtracted as follows:
		
		```python
		tf.Dimension(m)    - tf.Dimension(n)    == tf.Dimension(m - n)
		tf.Dimension(m)    - tf.Dimension(None) == tf.Dimension(None)
		tf.Dimension(None) - tf.Dimension(n)    == tf.Dimension(None)
		tf.Dimension(None) - tf.Dimension(None) == tf.Dimension(None)
		```
		
		Args:
		  other: Another Dimension, or a value accepted by `as_dimension`.
		
		Returns:
		  A Dimension whose value is the subtraction of `other` from `self`.
	**/
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Raises an exception if `other` is not compatible with this Dimension.
		
		Args:
		  other: Another Dimension.
		
		Raises:
		  ValueError: If `self` and `other` are not compatible (see
		    is_compatible_with).
	**/
	public function assert_is_compatible_with(other:Dynamic):Dynamic;
	/**
		Returns true if `other` is compatible with this Dimension.
		
		Two known Dimensions are compatible if they have the same value.
		An unknown Dimension is compatible with all other Dimensions.
		
		Args:
		  other: Another Dimension.
		
		Returns:
		  True if this Dimension and `other` are compatible.
	**/
	public function is_compatible_with(other:Dynamic):Dynamic;
	/**
		Returns a Dimension that combines the information in `self` and `other`.
		
		Dimensions are combined as follows:
		
		```python
		tf.Dimension(n)   .merge_with(tf.Dimension(n))    == tf.Dimension(n)
		tf.Dimension(n)   .merge_with(tf.Dimension(None)) == tf.Dimension(n)
		tf.Dimension(None).merge_with(tf.Dimension(n))    == tf.Dimension(n)
		tf.Dimension(None).merge_with(tf.Dimension(None)) == tf.Dimension(None)
		tf.Dimension(n)   .merge_with(tf.Dimension(m))  # raises ValueError for n != m
		```
		
		Args:
		  other: Another Dimension.
		
		Returns:
		  A Dimension containing the combined information of `self` and
		  `other`.
		
		Raises:
		  ValueError: If `self` and `other` are not compatible (see
		    is_compatible_with).
	**/
	public function merge_with(other:Dynamic):Dynamic;
	/**
		The value of this dimension, or None if it is unknown.
	**/
	public var value : Dynamic;
}