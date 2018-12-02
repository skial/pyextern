/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QImageWriter") extern class QImageWriter {
	static public var DeviceError : Dynamic;
	public function ImageWriterError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UnknownError : Dynamic;
	static public var UnsupportedFormatError : Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canWrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function compression(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function description(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function errorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function gamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function optimizedWrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function progressiveScanWrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function quality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCompression(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOptimizedWrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProgressiveScanWrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setQuality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSubType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTransformation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function subType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function supportedImageFormats(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function supportedMimeTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedSubTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportsOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transformation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function write(args:haxe.extern.Rest<Dynamic>):Dynamic;
}