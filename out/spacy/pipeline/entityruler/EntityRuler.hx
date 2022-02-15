/* This file is generated, do not edit! */
package spacy.pipeline.entityruler;
@:pythonImport("spacy.pipeline.entityruler", "EntityRuler") extern class EntityRuler {
	/**
		Find matches in document and add them as entities.
		
		doc (Doc): The Doc object in the pipeline.
		RETURNS (Doc): The Doc with added entities, if available.
		
		DOCS: https://spacy.io/api/entityruler#call
	**/
	public function __call__(doc:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Whether a label is present in the patterns.
	**/
	public function __contains__(label:Dynamic):Dynamic;
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
		Initialize the entity ruler. If patterns are supplied here, they
		need to be a list of dictionaries with a `"label"` and `"pattern"`
		key. A pattern can either be a token pattern (list) or a phrase pattern
		(string). For example: `{'label': 'ORG', 'pattern': 'Apple'}`.
		
		nlp (Language): The shared nlp object to pass the vocab to the matchers
		    and process phrase patterns.
		name (str): Instance name of the current pipeline component. Typically
		    passed in automatically from the factory when the component is
		    added. Used to disable the current entity ruler while creating
		    phrase patterns with the nlp object.
		phrase_matcher_attr (int / str): Token attribute to match on, passed
		    to the internal PhraseMatcher as `attr`
		validate (bool): Whether patterns should be validated, passed to
		    Matcher and PhraseMatcher as `validate`
		patterns (iterable): Optional patterns to load in.
		overwrite_ents (bool): If existing entities are present, e.g. entities
		    added by the model, overwrite them by matches if necessary.
		ent_id_sep (str): Separator used internally for entity IDs.
		scorer (Optional[Callable]): The scoring method. Defaults to
		    spacy.scorer.get_ner_prf.
		
		DOCS: https://spacy.io/api/entityruler#init
	**/
	@:native("__init__")
	public function ___init__(nlp:Dynamic, ?name:Dynamic, ?phrase_matcher_attr:Dynamic, ?validate:Dynamic, ?overwrite_ents:Dynamic, ?ent_id_sep:Dynamic, ?patterns:Dynamic, ?scorer:Dynamic):Dynamic;
	/**
		Initialize the entity ruler. If patterns are supplied here, they
		need to be a list of dictionaries with a `"label"` and `"pattern"`
		key. A pattern can either be a token pattern (list) or a phrase pattern
		(string). For example: `{'label': 'ORG', 'pattern': 'Apple'}`.
		
		nlp (Language): The shared nlp object to pass the vocab to the matchers
		    and process phrase patterns.
		name (str): Instance name of the current pipeline component. Typically
		    passed in automatically from the factory when the component is
		    added. Used to disable the current entity ruler while creating
		    phrase patterns with the nlp object.
		phrase_matcher_attr (int / str): Token attribute to match on, passed
		    to the internal PhraseMatcher as `attr`
		validate (bool): Whether patterns should be validated, passed to
		    Matcher and PhraseMatcher as `validate`
		patterns (iterable): Optional patterns to load in.
		overwrite_ents (bool): If existing entities are present, e.g. entities
		    added by the model, overwrite them by matches if necessary.
		ent_id_sep (str): Separator used internally for entity IDs.
		scorer (Optional[Callable]): The scoring method. Defaults to
		    spacy.scorer.get_ner_prf.
		
		DOCS: https://spacy.io/api/entityruler#init
	**/
	public function new(nlp:Dynamic, ?name:Dynamic, ?phrase_matcher_attr:Dynamic, ?validate:Dynamic, ?overwrite_ents:Dynamic, ?ent_id_sep:Dynamic, ?patterns:Dynamic, ?scorer:Dynamic):Void;
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
		The number of all patterns added to the entity ruler.
	**/
	public function __len__():Dynamic;
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
		Join Entity label with ent_id if the pattern has an `id` attribute
		If ent_id is not a string, the label is returned as is.
		
		label (str): The label to set for ent.label_
		ent_id (str): The label
		RETURNS (str): The ent_label joined with configured `ent_id_sep`
	**/
	public function _create_label(label:Dynamic, ent_id:Dynamic):Dynamic;
	/**
		Pipe._require_labels(self) -> None
		Raise an error if this component has no labels defined.
	**/
	public function _require_labels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Raise a warning if this component has no patterns defined.
	**/
	public function _require_patterns():Dynamic;
	/**
		Split Entity label into ent_label and ent_id if it contains self.ent_id_sep
		
		label (str): The value of label in a pattern entry
		RETURNS (tuple): ent_label, ent_id
	**/
	public function _split_label(label:Dynamic):Dynamic;
	/**
		Add patterns to the entity ruler. A pattern can either be a token
		pattern (list of dicts) or a phrase pattern (string). For example:
		{'label': 'ORG', 'pattern': 'Apple'}
		{'label': 'GPE', 'pattern': [{'lower': 'san'}, {'lower': 'francisco'}]}
		
		patterns (list): The patterns to add.
		
		DOCS: https://spacy.io/api/entityruler#add_patterns
	**/
	public function add_patterns(patterns:Dynamic):Dynamic;
	/**
		Reset all patterns.
	**/
	public function clear():Dynamic;
	/**
		All entity ids present in the match patterns `id` properties
		
		RETURNS (set): The string entity ids.
		
		DOCS: https://spacy.io/api/entityruler#ent_ids
	**/
	public var ent_ids : Dynamic;
	/**
		Load the entity ruler from a bytestring.
		
		patterns_bytes (bytes): The bytestring to load.
		RETURNS (EntityRuler): The loaded entity ruler.
		
		DOCS: https://spacy.io/api/entityruler#from_bytes
	**/
	public function from_bytes(patterns_bytes:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Load the entity ruler from a file. Expects a file containing
		newline-delimited JSON (JSONL) with one entry per line.
		
		path (str / Path): The JSONL file to load.
		RETURNS (EntityRuler): The loaded entity ruler.
		
		DOCS: https://spacy.io/api/entityruler#from_disk
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
		Initialize the pipe for training.
		
		get_examples (Callable[[], Iterable[Example]]): Function that
		    returns a representative sample of gold-standard Example objects.
		nlp (Language): The current nlp object the component is part of.
		patterns Optional[Iterable[PatternType]]: The list of patterns.
		
		DOCS: https://spacy.io/api/entityruler#initialize
	**/
	public function initialize(get_examples:Dynamic, ?nlp:Dynamic, ?patterns:Dynamic):Dynamic;
	public var is_trainable : Dynamic;
	/**
		Optional JSON-serializable data that would be sufficient to recreate
		the label set if provided to the `pipe.initialize()` method.
	**/
	public var label_data : Dynamic;
	/**
		All labels present in the match patterns.
		
		RETURNS (set): The string labels.
		
		DOCS: https://spacy.io/api/entityruler#labels
	**/
	public var labels : Dynamic;
	public function match(doc:Dynamic):Dynamic;
	/**
		name: str
	**/
	public var name : Dynamic;
	/**
		Get all patterns that were added to the entity ruler.
		
		RETURNS (list): The original patterns, one dictionary per pattern.
		
		DOCS: https://spacy.io/api/entityruler#patterns
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
		Remove a pattern by its ent_id if a pattern with this ent_id was added before
		
		ent_id (str): id of the pattern to be removed
		RETURNS: None
		DOCS: https://spacy.io/api/entityruler#remove
	**/
	public function remove(ent_id:Dynamic):Dynamic;
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
		Serialize the entity ruler patterns to a bytestring.
		
		RETURNS (bytes): The serialized patterns.
		
		DOCS: https://spacy.io/api/entityruler#to_bytes
	**/
	public function to_bytes(?exclude:Dynamic):Dynamic;
	/**
		Save the entity ruler patterns to a directory. The patterns will be
		saved as newline-delimited JSON (JSONL).
		
		path (str / Path): The JSONL file to save.
		
		DOCS: https://spacy.io/api/entityruler#to_disk
	**/
	public function to_disk(path:Dynamic, ?exclude:Dynamic):Dynamic;
}