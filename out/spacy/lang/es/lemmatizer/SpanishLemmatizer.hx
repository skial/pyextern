/* This file is generated, do not edit! */
package spacy.lang.es.lemmatizer;
@:pythonImport("spacy.lang.es.lemmatizer", "SpanishLemmatizer") extern class SpanishLemmatizer {
	/**
		Apply the lemmatizer to one document.
		
		doc (Doc): The Doc to process.
		RETURNS (Doc): The processed Doc.
		
		DOCS: https://spacy.io/api/lemmatizer#call
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
		Initialize a Lemmatizer.
		
		vocab (Vocab): The vocab.
		model (Model): A model (not yet implemented).
		name (str): The component name. Defaults to "lemmatizer".
		mode (str): The lemmatizer mode: "lookup", "rule". Defaults to "lookup".
		overwrite (bool): Whether to overwrite existing lemmas. Defaults to
		    `False`.
		scorer (Optional[Callable]): The scoring method. Defaults to
		    Scorer.score_token_attr for the attribute "lemma".
		
		DOCS: https://spacy.io/api/lemmatizer#init
	**/
	@:native("__init__")
	public function ___init__(vocab:Dynamic, model:Dynamic, ?name:Dynamic, ?mode:Dynamic, ?overwrite:Dynamic, ?scorer:Dynamic):Dynamic;
	/**
		Initialize a Lemmatizer.
		
		vocab (Vocab): The vocab.
		model (Model): A model (not yet implemented).
		name (str): The component name. Defaults to "lemmatizer".
		mode (str): The lemmatizer mode: "lookup", "rule". Defaults to "lookup".
		overwrite (bool): Whether to overwrite existing lemmas. Defaults to
		    `False`.
		scorer (Optional[Callable]): The scoring method. Defaults to
		    Scorer.score_token_attr for the attribute "lemma".
		
		DOCS: https://spacy.io/api/lemmatizer#init
	**/
	public function new(vocab:Dynamic, model:Dynamic, ?name:Dynamic, ?mode:Dynamic, ?overwrite:Dynamic, ?scorer:Dynamic):Void;
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
		Check that the lookups are correct for the current mode.
	**/
	public function _validate_tables(?error_message:Dynamic):Dynamic;
	/**
		Load the pipe from a bytestring.
		
		bytes_data (bytes): The serialized pipe.
		exclude (Iterable[str]): String names of serialization fields to exclude.
		RETURNS (Lemmatizer): The loaded Lemmatizer.
		
		DOCS: https://spacy.io/api/lemmatizer#from_bytes
	**/
	public function from_bytes(bytes_data:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Load the pipe from disk. Modifies the object in place and returns it.
		
		path (str / Path): Path to a directory.
		exclude (Iterable[str]): String names of serialization fields to exclude.
		RETURNS (Lemmatizer): The modified Lemmatizer object.
		
		DOCS: https://spacy.io/api/lemmatizer#from_disk
	**/
	public function from_disk(path:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Pipe.get_error_handler(self) -> Callable
		Retrieve the error handler function.
		
		        RETURNS (Callable): The error handler, or if it's not set a default function that just reraises.
		
		        DOCS: https://spacy.io/api/pipe#get_error_handler
		        
	**/
	public function get_error_handler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the lookups configuration settings for a given mode for use
		in Lemmatizer.load_lookups.
		
		mode (str): The lemmatizer mode.
		RETURNS (Tuple[List[str], List[str]]): The required and optional
		    lookup tables for this mode.
	**/
	static public function get_lookups_config(mode:Dynamic):Dynamic;
	public var hide_labels : Dynamic;
	/**
		Initialize the lemmatizer and load in data.
		
		get_examples (Callable[[], Iterable[Example]]): Function that
		    returns a representative sample of gold-standard Example objects.
		nlp (Language): The current nlp object the component is part of.
		lookups (Lookups): The lookups object containing the (optional) tables
		    such as "lemma_rules", "lemma_index", "lemma_exc" and
		    "lemma_lookup". Defaults to None.
	**/
	public function initialize(?get_examples:Dynamic, ?nlp:Dynamic, ?lookups:Dynamic):Dynamic;
	/**
		Check whether the token is a base form that does not need further
		analysis for lemmatization.
		
		token (Token): The token.
		RETURNS (bool): Whether the token is a base form.
		
		DOCS: https://spacy.io/api/lemmatizer#is_base_form
	**/
	public function is_base_form(token:Dynamic):Dynamic;
	public var is_trainable : Dynamic;
	/**
		Optional JSON-serializable data that would be sufficient to recreate
		the label set if provided to the `pipe.initialize()` method.
	**/
	public var label_data : Dynamic;
	public var labels : Dynamic;
	/**
		Lemmatize an adjective.
		
		word (str): The word to lemmatize.
		features (List[str]): The morphological features as a list of Feat=Val
		    pairs.
		index (List[str]): The POS-specific lookup list.
		
		RETURNS (List[str]): The list of lemmas.
	**/
	public function lemmatize_adj(word:Dynamic, features:Dynamic, rule:Dynamic, index:Dynamic):Dynamic;
	/**
		Lemmatize an adverb.
		
		word (str): The word to lemmatize.
		features (List[str]): The morphological features as a list of Feat=Val
		    pairs.
		index (List[str]): The POS-specific lookup list.
		
		RETURNS (List[str]): The list of lemmas.
	**/
	public function lemmatize_adv(word:Dynamic, features:Dynamic, rule:Dynamic, index:Dynamic):Dynamic;
	/**
		Lemmatize a determiner.
		
		word (str): The word to lemmatize.
		features (List[str]): The morphological features as a list of Feat=Val
		    pairs.
		index (List[str]): The POS-specific lookup list.
		
		RETURNS (List[str]): The list of lemmas.
	**/
	public function lemmatize_det(word:Dynamic, features:Dynamic, rule:Dynamic, index:Dynamic):Dynamic;
	/**
		Lemmatize a noun.
		
		word (str): The word to lemmatize.
		features (List[str]): The morphological features as a list of Feat=Val
		    pairs.
		index (List[str]): The POS-specific lookup list.
		
		RETURNS (List[str]): The list of lemmas.
	**/
	public function lemmatize_noun(word:Dynamic, features:Dynamic, rule:Dynamic, index:Dynamic):Dynamic;
	/**
		Lemmatize a numeral.
		
		word (str): The word to lemmatize.
		features (List[str]): The morphological features as a list of Feat=Val
		    pairs.
		index (List[str]): The POS-specific lookup list.
		
		RETURNS (List[str]): The list of lemmas.
	**/
	public function lemmatize_num(word:Dynamic, features:Dynamic, rule:Dynamic, index:Dynamic):Dynamic;
	/**
		Lemmatize a pronoun.
		
		word (str): The word to lemmatize.
		features (List[str]): The morphological features as a list of Feat=Val
		    pairs.
		index (List[str]): The POS-specific lookup list.
		
		RETURNS (List[str]): The list of lemmas.
	**/
	public function lemmatize_pron(word:Dynamic, features:Dynamic, rule:Dynamic, index:Dynamic):Dynamic;
	/**
		Lemmatize a verb.
		
		word (str): The word to lemmatize.
		features (List[str]): The morphological features as a list of Feat=Val
		    pairs.
		index (List[str]): The POS-specific lookup list.
		
		RETURNS (List[str]): The list of lemmas.
	**/
	public function lemmatize_verb(word:Dynamic, features:Dynamic, rule:Dynamic, index:Dynamic):Dynamic;
	public function lemmatize_verb_pron(word:Dynamic, features:Dynamic, rule:Dynamic, index:Dynamic):Dynamic;
	/**
		Lemmatize using a lookup-based approach.
		
		token (Token): The token to lemmatize.
		RETURNS (list): The available lemmas for the string.
		
		DOCS: https://spacy.io/api/lemmatizer#lookup_lemmatize
	**/
	public function lookup_lemmatize(token:Dynamic):Dynamic;
	public var mode : Dynamic;
	/**
		name: str
	**/
	public var name : Dynamic;
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
		Lemmatize using a rule-based approach.
		
		token (Token): The token to lemmatize.
		RETURNS (list): The available lemmas for the string.
		
		DOCS: https://spacy.io/api/lemmatizer#rule_lemmatize
	**/
	public function rule_lemmatize(token:Dynamic):Dynamic;
	/**
		Pipe.score(self, examples: Iterable[Example], **kwargs) -> Dict[str, Union[float, Dict[str, float]]]
		Score a batch of examples.
		
		        examples (Iterable[Example]): The examples to score.
		        RETURNS (Dict[str, Any]): The scores.
		
		        DOCS: https://spacy.io/api/pipe#score
		        
	**/
	public function score(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function select_rule(pos:Dynamic, features:Dynamic):Dynamic;
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
		Serialize the pipe to a bytestring.
		
		exclude (Iterable[str]): String names of serialization fields to exclude.
		RETURNS (bytes): The serialized object.
		
		DOCS: https://spacy.io/api/lemmatizer#to_bytes
	**/
	public function to_bytes(?exclude:Dynamic):Dynamic;
	/**
		Serialize the pipe to disk.
		
		path (str / Path): Path to a directory.
		exclude (Iterable[str]): String names of serialization fields to exclude.
		
		DOCS: https://spacy.io/api/lemmatizer#to_disk
	**/
	public function to_disk(path:Dynamic, ?exclude:Dynamic):Dynamic;
}