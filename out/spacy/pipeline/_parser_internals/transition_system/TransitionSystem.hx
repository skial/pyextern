/* This file is generated, do not edit! */
package spacy.pipeline._parser_internals.transition_system;
@:pythonImport("spacy.pipeline._parser_internals.transition_system", "TransitionSystem") extern class TransitionSystem {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	static public var __pyx_vtable__ : Dynamic;
	/**
		TransitionSystem.__reduce__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		TransitionSystem.add_action(self, int action, label_name)
	**/
	public function add_action(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TransitionSystem.apply_transition(self, StateClass state, name)
	**/
	public function apply_transition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cfg: object
	**/
	public var cfg : Dynamic;
	/**
		freqs: object
	**/
	public var freqs : Dynamic;
	/**
		TransitionSystem.from_bytes(self, bytes_data, exclude=tuple())
	**/
	public function from_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TransitionSystem.from_disk(self, path, **kwargs)
	**/
	public function from_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TransitionSystem.get_class_name(self, int clas)
	**/
	public function get_class_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TransitionSystem.get_oracle_sequence(self, Example example, _debug=False)
	**/
	public function get_oracle_sequence(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TransitionSystem.get_oracle_sequence_from_state(self, StateClass state, gold, _debug=None)
	**/
	public function get_oracle_sequence_from_state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TransitionSystem.init_batch(self, docs)
	**/
	public function init_batch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TransitionSystem.initialize_actions(self, labels_by_action, min_freq=None)
	**/
	public function initialize_actions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TransitionSystem.is_valid(self, StateClass stcls, move_name)
	**/
	public function is_valid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		labels: object
	**/
	public var labels : Dynamic;
	public var n_moves : Dynamic;
	public var neg_key : Dynamic;
	/**
		root_label: 'attr_t'
	**/
	public var root_label : Dynamic;
	/**
		TransitionSystem.to_bytes(self, exclude=tuple())
	**/
	public function to_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TransitionSystem.to_disk(self, path, **kwargs)
	**/
	public function to_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
}