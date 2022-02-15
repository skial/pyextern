/* This file is generated, do not edit! */
package spacy.ml.parser_model;
@:pythonImport("spacy.ml.parser_model", "ParserStepModel") extern class ParserStepModel {
	/**
		Apply the function bound to the '+' operator.
	**/
	public function __add__(other:Dynamic):Dynamic;
	/**
		Apply the function bound to the '&' operator.
	**/
	public function __and__(other:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Call the model's `forward` function, returning the output and a
		callback to compute the gradients via backpropagation.
	**/
	public function __call__(X:Dynamic, is_train:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class_getitem__(params:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	/**
		Apply the function bound to the '/' operator.
	**/
	public function __div__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Apply the function bound to the '//' operator.
	**/
	public function __floordiv__(other:Dynamic):Dynamic;
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
		ParserStepModel.__init__(self, docs, layers, *, has_upper, unseen_classes=None, train=True, dropout=0.1)
	**/
	@:native("__init__")
	public function ___init__(docs:Dynamic, layers:Dynamic, has_upper:Dynamic, ?unseen_classes:Dynamic, ?train:Dynamic, ?dropout:Dynamic):Dynamic;
	/**
		ParserStepModel.__init__(self, docs, layers, *, has_upper, unseen_classes=None, train=True, dropout=0.1)
	**/
	public function new(docs:Dynamic, layers:Dynamic, has_upper:Dynamic, ?unseen_classes:Dynamic, ?train:Dynamic, ?dropout:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Apply the function bound to the '<<' operator.
	**/
	public function __lshift__(other:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Apply the function bound to the '@' operator.
	**/
	public function __matmul__(other:Dynamic):Dynamic;
	/**
		Apply the function bound to the '%' operator.
	**/
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Apply the function bound to the '*' operator.
	**/
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply the function bound to the '|' operator.
	**/
	public function __or__(other:Dynamic):Dynamic;
	static public var __orig_bases__ : Dynamic;
	static public var __parameters__ : Dynamic;
	/**
		Apply the function bound to the '**' operator.
	**/
	public function __pow__(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Apply the function bound to the '>>' operator.
	**/
	public function __rshift__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Apply the function bound to the '-' operator.
	**/
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Apply the function bound to the '/' operator.
	**/
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Apply the function bound to the '^' operator.
	**/
	public function __xor__(other:Dynamic):Dynamic;
	public var _attrs : Dynamic;
	static public var _context_operators : Dynamic;
	public var _dims : Dynamic;
	public var _func : Dynamic;
	public var _has_params : Dynamic;
	static public var _is_protocol : Dynamic;
	public var _layers : Dynamic;
	public var _params : Dynamic;
	public var _refs : Dynamic;
	public var _shims : Dynamic;
	/**
		Common method for to_cpu/to_gpu.
	**/
	public function _to_ops(ops:Dynamic):Dynamic;
	/**
		Iterate out layers of the model, breadth-first.
	**/
	public function _walk_bfs():Dynamic;
	/**
		Iterate out layers of the model, depth-first.
	**/
	public function _walk_dfs(?post_order:Dynamic):Dynamic;
	/**
		A dict of the model's attrs. You can write to it to update attrs but
		not reassign it.
	**/
	public var attrs : Dynamic;
	/**
		ParserStepModel.backprop_step(self, token_ids, d_vector, get_d_tokvecs)
	**/
	public function backprop_step(token_ids:Dynamic, d_vector:Dynamic, get_d_tokvecs:Dynamic):Dynamic;
	/**
		Run the model over a batch of data, returning the output and a
		callback to complete the backward pass. A tuple (Y, finish_update),
		where Y is a batch of output data, and finish_update is a callback that
		takes the gradient with respect to the output and an optimizer function,
		and returns the gradient with respect to the input.
	**/
	public function begin_update(X:Dynamic):Dynamic;
	/**
		Check whether the bytes data is compatible with the model. If 'strict',
		the function returns False if the model has an attribute already loaded
		that would be changed.
	**/
	public function can_from_bytes(bytes_data:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Check whether a dictionary is compatible with the model.
		If 'strict', the function returns False if the model has an attribute
		already loaded that would be changed.
	**/
	public function can_from_dict(msg:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Check whether serialized data on disk is compatible with the model.
		If 'strict', the function returns False if the model has an attribute
		already loaded that would be changed.
	**/
	public function can_from_disk(path:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		ParserStepModel.class_is_unseen(self, class_)
	**/
	public function class_is_unseen(class_:Dynamic):Dynamic;
	/**
		ParserStepModel.clear_memory(self)
	**/
	public function clear_memory():Dynamic;
	/**
		Create a copy of the model, its attributes, and its parameters. Any child
		layers will also be deep-copied. The copy will receive a distinct `model.id`
		value.
	**/
	public function copy():Dynamic;
	/**
		Bind arbitrary binary functions to Python operators, for use in any
		`Model` instance. Can (and should) be used as a contextmanager.
		
		EXAMPLE:
		    with Model.define_operators({">>": chain}):
		        model = Relu(512) >> Relu(512) >> Softmax()
	**/
	static public function define_operators(operators:Dynamic):Dynamic;
	/**
		Get the names of registered dimensions (including unset).
	**/
	public var dim_names : Dynamic;
	/**
		ParserStepModel.finish_steps(self, golds)
	**/
	public function finish_steps(golds:Dynamic):Dynamic;
	/**
		Update parameters with current gradients. The optimizer is called
		with each parameter and gradient of the model.
	**/
	public function finish_update(optimizer:Dynamic):Dynamic;
	/**
		Deserialize the model from a bytes representation. Models are usually
		serialized using msgpack, so you should be able to call msgpack.loads()
		on the data and get back a dictionary with the contents.
		
		Serialization should round-trip identically, i.e. the same bytes should
		result from loading and serializing a model.
	**/
	public function from_bytes(bytes_data:Dynamic):Dynamic;
	public function from_dict(msg:Dynamic):Dynamic;
	/**
		Deserialize the model from disk. Most models will serialize to a single
		file, which should just be the bytes contents of model.to_bytes().
	**/
	public function from_disk(path:Dynamic):Dynamic;
	/**
		Retrieve the value of a dimension of the given name.
	**/
	public function get_dim(name:Dynamic):Dynamic;
	/**
		Get a gradient from the model.
	**/
	public function get_grad(name:Dynamic):Dynamic;
	/**
		Get non-zero gradients of the model's parameters, as a dictionary
		keyed by the parameter ID. The values are (weights, gradients) tuples.
	**/
	public function get_gradients():Dynamic;
	/**
		Retrieve a weights parameter by name.
	**/
	public function get_param(name:Dynamic):Dynamic;
	/**
		Retrieve the value of a reference of the given name.
	**/
	public function get_ref(name:Dynamic):Dynamic;
	/**
		ParserStepModel.get_token_ids(self, states)
	**/
	public function get_token_ids(states:Dynamic):Dynamic;
	static public var global_id : Dynamic;
	static public var global_id_lock : Dynamic;
	/**
		Get the names of parameters with registered gradients (including unset).
	**/
	public var grad_names : Dynamic;
	/**
		Check whether the model has a dimension of a given name. If the
		dimension is registered but the value is unset, returns None.
	**/
	public function has_dim(name:Dynamic):Dynamic;
	/**
		Check whether the model has a non-zero gradient for a parameter.
	**/
	public function has_grad(name:Dynamic):Dynamic;
	/**
		Check whether the model has a weights parameter of the given name.
		
		Returns None if the parameter is registered but currently unset.
	**/
	public function has_param(name:Dynamic):Dynamic;
	/**
		Check whether the model has a reference of a given name. If the
		reference is registered but the value is unset, returns None.
	**/
	public function has_ref(name:Dynamic):Dynamic;
	public var id : Dynamic;
	/**
		Increment the gradient of a parameter by a value.
	**/
	public function inc_grad(name:Dynamic, value:Dynamic):Dynamic;
	public var init : Dynamic;
	/**
		Finish initialization of the model, optionally providing a batch of
		example input and output data to perform shape inference.
	**/
	public function initialize(?X:Dynamic, ?Y:Dynamic):Dynamic;
	/**
		A list of child layers of the model. You can append to it to add
		layers but not reassign it.
	**/
	public var layers : Dynamic;
	/**
		ParserStepModel.mark_class_seen(self, class_)
	**/
	public function mark_class_seen(class_:Dynamic):Dynamic;
	/**
		ParserStepModel.mark_class_unseen(self, class_)
	**/
	public function mark_class_unseen(class_:Dynamic):Dynamic;
	/**
		Retrieve the value of a dimension of the given name, or None.
	**/
	public function maybe_get_dim(name:Dynamic):Dynamic;
	/**
		Retrieve a gradient by name, or None.
	**/
	public function maybe_get_grad(name:Dynamic):Dynamic;
	/**
		Retrieve a weights parameter by name, or None.
	**/
	public function maybe_get_param(name:Dynamic):Dynamic;
	/**
		Retrieve the value of a reference if it exists, or None.
	**/
	public function maybe_get_ref(name:Dynamic):Dynamic;
	/**
		ParserStepModel.nO(self)
	**/
	public var nO : Dynamic;
	public var name : Dynamic;
	public var ops : Dynamic;
	/**
		Get the names of registered parameter (including unset).
	**/
	public var param_names : Dynamic;
	/**
		Call the model's `forward` function with `is_train=False`, and return
		only the output, instead of the `(output, callback)` tuple.
	**/
	public function predict(X:Dynamic):Dynamic;
	/**
		Get the names of registered node references (including unset).
	**/
	public var ref_names : Dynamic;
	/**
		Remove a node from all layers lists, and then update references.
		References that no longer point to a node within the tree will be set
		to `None`. For instance, let's say a node has its grandchild as a reference.
		If the child is removed, the grandchild reference will be left dangling,
		so will be set to None.
	**/
	public function remove_node(node:Dynamic):Dynamic;
	public function replace_callbacks(forward:Dynamic, ?init:Dynamic):Dynamic;
	/**
		Replace a node anywhere it occurs within the model. Returns a boolean
		indicating whether the replacement was made.
	**/
	public function replace_node(old:Dynamic, _new:Dynamic):Dynamic;
	/**
		Set a value for a dimension.
	**/
	public function set_dim(name:Dynamic, value:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Set a gradient value for the model.
	**/
	public function set_grad(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set a weights parameter's value.
	**/
	public function set_param(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set a value for a reference.
	**/
	public function set_ref(name:Dynamic, value:Dynamic):Dynamic;
	public var shims : Dynamic;
	/**
		Serialize the model to a bytes representation. Models are usually
		serialized using msgpack, so you should be able to call msgpack.loads()
		on the data and get back a dictionary with the contents.
		
		Serialization should round-trip identically, i.e. the same bytes should
		result from loading and serializing a model.
	**/
	public function to_bytes():Dynamic;
	/**
		Transfer the model to CPU.
	**/
	public function to_cpu():Dynamic;
	/**
		Serialize the model to a dict representation.
		
		Serialization should round-trip identically, i.e. the same dict should
		result from loading and serializing a model.
	**/
	public function to_dict():Dynamic;
	/**
		Serialize the model to disk. Most models will serialize to a single
		file, which should just be the bytes contents of model.to_bytes().
	**/
	public function to_disk(path:Dynamic):Dynamic;
	/**
		Transfer the model to a given GPU device.
	**/
	public function to_gpu(gpu_id:Dynamic):Dynamic;
	/**
		Context manager to temporarily set the model's parameters to
		specified values. The params are a dictionary keyed by model IDs, whose
		values are arrays of weight values.
	**/
	public function use_params(params:Dynamic):Dynamic;
	/**
		Iterate out layers of the model.
		
		Nodes are returned in breadth-first order by default. Other possible
		orders are "dfs_pre" (depth-first search in preorder) and "dfs_post"
		(depth-first search in postorder).
	**/
	public function walk(?order:Dynamic):Dynamic;
}