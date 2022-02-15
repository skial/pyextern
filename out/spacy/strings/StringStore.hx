/* This file is generated, do not edit! */
package spacy.strings;
@:pythonImport("spacy.strings", "StringStore") extern class StringStore {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether a string is in the store.
		
		string (str): The string to check.
		RETURNS (bool): Whether the store contains the string.
	**/
	public function __contains__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Retrieve a string from a given hash, or vice versa.
		
		string_or_id (bytes, str or uint64): The value to encode.
		Returns (str / uint64): The value to be retrieved.
	**/
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create the StringStore.
		
		strings (iterable): A sequence of unicode strings to add to the store.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create the StringStore.
		
		strings (iterable): A sequence of unicode strings to add to the store.
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Iterate over the strings in the store, in order.
		
		YIELDS (str): A string in the store.
	**/
	public function __iter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		The number of strings in the store.
		
		RETURNS (int): The number of strings in the store.
	**/
	public function __len__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		StringStore.__reduce__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_map: preshed.maps.PreshMap
	**/
	public var _map : Dynamic;
	/**
		StringStore._reset_and_load(self, strings)
	**/
	public function _reset_and_load(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StringStore.add(self, string)
		Add a string to the StringStore.
		
		        string (str): The string to add.
		        RETURNS (uint64): The string's hash value.
		        
	**/
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StringStore.as_int(self, key)
		If key is an int, return it; otherwise, get the int value.
	**/
	public function as_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StringStore.as_string(self, key)
		If key is a string, return it; otherwise, get the string value.
	**/
	public function as_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StringStore.from_bytes(self, bytes_data, **kwargs)
		Load state from a binary string.
		
		        bytes_data (bytes): The data to load from.
		        RETURNS (StringStore): The `StringStore` object.
		        
	**/
	public function from_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StringStore.from_disk(self, path)
		Loads state from a directory. Modifies the object in place and
		        returns it.
		
		        path (str / Path): A path to a directory. Paths may be either
		            strings or `Path`-like objects.
		        RETURNS (StringStore): The modified `StringStore` object.
		        
	**/
	public function from_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StringStore.to_bytes(self, **kwargs)
		Serialize the current state to a binary string.
		
		        RETURNS (bytes): The serialized form of the `StringStore` object.
		        
	**/
	public function to_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StringStore.to_disk(self, path)
		Save the current state to a directory.
		
		        path (str / Path): A path to a directory, which will be created if
		            it doesn't exist. Paths may be either strings or Path-like objects.
		        
	**/
	public function to_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
}