/* This file is generated, do not edit! */
package spacy.compat;
@:pythonImport("spacy.compat") extern class Compat_Module {
	static public var CudaStream : Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function copy_array(dst:Dynamic, src:Dynamic):Dynamic;
	static public var cupy : Dynamic;
	static public var is_linux : Dynamic;
	static public var is_osx : Dynamic;
	static public var is_windows : Dynamic;
	/**
		Mark a protocol class as a runtime protocol.
		
		Such protocol can be used with isinstance() and issubclass().
		Raise TypeError if applied to a non-protocol class.
		This allows a simple-minded structural check very similar to
		one trick ponies in collections.abc such as Iterable.
		For example::
		
		    @runtime_checkable
		    class Closable(Protocol):
		        def close(self): ...
		
		    assert isinstance(open('/some/file'), Closable)
		
		Warning: this will check only the presence of the required methods,
		not their type signatures!
	**/
	static public function runtime_checkable(cls:Dynamic):Dynamic;
}