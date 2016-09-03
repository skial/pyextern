/* This file is generated, do not edit! */
package pandas.compat.pickle_compat;
@:pythonImport("pandas.compat.pickle_compat", "Unpickler") extern class Unpickler {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		This takes a binary file for reading a pickle data stream.
		
		The protocol version of the pickle is detected automatically, so
		no proto argument is needed.
		
		The argument *file* must have two methods, a read() method that
		takes an integer argument, and a readline() method that requires
		no arguments.  Both methods should return bytes.  Thus *file*
		can be a binary file object opened for reading, an io.BytesIO
		object, or any other custom object that meets this interface.
		
		The file-like object must have two methods, a read() method
		that takes an integer argument, and a readline() method that
		requires no arguments.  Both methods should return bytes.
		Thus file-like object can be a binary file object opened for
		reading, a BytesIO object, or any other custom object that
		meets this interface.
		
		Optional keyword arguments are *fix_imports*, *encoding* and
		*errors*, which are used to control compatibility support for
		pickle stream generated by Python 2.  If *fix_imports* is True,
		pickle will try to map the old Python 2 names to the new names
		used in Python 3.  The *encoding* and *errors* tell pickle how
		to decode 8-bit string instances pickled by Python 2; these
		default to 'ASCII' and 'strict', respectively. *encoding* can be
		'bytes' to read theses 8-bit string instances as bytes objects.
	**/
	@:native("__init__")
	public function ___init__(file:Dynamic, ?fix_imports:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		This takes a binary file for reading a pickle data stream.
		
		The protocol version of the pickle is detected automatically, so
		no proto argument is needed.
		
		The argument *file* must have two methods, a read() method that
		takes an integer argument, and a readline() method that requires
		no arguments.  Both methods should return bytes.  Thus *file*
		can be a binary file object opened for reading, an io.BytesIO
		object, or any other custom object that meets this interface.
		
		The file-like object must have two methods, a read() method
		that takes an integer argument, and a readline() method that
		requires no arguments.  Both methods should return bytes.
		Thus file-like object can be a binary file object opened for
		reading, a BytesIO object, or any other custom object that
		meets this interface.
		
		Optional keyword arguments are *fix_imports*, *encoding* and
		*errors*, which are used to control compatibility support for
		pickle stream generated by Python 2.  If *fix_imports* is True,
		pickle will try to map the old Python 2 names to the new names
		used in Python 3.  The *encoding* and *errors* tell pickle how
		to decode 8-bit string instances pickled by Python 2; these
		default to 'ASCII' and 'strict', respectively. *encoding* can be
		'bytes' to read theses 8-bit string instances as bytes objects.
	**/
	public function new(file:Dynamic, ?fix_imports:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
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
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _decode_string(value:Dynamic):Dynamic;
	public function _instantiate(klass:Dynamic, k:Dynamic):Dynamic;
	static public var dispatch : Dynamic;
	public function find_class(module:Dynamic, name:Dynamic):Dynamic;
	public function get_extension(code:Dynamic):Dynamic;
	/**
		Read a pickled object representation from the open file.
		
		Return the reconstituted object hierarchy specified in the file.
	**/
	public function load():Dynamic;
	public function load_additems():Dynamic;
	public function load_append():Dynamic;
	public function load_appends():Dynamic;
	public function load_binbytes():Dynamic;
	public function load_binbytes8():Dynamic;
	public function load_binfloat():Dynamic;
	public function load_binget():Dynamic;
	public function load_binint():Dynamic;
	public function load_binint1():Dynamic;
	public function load_binint2():Dynamic;
	public function load_binpersid():Dynamic;
	public function load_binput():Dynamic;
	public function load_binstring():Dynamic;
	public function load_binunicode():Dynamic;
	public function load_binunicode8():Dynamic;
	public function load_build():Dynamic;
	public function load_dict():Dynamic;
	public function load_dup():Dynamic;
	public function load_empty_dictionary():Dynamic;
	public function load_empty_list():Dynamic;
	public function load_empty_set():Dynamic;
	public function load_empty_tuple():Dynamic;
	public function load_ext1():Dynamic;
	public function load_ext2():Dynamic;
	public function load_ext4():Dynamic;
	public function load_false():Dynamic;
	public function load_float():Dynamic;
	public function load_frame():Dynamic;
	public function load_frozenset():Dynamic;
	public function load_get():Dynamic;
	public function load_global():Dynamic;
	public function load_inst():Dynamic;
	public function load_int():Dynamic;
	public function load_list():Dynamic;
	public function load_long():Dynamic;
	public function load_long1():Dynamic;
	public function load_long4():Dynamic;
	public function load_long_binget():Dynamic;
	public function load_long_binput():Dynamic;
	public function load_mark():Dynamic;
	public function load_memoize():Dynamic;
	public function load_newobj():Dynamic;
	public function load_newobj_ex():Dynamic;
	public function load_none():Dynamic;
	public function load_obj():Dynamic;
	public function load_persid():Dynamic;
	public function load_pop():Dynamic;
	public function load_pop_mark():Dynamic;
	public function load_proto():Dynamic;
	public function load_put():Dynamic;
	public function load_reduce():Dynamic;
	public function load_setitem():Dynamic;
	public function load_setitems():Dynamic;
	public function load_short_binbytes():Dynamic;
	public function load_short_binstring():Dynamic;
	public function load_short_binunicode():Dynamic;
	public function load_stack_global():Dynamic;
	public function load_stop():Dynamic;
	public function load_string():Dynamic;
	public function load_true():Dynamic;
	public function load_tuple():Dynamic;
	public function load_tuple1():Dynamic;
	public function load_tuple2():Dynamic;
	public function load_tuple3():Dynamic;
	public function load_unicode():Dynamic;
	public function marker():Dynamic;
	public function persistent_load(pid:Dynamic):Dynamic;
}