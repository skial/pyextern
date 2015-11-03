/* This file is generated, do not edit! */
package docutils.io;
@:pythonImport("docutils.io", "FileOutput") extern class FileOutput {
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
		:Parameters:
		    - `destination`: either a file-like object (which is written
		      directly) or `None` (which implies `sys.stdout` if no
		      `destination_path` given).
		    - `destination_path`: a path to a file, which is opened and then
		      written.
		    - `encoding`: the text encoding of the output file.
		    - `error_handler`: the encoding error handler to use.
		    - `autoclose`: close automatically after write (except when
		      `sys.stdout` or `sys.stderr` is the destination).
		    - `handle_io_errors`: ignored, deprecated, will be removed.
		    - `mode`: how the file is to be opened (see standard function
		      `open`). The default is 'w', providing universal newline
		      support for text files.
	**/
	@:native("__init__")
	public function ___init__(?destination:Dynamic, ?destination_path:Dynamic, ?encoding:Dynamic, ?error_handler:Dynamic, ?autoclose:Dynamic, ?handle_io_errors:Dynamic, ?mode:Dynamic):Dynamic;
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
	public function close():Dynamic;
	static public var component_type : Dynamic;
	static public var default_destination_path : Dynamic;
	static public var default_transforms : Dynamic;
	public function encode(data:Dynamic):Dynamic;
	/**
		Transforms required by this class.  Override in subclasses.
	**/
	public function get_transforms():Dynamic;
	static public var mode : Dynamic;
	public function open():Dynamic;
	static public var unknown_reference_resolvers : Dynamic;
	/**
		Encode `data`, write it to a single file, and return it.
		
		With Python 3 or binary output mode, `data` is returned unchanged,
		except when specified encoding and output encoding differ.
	**/
	public function write(data:Dynamic):Dynamic;
}