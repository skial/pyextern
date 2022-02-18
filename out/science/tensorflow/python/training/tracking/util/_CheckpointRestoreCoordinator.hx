/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.util;
@:pythonImport("tensorflow.python.training.tracking.util", "_CheckpointRestoreCoordinator") extern class _CheckpointRestoreCoordinator {
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
		Specify the checkpoint being loaded.
		
		Args:
		  object_graph_proto: The TrackableObjectGraph protocol buffer associated
		    with this checkpoint.
		  save_path: A string, the path to the checkpoint, as returned by
		    `tf.train.latest_checkpoint`.
		  save_path_tensor: A string `Tensor` which contains or will be fed the save
		    path.
		  restore_op_cache: A dictionary shared between
		    `_CheckpointRestoreCoordinator`s for the same Python objects, used to
		    look up restore ops by name to avoid re-creating them across multiple
		    `restore()` calls.
		  graph_view: A graph_view_lib.ObjectGraphView object for the restored
		    objects.
		  options: A CheckpointOptions object.
	**/
	@:native("__init__")
	public function ___init__(object_graph_proto:Dynamic, save_path:Dynamic, save_path_tensor:Dynamic, restore_op_cache:Dynamic, graph_view:Dynamic, options:Dynamic):Dynamic;
	/**
		Specify the checkpoint being loaded.
		
		Args:
		  object_graph_proto: The TrackableObjectGraph protocol buffer associated
		    with this checkpoint.
		  save_path: A string, the path to the checkpoint, as returned by
		    `tf.train.latest_checkpoint`.
		  save_path_tensor: A string `Tensor` which contains or will be fed the save
		    path.
		  restore_op_cache: A dictionary shared between
		    `_CheckpointRestoreCoordinator`s for the same Python objects, used to
		    look up restore ops by name to avoid re-creating them across multiple
		    `restore()` calls.
		  graph_view: A graph_view_lib.ObjectGraphView object for the restored
		    objects.
		  options: A CheckpointOptions object.
	**/
	public function new(object_graph_proto:Dynamic, save_path:Dynamic, save_path_tensor:Dynamic, restore_op_cache:Dynamic, graph_view:Dynamic, options:Dynamic):Void;
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
	public var expect_partial : Dynamic;
	public function new_restore_ops(new_ops:Dynamic):Dynamic;
	/**
		Run or build restore operations for SaveableObjects.
		
		Args:
		  tensor_saveables: `SaveableObject`s which correspond to Tensors.
		  python_saveables: `PythonStateSaveable`s which correspond to Python
		    values.
		
		Returns:
		  When graph building, a list of restore operations, either cached or newly
		  created, to restore `tensor_saveables`.
	**/
	public function restore_saveables(tensor_saveables:Dynamic, python_saveables:Dynamic):Dynamic;
}