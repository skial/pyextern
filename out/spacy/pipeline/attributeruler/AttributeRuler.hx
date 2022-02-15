/* This file is generated, do not edit! */
package spacy.pipeline.attributeruler;
@:pythonImport("spacy.pipeline.attributeruler", "AttributeRuler") extern class AttributeRuler {
	/**
		Apply the AttributeRuler to a Doc and set all attribute exceptions.
		
		doc (Doc): The document to process.
		RETURNS (Doc): The processed Doc.
		
		DOCS: https://spacy.io/api/attributeruler#call
	**/
	public function __call__(doc:Dynamic):Dynamic;
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
		Create the AttributeRuler. After creation, you can add patterns
		with the `.initialize()` or `.add_patterns()` methods, or load patterns
		with `.from_bytes()` or `.from_disk()`. Loading patterns will remove
		any patterns you've added previously.
		
		vocab (Vocab): The vocab.
		name (str): The pipe name. Defaults to "attribute_ruler".
		scorer (Optional[Callable]): The scoring method. Defaults to
		    Scorer.score_token_attr for the attributes "tag", "pos", "morph" and
		    "lemma" and Scorer.score_token_attr_per_feat for the attribute
		    "morph".
		
		RETURNS (AttributeRuler): The AttributeRuler component.
		
		DOCS: https://spacy.io/api/attributeruler#init
	**/
	@:native("__init__")
	public function ___init__(vocab:Dynamic, ?name:Dynamic, ?validate:Dynamic, ?scorer:Dynamic):Dynamic;
	/**
		Create the AttributeRuler. After creation, you can add patterns
		with the `.initialize()` or `.add_patterns()` methods, or load patterns
		with `.from_bytes()` or `.from_disk()`. Loading patterns will remove
		any patterns you've added previously.
		
		vocab (Vocab): The vocab.
		name (str): The pipe name. Defaults to "attribute_ruler".
		scorer (Optional[Callable]): The scoring method. Defaults to
		    Scorer.score_token_attr for the attributes "tag", "pos", "morph" and
		    "lemma" and Scorer.score_token_attr_per_feat for the attribute
		    "morph".
		
		RETURNS (AttributeRuler): The AttributeRuler component.
		
		DOCS: https://spacy.io/api/attributeruler#init
	**/
	public function new(vocab:Dynamic, ?name:Dynamic, ?validate:Dynamic, ?scorer:Dynamic):Void;
	/**
		Pipe.__init_subclass__(type cls, **kwargs)
		Raise a warning if an inheriting class implements 'begin_training'
		         (from v2) instead of the new 'initialize' method (from v3)
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
		Pipe.__reduce_cython__(self)
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
		Pipe.__setstate_cython__(self, __pyx_state)
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Pipe._require_labels(self) -> None
		Raise an error if this component has no labels defined.
	**/
	public function _require_labels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Add Matcher patterns for tokens that should be modified with the
		provided attributes. The token at the specified index within the
		matched span will be assigned the attributes.
		
		patterns (Iterable[List[Dict]]): A list of Matcher patterns.
		attrs (Dict): The attributes to assign to the target token in the
		    matched span.
		index (int): The index of the token in the matched span to modify. May
		    be negative to index from the end of the span. Defaults to 0.
		
		DOCS: https://spacy.io/api/attributeruler#add
	**/
	public function add(patterns:Dynamic, attrs:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Add patterns from a list of pattern dicts with the keys as the
		arguments to AttributeRuler.add.
		patterns (Iterable[dict]): A list of pattern dicts with the keys
		    as the arguments to AttributeRuler.add (patterns/attrs/index) to
		    add as patterns.
		
		DOCS: https://spacy.io/api/attributeruler#add_patterns
	**/
	public function add_patterns(patterns:Dynamic):Dynamic;
	/**
		Reset all patterns.
	**/
	public function clear():Dynamic;
	/**
		Load the AttributeRuler from a bytestring.
		
		bytes_data (bytes): The data to load.
		exclude (Iterable[str]): String names of serialization fields to exclude.
		returns (AttributeRuler): The loaded object.
		
		DOCS: https://spacy.io/api/attributeruler#from_bytes
	**/
	public function from_bytes(bytes_data:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Load the AttributeRuler from disk.
		
		path (Union[Path, str]): A path to a directory.
		exclude (Iterable[str]): String names of serialization fields to exclude.
		RETURNS (AttributeRuler): The loaded object.
		
		DOCS: https://spacy.io/api/attributeruler#from_disk
	**/
	public function from_disk(path:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Pipe.get_error_handler(self) -> Callable
		Retrieve the error handler function.
		
		        RETURNS (Callable): The error handler, or if it's not set a default function that just reraises.
		
		        DOCS: https://spacy.io/api/pipe#get_error_handler
		        
	**/
	public function get_error_handler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var hide_labels : Dynamic;
	/**
		Initialize the attribute ruler by adding zero or more patterns.
		
		Rules can be specified as a sequence of dicts using the `patterns`
		keyword argument. You can also provide rules using the "tag map" or
		"morph rules" formats supported by spaCy prior to v3.
	**/
	public function initialize(get_examples:Dynamic, ?nlp:Dynamic, ?patterns:Dynamic, ?tag_map:Dynamic, ?morph_rules:Dynamic):Dynamic;
	public var is_trainable : Dynamic;
	/**
		Optional JSON-serializable data that would be sufficient to recreate
		the label set if provided to the `pipe.initialize()` method.
	**/
	public var label_data : Dynamic;
	public var labels : Dynamic;
	/**
		Load attribute ruler patterns from morph rules.
		
		morph_rules (dict): The morph rules that map token text and
		    fine-grained tags to coarse-grained tags, lemmas and morphological
		    features.
		
		DOCS: https://spacy.io/api/attributeruler#load_from_morph_rules
	**/
	public function load_from_morph_rules(morph_rules:Dynamic):Dynamic;
	/**
		Load attribute ruler patterns from a tag map.
		
		tag_map (dict): The tag map that maps fine-grained tags to
		    coarse-grained tags and morphological features.
		
		DOCS: https://spacy.io/api/attributeruler#load_from_morph_rules
	**/
	public function load_from_tag_map(tag_map:Dynamic):Dynamic;
	public function match(doc:Dynamic):Dynamic;
	/**
		name: str
	**/
	public var name : Dynamic;
	/**
		All the added patterns.
	**/
	public var patterns : Dynamic;
	/**
		Pipe.pipe(self, stream: Iterable[Doc], *, batch_size: int = 128) -> Iterator[Doc]
		Apply the pipe to a stream of documents. This usually happens under
		        the hood when the nlp object is called on a text and all components are
		        applied to the Doc.
		
		        stream (Iterable[Doc]): A stream of documents.
		        batch_size (int): The number of documents to buffer.
		        YIELDS (Doc): Processed documents in order.
		
		        DOCS: https://spacy.io/api/pipe#pipe
		        
	**/
	public function pipe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pipe.score(self, examples: Iterable[Example], **kwargs) -> Dict[str, Union[float, Dict[str, float]]]
		Score a batch of examples.
		
		        examples (Iterable[Example]): The examples to score.
		        RETURNS (Dict[str, Any]): The scores.
		
		        DOCS: https://spacy.io/api/pipe#score
		        
	**/
	public function score(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Modify the document in place
	**/
	public function set_annotations(doc:Dynamic, matches:Dynamic):Dynamic;
	/**
		Pipe.set_error_handler(self, error_handler: Callable) -> None
		Set an error handler function.
		
		        error_handler (Callable[[str, Callable[[Doc], Doc], List[Doc], Exception], None]):
		            Function that deals with a failing batch of documents. This callable function should take in
		            the component's name, the component itself, the offending batch of documents, and the exception
		            that was thrown.
		
		        DOCS: https://spacy.io/api/pipe#set_error_handler
		        
	**/
	public function set_error_handler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Serialize the AttributeRuler to a bytestring.
		
		exclude (Iterable[str]): String names of serialization fields to exclude.
		RETURNS (bytes): The serialized object.
		
		DOCS: https://spacy.io/api/attributeruler#to_bytes
	**/
	public function to_bytes(?exclude:Dynamic):Dynamic;
	/**
		Serialize the AttributeRuler to disk.
		
		path (Union[Path, str]): A path to a directory.
		exclude (Iterable[str]): String names of serialization fields to exclude.
		
		DOCS: https://spacy.io/api/attributeruler#to_disk
	**/
	public function to_disk(path:Dynamic, ?exclude:Dynamic):Dynamic;
}