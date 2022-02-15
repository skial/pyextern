/* This file is generated, do not edit! */
package spacy.pipeline._parser_internals.stateclass;
@:pythonImport("spacy.pipeline._parser_internals.stateclass", "StateClass") extern class StateClass {
	/**
		StateClass.B(self, int i)
	**/
	public function B(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.B_(self, int i)
	**/
	public function B_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.E(self, int i)
	**/
	public function E(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.E_(self, int i)
	**/
	public function E_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.H(self, int child)
	**/
	public function H(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.H_(self, int i)
	**/
	public function H_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.L(self, int head, int idx)
	**/
	public function L(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.L_(self, int i, int idx)
	**/
	public function L_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.R(self, int head, int idx)
	**/
	public function R(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.R_(self, int i, int idx)
	**/
	public function R_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.S(self, int i)
	**/
	public function S(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.S_(self, int i)
	**/
	public function S_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		StateClass.__reduce_cython__(self)
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
		StateClass.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public var _b_i : Dynamic;
	/**
		StateClass.add_arc(self, int head, int child, int label)
	**/
	public function add_arc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var arcs : Dynamic;
	/**
		StateClass.at_break(self)
	**/
	public function at_break(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.buffer_length(self)
	**/
	public function buffer_length(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.clone(self, StateClass src)
	**/
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.close_ent(self)
	**/
	public function close_ent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.copy(self)
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.del_arc(self, int head, int child)
	**/
	public function del_arc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var doc : Dynamic;
	/**
		StateClass.empty(self)
	**/
	public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.entity_is_open(self)
	**/
	public function entity_is_open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.eol(self)
	**/
	public function eol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.has_head(self, int i)
	**/
	public function has_head(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.is_final(self)
	**/
	public function is_final(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var length : Dynamic;
	/**
		StateClass.n_L(self, int i)
	**/
	public function n_L(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.n_R(self, int i)
	**/
	public function n_R(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.open_ent(self, attr_t label)
	**/
	public function open_ent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.pop(self)
	**/
	public function pop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.print_state(self)
	**/
	public function print_state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StateClass.push(self)
	**/
	public function push(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var queue : Dynamic;
	public var stack : Dynamic;
	/**
		StateClass.stack_depth(self)
	**/
	public function stack_depth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var token_vector_lenth : Dynamic;
	/**
		StateClass.unshift(self)
	**/
	public function unshift(args:haxe.extern.Rest<Dynamic>):Dynamic;
}