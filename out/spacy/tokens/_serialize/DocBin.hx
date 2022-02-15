/* This file is generated, do not edit! */
package spacy.tokens._serialize;
@:pythonImport("spacy.tokens._serialize", "DocBin") extern class DocBin {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create a DocBin object to hold serialized annotations.
		
		attrs (Iterable[str]): List of attributes to serialize. 'orth' and
		    'spacy' are always serialized, so they're not required.
		store_user_data (bool): Whether to write the `Doc.user_data` to bytes/file.
		docs (Iterable[Doc]): Docs to add.
		
		DOCS: https://spacy.io/api/docbin#init
	**/
	@:native("__init__")
	public function ___init__(?attrs:Dynamic, ?store_user_data:Dynamic, ?docs:Dynamic):Dynamic;
	/**
		Create a DocBin object to hold serialized annotations.
		
		attrs (Iterable[str]): List of attributes to serialize. 'orth' and
		    'spacy' are always serialized, so they're not required.
		store_user_data (bool): Whether to write the `Doc.user_data` to bytes/file.
		docs (Iterable[Doc]): Docs to add.
		
		DOCS: https://spacy.io/api/docbin#init
	**/
	public function new(?attrs:Dynamic, ?store_user_data:Dynamic, ?docs:Dynamic):Void;
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
		RETURNS: The number of Doc objects added to the DocBin.
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
		Add a Doc's annotations to the DocBin for serialization.
		
		doc (Doc): The Doc object to add.
		
		DOCS: https://spacy.io/api/docbin#add
	**/
	public function add(doc:Dynamic):Dynamic;
	/**
		Deserialize the DocBin's annotations from a bytestring.
		
		bytes_data (bytes): The data to load from.
		RETURNS (DocBin): The loaded DocBin.
		
		DOCS: https://spacy.io/api/docbin#from_bytes
	**/
	public function from_bytes(bytes_data:Dynamic):Dynamic;
	/**
		Load the DocBin from a file (typically called .spacy).
		
		path (str / Path): The file path.
		RETURNS (DocBin): The loaded DocBin.
		
		DOCS: https://spacy.io/api/docbin#to_disk
	**/
	public function from_disk(path:Dynamic):Dynamic;
	/**
		Recover Doc objects from the annotations, using the given vocab.
		Note that the user data of each doc will be read (if available) and returned,
		regardless of the setting of 'self.store_user_data'.
		
		vocab (Vocab): The shared vocab.
		YIELDS (Doc): The Doc objects.
		
		DOCS: https://spacy.io/api/docbin#get_docs
	**/
	public function get_docs(vocab:Dynamic):Dynamic;
	/**
		Extend the annotations of this DocBin with the annotations from
		another. Will raise an error if the pre-defined attrs of the two
		DocBins don't match, or if they differ in whether or not to store
		user data.
		
		other (DocBin): The DocBin to merge into the current bin.
		
		DOCS: https://spacy.io/api/docbin#merge
	**/
	public function merge(other:Dynamic):Dynamic;
	/**
		Serialize the DocBin's annotations to a bytestring.
		
		RETURNS (bytes): The serialized DocBin.
		
		DOCS: https://spacy.io/api/docbin#to_bytes
	**/
	public function to_bytes():Dynamic;
	/**
		Save the DocBin to a file (typically called .spacy).
		
		path (str / Path): The file path.
		
		DOCS: https://spacy.io/api/docbin#to_disk
	**/
	public function to_disk(path:Dynamic):Dynamic;
}