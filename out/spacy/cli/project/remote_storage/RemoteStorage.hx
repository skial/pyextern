/* This file is generated, do not edit! */
package spacy.cli.project.remote_storage;
@:pythonImport("spacy.cli.project.remote_storage", "RemoteStorage") extern class RemoteStorage {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(project_root:Dynamic, url:Dynamic, ?compression:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(project_root:Dynamic, url:Dynamic, ?compression:Dynamic):Void;
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
		Encode a subpath into a URL-safe name.
	**/
	public function encode_name(name:Dynamic):Dynamic;
	/**
		Find the best matching version of a file within the storage,
		or `None` if no match can be found. If both the creation and content hash
		are specified, only exact matches will be returned. Otherwise, the most
		recent matching file is preferred.
	**/
	public function find(path:Dynamic, ?command_hash:Dynamic, ?content_hash:Dynamic):Dynamic;
	/**
		Construct a URL from a subpath, a creation hash and a content hash.
	**/
	public function make_url(path:Dynamic, command_hash:Dynamic, content_hash:Dynamic):Dynamic;
	/**
		Retrieve a file from the remote cache. If the file already exists,
		nothing is done.
		
		If the command_hash and/or content_hash are specified, only matching
		results are returned. If no results are available, an error is raised.
	**/
	public function pull(path:Dynamic, ?command_hash:Dynamic, ?content_hash:Dynamic):Dynamic;
	/**
		Compress a file or directory within a project and upload it to a remote
		storage. If an object exists at the full URL, nothing is done.
		
		Within the remote storage, files are addressed by their project path
		(url encoded) and two user-supplied hashes, representing their creation
		context and their file contents. If the URL already exists, the data is
		not uploaded. Paths are archived and compressed prior to upload.
	**/
	public function push(path:Dynamic, command_hash:Dynamic, content_hash:Dynamic):Dynamic;
}