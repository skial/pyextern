/* This file is generated, do not edit! */
package spacy.lookups;
@:pythonImport("spacy.lookups", "Table") extern class Table {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether a key is in the table. String keys will be hashed.
		
		key (str / int): The key to check.
		RETURNS (bool): Whether the key is in the table.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
		Get the value for a given key. String keys will be hashed.
		
		key (str / int): The key to get.
		RETURNS: The value.
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize a new table.
		
		name (str): Optional table name for reference.
		data (dict): Initial data, used to hint Bloom Filter.
		
		DOCS: https://spacy.io/api/lookups#table.init
	**/
	@:native("__init__")
	public function ___init__(?name:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Initialize a new table.
		
		name (str): Optional table name for reference.
		data (dict): Initial data, used to hint Bloom Filter.
		
		DOCS: https://spacy.io/api/lookups#table.init
	**/
	public function new(?name:Dynamic, ?data:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		Return state information for pickling
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
		od.__reversed__() <==> reversed(od)
	**/
	public function __reversed__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set new key/value pair. String keys will be hashed.
		
		key (str / int): The key to set.
		value: The value to set.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		D.__sizeof__() -> size of D in memory, in bytes
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		od.clear() -> None.  Remove all items from od.
	**/
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		od.copy() -> a shallow copy of od
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Load a table from a bytestring.
		
		bytes_data (bytes): The data to load.
		RETURNS (Table): The loaded table.
		
		DOCS: https://spacy.io/api/lookups#table.from_bytes
	**/
	public function from_bytes(bytes_data:Dynamic):Dynamic;
	/**
		Initialize a new table from a dict.
		
		data (dict): The dictionary.
		name (str): Optional table name for reference.
		
		DOCS: https://spacy.io/api/lookups#table.from_dict
	**/
	static public function from_dict(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a new ordered dictionary with keys from iterable and values set to value.
	**/
	static public function fromkeys(iterable:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Get the value for a given key. String keys will be hashed.
		
		key (str / int): The key to get.
		default: The default value to return.
		RETURNS: The value.
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		D.items() -> a set-like object providing a view on D's items
	**/
	public function items(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.keys() -> a set-like object providing a view on D's keys
	**/
	public function keys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Move an existing element to the end (or beginning if last is false).
		
		Raise KeyError if the element does not exist.
	**/
	public function move_to_end(key:Dynamic, ?last:Dynamic):Dynamic;
	/**
		od.pop(k[,d]) -> v, remove specified key and return the corresponding
		value.  If key is not found, d is returned if given, otherwise KeyError
		is raised.
	**/
	public function pop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Remove and return a (key, value) pair from the dictionary.
		
		Pairs are returned in LIFO order if last is true or FIFO order if false.
	**/
	public function popitem(?last:Dynamic):Dynamic;
	/**
		Set new key/value pair. String keys will be hashed.
		Same as table[key] = value.
		
		key (str / int): The key to set.
		value: The value to set.
	**/
	public function set(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Insert key with a value of default if key is not in the dictionary.
		
		Return the value for key if key is in the dictionary, else default.
	**/
	public function setdefault(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Serialize table to a bytestring.
		
		RETURNS (bytes): The serialized table.
		
		DOCS: https://spacy.io/api/lookups#table.to_bytes
	**/
	public function to_bytes():Dynamic;
	/**
		D.update([E, ]**F) -> None.  Update D from dict/iterable E and F.
		If E is present and has a .keys() method, then does:  for k in E: D[k] = E[k]
		If E is present and lacks a .keys() method, then does:  for k, v in E: D[k] = v
		In either case, this is followed by: for k in F:  D[k] = F[k]
	**/
	public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.values() -> an object providing a view on D's values
	**/
	public function values(args:haxe.extern.Rest<Dynamic>):Dynamic;
}