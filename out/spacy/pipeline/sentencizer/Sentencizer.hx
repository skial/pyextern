/* This file is generated, do not edit! */
package spacy.pipeline.sentencizer;
@:pythonImport("spacy.pipeline.sentencizer", "Sentencizer") extern class Sentencizer {
	/**
		Sentencizer.__call__(self, doc)
		Apply the sentencizer to a Doc and set Token.is_sent_start.
		
		        doc (Doc): The document to process.
		        RETURNS (Doc): The processed Doc.
		
		        DOCS: https://spacy.io/api/sentencizer#call
		        
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
		Sentencizer.__init__(self, name='sentencizer', *, punct_chars=None, overwrite=BACKWARD_OVERWRITE, scorer=senter_score)
		Initialize the sentencizer.
		
		        punct_chars (list): Punctuation characters to split on. Will be
		            serialized with the nlp object.
		        scorer (Optional[Callable]): The scoring method. Defaults to
		            Scorer.score_spans for the attribute "sents".
		
		        DOCS: https://spacy.io/api/sentencizer#init
		        
	**/
	@:native("__init__")
	public function ___init__(?name:Dynamic, ?punct_chars:Dynamic, ?overwrite:Dynamic, ?scorer:Dynamic):Dynamic;
	/**
		Sentencizer.__init__(self, name='sentencizer', *, punct_chars=None, overwrite=BACKWARD_OVERWRITE, scorer=senter_score)
		Initialize the sentencizer.
		
		        punct_chars (list): Punctuation characters to split on. Will be
		            serialized with the nlp object.
		        scorer (Optional[Callable]): The scoring method. Defaults to
		            Scorer.score_spans for the attribute "sents".
		
		        DOCS: https://spacy.io/api/sentencizer#init
		        
	**/
	public function new(?name:Dynamic, ?punct_chars:Dynamic, ?overwrite:Dynamic, ?scorer:Dynamic):Void;
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
	static public var default_punct_chars : Dynamic;
	/**
		Sentencizer.from_bytes(self, bytes_data, *, exclude=tuple())
		Load the sentencizer from a bytestring.
		
		        bytes_data (bytes): The data to load.
		        returns (Sentencizer): The loaded object.
		
		        DOCS: https://spacy.io/api/sentencizer#from_bytes
		        
	**/
	public function from_bytes(bytes_data:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Sentencizer.from_disk(self, path, *, exclude=tuple())
		Load the sentencizer from disk.
		
		        DOCS: https://spacy.io/api/sentencizer#from_disk
		        
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
		Pipe.initialize(self, get_examples: Callable[[], Iterable[Example]], *, nlp: Language = None)
		Initialize the pipe. For non-trainable components, this method
		        is optional. For trainable components, which should inherit
		        from the subclass TrainablePipe, the provided data examples
		        should be used to ensure that the internal model is initialized
		        properly and all input/output dimensions throughout the network are
		        inferred.
		
		        get_examples (Callable[[], Iterable[Example]]): Function that
		            returns a representative sample of gold-standard Example objects.
		        nlp (Language): The current nlp object the component is part of.
		
		        DOCS: https://spacy.io/api/pipe#initialize
		        
	**/
	public function initialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var is_trainable : Dynamic;
	/**
		Optional JSON-serializable data that would be sufficient to recreate
		the label set if provided to the `pipe.initialize()` method.
	**/
	public var label_data : Dynamic;
	public var labels : Dynamic;
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
		Sentencizer.predict(self, docs)
		Apply the pipe to a batch of docs, without modifying them.
		
		        docs (Iterable[Doc]): The documents to predict.
		        RETURNS: The predictions for each document.
		        
	**/
	public function predict(docs:Dynamic):Dynamic;
	/**
		Pipe.score(self, examples: Iterable[Example], **kwargs) -> Dict[str, Union[float, Dict[str, float]]]
		Score a batch of examples.
		
		        examples (Iterable[Example]): The examples to score.
		        RETURNS (Dict[str, Any]): The scores.
		
		        DOCS: https://spacy.io/api/pipe#score
		        
	**/
	public function score(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Sentencizer.set_annotations(self, docs, batch_tag_ids)
		Modify a batch of documents, using pre-computed scores.
		
		        docs (Iterable[Doc]): The documents to modify.
		        scores: The tag IDs produced by Sentencizer.predict.
		        
	**/
	public function set_annotations(docs:Dynamic, batch_tag_ids:Dynamic):Dynamic;
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
		Sentencizer.to_bytes(self, *, exclude=tuple())
		Serialize the sentencizer to a bytestring.
		
		        RETURNS (bytes): The serialized object.
		
		        DOCS: https://spacy.io/api/sentencizer#to_bytes
		        
	**/
	public function to_bytes(?exclude:Dynamic):Dynamic;
	/**
		Sentencizer.to_disk(self, path, *, exclude=tuple())
		Serialize the sentencizer to disk.
		
		        DOCS: https://spacy.io/api/sentencizer#to_disk
		        
	**/
	public function to_disk(path:Dynamic, ?exclude:Dynamic):Dynamic;
}