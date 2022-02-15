/* This file is generated, do not edit! */
package spacy.tokens.span_group;
@:pythonImport("spacy.tokens.span_group", "SpanGroup") extern class SpanGroup {
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
		Get a span from the group.
		
		i (int): The item index.
		RETURNS (Span): The span at the given index.
		
		DOCS: https://spacy.io/api/spangroup#getitem
	**/
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create a SpanGroup.
		
		doc (Doc): The reference Doc object.
		name (str): The group name.
		attrs (Dict[str, Any]): Optional JSON-serializable attributes to attach.
		spans (Iterable[Span]): The spans to add to the group.
		
		DOCS: https://spacy.io/api/spangroup#init
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a SpanGroup.
		
		doc (Doc): The reference Doc object.
		name (str): The group name.
		attrs (Dict[str, Any]): Optional JSON-serializable attributes to attach.
		spans (Iterable[Span]): The spans to add to the group.
		
		DOCS: https://spacy.io/api/spangroup#init
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
		RETURNS (int): The number of spans in the group.
		
		DOCS: https://spacy.io/api/spangroup#len
	**/
	public function __len__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		SpanGroup.__reduce_cython__(self)
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
		SpanGroup.__setstate_cython__(self, __pyx_state)
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
		_doc_ref: object
	**/
	public var _doc_ref : Dynamic;
	/**
		SpanGroup.append(self, Span span)
		Add a span to the group. The span must refer to the same Doc
		        object as the span group.
		
		        span (Span): The span to append.
		
		        DOCS: https://spacy.io/api/spangroup#append
		        
	**/
	public function append(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		attrs: dict
	**/
	public var attrs : Dynamic;
	/**
		RETURNS (Doc): The reference document.
		
		DOCS: https://spacy.io/api/spangroup#doc
	**/
	public var doc : Dynamic;
	/**
		SpanGroup.extend(self, spans)
		Add multiple spans to the group. All spans must refer to the same
		        Doc object as the span group.
		
		        spans (Iterable[Span]): The spans to add.
		
		        DOCS: https://spacy.io/api/spangroup#extend
		        
	**/
	public function extend(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SpanGroup.from_bytes(self, bytes_data)
		Deserialize the SpanGroup's contents from a byte string.
		
		        bytes_data (bytes): The span group to load.
		        RETURNS (SpanGroup): The deserialized span group.
		
		        DOCS: https://spacy.io/api/spangroup#from_bytes
		        
	**/
	public function from_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RETURNS (bool): Whether the group contains overlapping spans.
		
		DOCS: https://spacy.io/api/spangroup#has_overlap
	**/
	public var has_overlap : Dynamic;
	/**
		name: str
	**/
	public var name : Dynamic;
	/**
		SpanGroup.to_bytes(self)
		Serialize the SpanGroup's contents to a byte string.
		
		        RETURNS (bytes): The serialized span group.
		
		        DOCS: https://spacy.io/api/spangroup#to_bytes
		        
	**/
	public function to_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
}