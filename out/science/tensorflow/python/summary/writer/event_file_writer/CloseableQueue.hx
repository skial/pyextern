/* This file is generated, do not edit! */
package tensorflow.python.summary.writer.event_file_writer;
@:pythonImport("tensorflow.python.summary.writer.event_file_writer", "CloseableQueue") extern class CloseableQueue {
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
		Create a queue object with a given maximum size.
		
		Args:
		  maxsize: int size of queue. If <= 0, the queue size is infinite.
	**/
	@:native("__init__")
	public function ___init__(?maxsize:Dynamic):Dynamic;
	/**
		Create a queue object with a given maximum size.
		
		Args:
		  maxsize: int size of queue. If <= 0, the queue size is infinite.
	**/
	public function new(?maxsize:Dynamic):Void;
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
		Closes the queue, causing any pending or future `put()` calls to fail.
	**/
	public function close():Dynamic;
	/**
		Remove and return an item from the queue.
		
		If the queue is empty, blocks until an item is available.
		
		Returns:
		  an item from the queue
	**/
	public function get():Dynamic;
	/**
		Put an item into the queue.
		
		If the queue is closed, fails immediately.
		
		If the queue is full, blocks until space is available or until the queue
		is closed by a call to close(), at which point this call fails.
		
		Args:
		  item: an item to add to the queue
		
		Raises:
		  QueueClosedError: if insertion failed because the queue is closed
	**/
	public function put(item:Dynamic):Dynamic;
}