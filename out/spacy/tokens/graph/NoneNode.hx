/* This file is generated, do not edit! */
package spacy.tokens.graph;
@:pythonImport("spacy.tokens.graph", "NoneNode") extern class NoneNode {
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
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
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		NoneNode.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NoneNode.__reduce_cython__(self)
	**/
	public function __reduce_cython__():Dynamic;
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
		NoneNode.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NoneNode.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate_cython__(__pyx_state:Dynamic):Dynamic;
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
		The Doc object that the graph refers to.
	**/
	public var doc : Dynamic;
	public var graph : Dynamic;
	/**
		NoneNode.head(self, i=None, label=None)
	**/
	public function head(i:Dynamic, label:Dynamic):Dynamic;
	/**
		Node.headed(self, i=None, label=None) -> Edge
		Find the first matching edge headed by this node.
		        If no matching edge can be found, the graph's NoneEdge is returned.
		        
	**/
	public function headed(i:Dynamic, label:Dynamic):Dynamic;
	/**
		Node.headeds(self, label=None) -> List[Edge]
		Find all matching edges headed by this node.
	**/
	public function headeds(label:Dynamic):Dynamic;
	/**
		Node.heads(self, label=None) -> List['Node']
		Find all matching heads of this node.
	**/
	public function heads(label:Dynamic):Dynamic;
	public var i : Dynamic;
	/**
		Whether the node is a special value, indicating 'none'.
		
		The NoneNode type is returned by the Graph, Edge and Node objects when
		there is no match to a query. It has the same API as Node, but it always
		returns NoneNode, NoneEdge or empty lists for its queries.
	**/
	public var is_none : Dynamic;
	/**
		Node.sibling(self, i=None, label=None)
		Get the first matching sibling node. Two nodes are siblings if they
		        are both tails of the same head.
		        If no matching node can be found, the graph's NoneNode is returned. 
		        
	**/
	public function sibling(i:Dynamic, label:Dynamic):Dynamic;
	/**
		Node.siblings(self, label=None) -> List['Node']
		Find all maching siblings of this node. Two nodes are siblings if they
		        are tails of the same head.
		        
	**/
	public function siblings(label:Dynamic):Dynamic;
	/**
		NoneNode.tail(self, i=None, label=None)
	**/
	public function tail(i:Dynamic, label:Dynamic):Dynamic;
	/**
		Node.tailed(self, i=None, label=None) -> Edge
		Find the first matching edge tailed by this node.
		        If no matching edge can be found, the graph's NoneEdge is returned.
		        
	**/
	public function tailed(i:Dynamic, label:Dynamic):Dynamic;
	/**
		Node.taileds(self, label=None) -> List['Edge']
		Find all matching edges headed by this node.
	**/
	public function taileds(label:Dynamic):Dynamic;
	/**
		Node.tails(self, label=None) -> List['Node']
		Find all matching tails of this node.
	**/
	public function tails(label:Dynamic):Dynamic;
	/**
		A tuple of Token objects that make up the node.
	**/
	public var tokens : Dynamic;
	/**
		NoneNode.walk_heads(self)
	**/
	public function walk_heads():Dynamic;
	/**
		NoneNode.walk_tails(self)
	**/
	public function walk_tails():Dynamic;
}