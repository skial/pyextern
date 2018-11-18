/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.wals;
@:pythonImport("tensorflow.contrib.factorization.python.ops.wals", "_SweepHook") extern class _SweepHook {
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
		Initializes SweepHook.
		
		Args:
		  is_row_sweep_var: A Boolean tf.Variable, determines whether we are
		    currently doing a row or column sweep. It is updated by the hook.
		  is_sweep_done_var: A Boolean tf.Variable, determines whether we are
		    starting a new sweep (this is used to determine when to run the prep ops
		    below).
		  init_op: op to be run once before training. This is typically a local
		    initialization op (such as cache initialization).
		  row_prep_ops: A list of TensorFlow ops, to be run before the beginning of
		    each row sweep (and during initialization), in the given order.
		  col_prep_ops: A list of TensorFlow ops, to be run before the beginning of
		    each column sweep (and during initialization), in the given order.
		  row_train_op: A TensorFlow op to be run during row sweeps.
		  col_train_op: A TensorFlow op to be run during column sweeps.
		  switch_op: A TensorFlow op to be run before each sweep.
	**/
	@:native("__init__")
	public function ___init__(is_row_sweep_var:Dynamic, is_sweep_done_var:Dynamic, init_op:Dynamic, row_prep_ops:Dynamic, col_prep_ops:Dynamic, row_train_op:Dynamic, col_train_op:Dynamic, switch_op:Dynamic):Dynamic;
	/**
		Initializes SweepHook.
		
		Args:
		  is_row_sweep_var: A Boolean tf.Variable, determines whether we are
		    currently doing a row or column sweep. It is updated by the hook.
		  is_sweep_done_var: A Boolean tf.Variable, determines whether we are
		    starting a new sweep (this is used to determine when to run the prep ops
		    below).
		  init_op: op to be run once before training. This is typically a local
		    initialization op (such as cache initialization).
		  row_prep_ops: A list of TensorFlow ops, to be run before the beginning of
		    each row sweep (and during initialization), in the given order.
		  col_prep_ops: A list of TensorFlow ops, to be run before the beginning of
		    each column sweep (and during initialization), in the given order.
		  row_train_op: A TensorFlow op to be run during row sweeps.
		  col_train_op: A TensorFlow op to be run during column sweeps.
		  switch_op: A TensorFlow op to be run before each sweep.
	**/
	public function new(is_row_sweep_var:Dynamic, is_sweep_done_var:Dynamic, init_op:Dynamic, row_prep_ops:Dynamic, col_prep_ops:Dynamic, row_train_op:Dynamic, col_train_op:Dynamic, switch_op:Dynamic):Void;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Called when new TensorFlow session is created.
		
		This is called to signal the hooks that a new session has been created. This
		has two essential differences with the situation in which `begin` is called:
		
		* When this is called, the graph is finalized and ops can no longer be added
		    to the graph.
		* This method will also be called as a result of recovering a wrapped
		    session, not only at the beginning of the overall session.
		
		Args:
		  session: A TensorFlow Session that has been created.
		  coord: A Coordinator object which keeps track of all threads.
	**/
	public function after_create_session(session:Dynamic, coord:Dynamic):Dynamic;
	/**
		Called after each call to run().
		
		The `run_values` argument contains results of requested ops/tensors by
		`before_run()`.
		
		The `run_context` argument is the same one send to `before_run` call.
		`run_context.request_stop()` can be called to stop the iteration.
		
		If `session.run()` raises any exceptions then `after_run()` is not called.
		
		Args:
		  run_context: A `SessionRunContext` object.
		  run_values: A SessionRunValues object.
	**/
	public function after_run(run_context:Dynamic, run_values:Dynamic):Dynamic;
	/**
		Runs the appropriate prep ops, and requests running update ops.
	**/
	public function before_run(run_context:Dynamic):Dynamic;
	/**
		Called once before using the session.
		
		When called, the default graph is the one that will be launched in the
		session.  The hook can modify the graph by adding new operations to it.
		After the `begin()` call the graph will be finalized and the other callbacks
		can not modify the graph anymore. Second call of `begin()` on the same
		graph, should not change the graph.
	**/
	public function begin():Dynamic;
	/**
		Called at the end of session.
		
		The `session` argument can be used in case the hook wants to run final ops,
		such as saving a last checkpoint.
		
		If `session.run()` raises exception other than OutOfRangeError or
		StopIteration then `end()` is not called.
		Note the difference between `end()` and `after_run()` behavior when
		`session.run()` raises OutOfRangeError or StopIteration. In that case
		`end()` is called but `after_run()` is not called.
		
		Args:
		  session: A TensorFlow Session that will be soon closed.
	**/
	public function end(session:Dynamic):Dynamic;
}