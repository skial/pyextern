/* This file is generated, do not edit! */
package spacy.lookups;
@:pythonImport("spacy.lookups", "Lookups") extern class Lookups {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the lookups contain a table of a given name. Delegates to
		Lookups.has_table.
		
		name (str): Name of the table.
		RETURNS (bool): Whether a table of that name is in the lookups.
	**/
	public function __contains__(name:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize the Lookups object.
		
		DOCS: https://spacy.io/api/lookups#init
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize the Lookups object.
		
		DOCS: https://spacy.io/api/lookups#init
	**/
	public function new():Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		RETURNS (int): The number of tables in the lookups.
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Add a new table to the lookups. Raises an error if the table exists.
		
		name (str): Unique name of table.
		data (dict): Optional data to add to the table.
		RETURNS (Table): The newly added table.
		
		DOCS: https://spacy.io/api/lookups#add_table
	**/
	public function add_table(name:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Load the lookups from a bytestring.
		
		bytes_data (bytes): The data to load.
		RETURNS (Lookups): The loaded Lookups.
		
		DOCS: https://spacy.io/api/lookups#from_bytes
	**/
	public function from_bytes(bytes_data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load lookups from a directory containing a lookups.bin. Will skip
		loading if the file doesn't exist.
		
		path (str / Path): The directory path.
		RETURNS (Lookups): The loaded lookups.
		
		DOCS: https://spacy.io/api/lookups#from_disk
	**/
	public function from_disk(path:Dynamic, ?filename:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Get a table. Raises an error if the table doesn't exist and no
		default value is provided.
		
		name (str): Name of the table.
		default (Any): Optional default value to return if table doesn't exist.
		RETURNS (Table): The table.
		
		DOCS: https://spacy.io/api/lookups#get_table
	**/
	public function get_table(name:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Check if the lookups contain a table of a given name.
		
		name (str): Name of the table.
		RETURNS (bool): Whether a table of that name exists.
		
		DOCS: https://spacy.io/api/lookups#has_table
	**/
	public function has_table(name:Dynamic):Dynamic;
	/**
		Remove a table. Raises an error if the table doesn't exist.
		
		name (str): Name of the table to remove.
		RETURNS (Table): The removed table.
		
		DOCS: https://spacy.io/api/lookups#remove_table
	**/
	public function remove_table(name:Dynamic):Dynamic;
	/**
		Set a table.
		
		name (str): Name of the table to set.
		table (Table): The Table to set.
		
		DOCS: https://spacy.io/api/lookups#set_table
	**/
	public function set_table(name:Dynamic, table:Dynamic):Dynamic;
	/**
		RETURNS (List[str]): Names of all tables in the lookups.
	**/
	public var tables : Dynamic;
	/**
		Serialize the lookups to a bytestring.
		
		RETURNS (bytes): The serialized Lookups.
		
		DOCS: https://spacy.io/api/lookups#to_bytes
	**/
	public function to_bytes(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save the lookups to a directory as lookups.bin. Expects a path to a
		directory, which will be created if it doesn't exist.
		
		path (str / Path): The file path.
		
		DOCS: https://spacy.io/api/lookups#to_disk
	**/
	public function to_disk(path:Dynamic, ?filename:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}