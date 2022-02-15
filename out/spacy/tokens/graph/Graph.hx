/* This file is generated, do not edit! */
package spacy.tokens.graph;
@:pythonImport("spacy.tokens.graph", "Graph") extern class Graph {
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
		Create a Graph object.
		
		doc (Doc): The Doc object the graph will refer to.
		name (str): A string name to help identify the graph. Defaults to "".
		nodes (List[Tuple[int]]): A list of token-index tuples to add to the graph
		    as nodes. Defaults to [].
		edges (List[Tuple[int, int]]): A list of edges between the provided nodes.
		    Each edge should be a (head, tail) tuple, where `head` and `tail`
		    are integers pointing into the `nodes` list. Defaults to [].
		labels (Optional[List[str]]): A list of labels for the provided edges.
		    If None, all of the edges specified by the edges argument will have
		    be labelled with the empty string (""). If `labels` is not `None`,
		    it must have the same length as the `edges` argument.
		weights (Optional[List[float]]): A list of weights for the provided edges.
		    If None, all of the edges specified by the edges argument will 
		    have the weight 0.0. If `weights` is not `None`, it must have the
		    same length as the `edges` argument.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a Graph object.
		
		doc (Doc): The Doc object the graph will refer to.
		name (str): A string name to help identify the graph. Defaults to "".
		nodes (List[Tuple[int]]): A list of token-index tuples to add to the graph
		    as nodes. Defaults to [].
		edges (List[Tuple[int, int]]): A list of edges between the provided nodes.
		    Each edge should be a (head, tail) tuple, where `head` and `tail`
		    are integers pointing into the `nodes` list. Defaults to [].
		labels (Optional[List[str]]): A list of labels for the provided edges.
		    If None, all of the edges specified by the edges argument will have
		    be labelled with the empty string (""). If `labels` is not `None`,
		    it must have the same length as the `edges` argument.
		weights (Optional[List[float]]): A list of weights for the provided edges.
		    If None, all of the edges specified by the edges argument will 
		    have the weight 0.0. If `weights` is not `None`, it must have the
		    same length as the `edges` argument.
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
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
		Graph.__reduce_cython__(self)
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
		Graph.__setstate_cython__(self, __pyx_state)
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
	/**
		Graph.add_edge(self, head, tail, *, label='', weight=None) -> Edge
		Add an edge to the graph, connecting two groups of tokens.
		       
		        If there is already an edge for the (head, tail, label) triple, it will
		        be returned, and no new edge will be created. The weight of the edge
		        will be updated if a weight is specified.
		        
	**/
	public function add_edge(head:Dynamic, tail:Dynamic, label:Dynamic, weight:Dynamic):Dynamic;
	/**
		Graph.add_node(self, indices) -> Node
		Add a node to the graph and return it. Nodes refer to ordered sets
		        of token indices.
		        
		        This method is idempotent: if there is already a node for the given
		        indices, it is returned without a new node being created.
		        
	**/
	public function add_node(indices:Dynamic):Dynamic;
	/**
		The Doc object the graph refers to.
	**/
	public var doc : Dynamic;
	/**
		Iterate over the edges in the graph.
	**/
	public var edges : Dynamic;
	/**
		Graph.get_edge(self, head, tail, *, label='') -> Edge
		Look up an edge in the graph. If the graph has no matching edge,
		        the NoneEdge object is returned.
		        
	**/
	public function get_edge(head:Dynamic, tail:Dynamic, label:Dynamic):Dynamic;
	/**
		Graph.get_node(self, indices) -> Node
		Get a node from the graph, or the NoneNode if there is no node for
		        the given indices.
		        
	**/
	public function get_node(indices:Dynamic):Dynamic;
	/**
		Graph.has_edge(self, head, tail, label) -> bool
		Check whether a (head, tail, label) triple is an edge in the graph.
	**/
	public function has_edge(head:Dynamic, tail:Dynamic, label:Dynamic):Dynamic;
	/**
		Graph.has_node(self, tuple indices) -> bool
		Check whether the graph has a node for the given indices.
	**/
	public function has_node(indices:Dynamic):Dynamic;
	/**
		name: str
	**/
	public var name : Dynamic;
	/**
		Iterate over the nodes in the graph.
	**/
	public var nodes : Dynamic;
}