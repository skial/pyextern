/* This file is generated, do not edit! */
package spacy.pipeline.entity_linker;
@:pythonImport("spacy.pipeline.entity_linker", "EntityLinker") extern class EntityLinker {
	static public var NIL : Dynamic;
	/**
		Apply the pipe to one document. The document is modified in place,
		and returned. This usually happens under the hood when the nlp object
		is called on a text and all components are applied to the Doc.
		
		docs (Doc): The Doc to process.
		RETURNS (Doc): The processed Doc.
		
		DOCS: https://spacy.io/api/pipe#call
	**/
	public function __call__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize an entity linker.
		
		vocab (Vocab): The shared vocabulary.
		model (thinc.api.Model): The Thinc Model powering the pipeline component.
		name (str): The component instance name, used to add entries to the
		    losses during training.
		labels_discard (Iterable[str]): NER labels that will automatically get a "NIL" prediction.
		n_sents (int): The number of neighbouring sentences to take into account.
		incl_prior (bool): Whether or not to include prior probabilities from the KB in the model.
		incl_context (bool): Whether or not to include the local context in the model.
		entity_vector_length (int): Size of encoding vectors in the KB.
		get_candidates (Callable[[KnowledgeBase, Span], Iterable[Candidate]]): Function that
		    produces a list of candidates, given a certain knowledge base and a textual mention.
		scorer (Optional[Callable]): The scoring method. Defaults to
		    Scorer.score_links.
		
		DOCS: https://spacy.io/api/entitylinker#init
	**/
	@:native("__init__")
	public function ___init__(vocab:Dynamic, model:Dynamic, ?name:Dynamic, labels_discard:Dynamic, n_sents:Dynamic, incl_prior:Dynamic, incl_context:Dynamic, entity_vector_length:Dynamic, get_candidates:Dynamic, ?overwrite:Dynamic, ?scorer:Dynamic):Dynamic;
	/**
		Initialize an entity linker.
		
		vocab (Vocab): The shared vocabulary.
		model (thinc.api.Model): The Thinc Model powering the pipeline component.
		name (str): The component instance name, used to add entries to the
		    losses during training.
		labels_discard (Iterable[str]): NER labels that will automatically get a "NIL" prediction.
		n_sents (int): The number of neighbouring sentences to take into account.
		incl_prior (bool): Whether or not to include prior probabilities from the KB in the model.
		incl_context (bool): Whether or not to include the local context in the model.
		entity_vector_length (int): Size of encoding vectors in the KB.
		get_candidates (Callable[[KnowledgeBase, Span], Iterable[Candidate]]): Function that
		    produces a list of candidates, given a certain knowledge base and a textual mention.
		scorer (Optional[Callable]): The scoring method. Defaults to
		    Scorer.score_links.
		
		DOCS: https://spacy.io/api/entitylinker#init
	**/
	public function new(vocab:Dynamic, model:Dynamic, ?name:Dynamic, labels_discard:Dynamic, n_sents:Dynamic, incl_prior:Dynamic, incl_context:Dynamic, entity_vector_length:Dynamic, get_candidates:Dynamic, ?overwrite:Dynamic, ?scorer:Dynamic):Void;
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
		TrainablePipe.__reduce_cython__(self)
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
		TrainablePipe.__setstate_cython__(self, __pyx_state)
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
		TrainablePipe._allow_extra_label(self) -> None
		Raise an error if the component can not add any more labels.
	**/
	public function _allow_extra_label(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pipe._require_labels(self) -> None
		Raise an error if this component has no labels defined.
	**/
	public function _require_labels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TrainablePipe._validate_serialization_attrs(self)
		Check that the pipe implements the required attributes. If a subclass
		        implements a custom __init__ method but doesn't set these attributes,
		        they currently default to None, so we need to perform additonal checks.
		        
	**/
	public function _validate_serialization_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TrainablePipe.add_label(self, label: str) -> int
		Add an output label.
		        For TrainablePipe components, it is possible to
		        extend pretrained models with new labels, but care should be taken to
		        avoid the "catastrophic forgetting" problem.
		
		        label (str): The label to add.
		        RETURNS (int): 0 if label is already present, otherwise 1.
		
		        DOCS: https://spacy.io/api/pipe#add_label
		        
	**/
	public function add_label(label:Dynamic):Dynamic;
	/**
		cfg: object
	**/
	public var cfg : Dynamic;
	/**
		TrainablePipe.create_optimizer(self) -> Optimizer
		Create an optimizer for the pipeline component.
		
		        RETURNS (thinc.api.Optimizer): The optimizer.
		
		        DOCS: https://spacy.io/api/pipe#create_optimizer
		        
	**/
	public function create_optimizer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TrainablePipe.finish_update(self, sgd: Optimizer) -> None
		Update parameters using the current parameter gradients.
		        The Optimizer instance contains the functionality to perform
		        the stochastic gradient descent.
		
		        sgd (thinc.api.Optimizer): The optimizer.
		
		        DOCS: https://spacy.io/api/pipe#finish_update
		        
	**/
	public function finish_update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Load the pipe from a bytestring.
		
		exclude (Iterable[str]): String names of serialization fields to exclude.
		RETURNS (TrainablePipe): The loaded object.
		
		DOCS: https://spacy.io/api/entitylinker#from_bytes
	**/
	public function from_bytes(bytes_data:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Load the pipe from disk. Modifies the object in place and returns it.
		
		path (str / Path): Path to a directory.
		exclude (Iterable[str]): String names of serialization fields to exclude.
		RETURNS (EntityLinker): The modified EntityLinker object.
		
		DOCS: https://spacy.io/api/entitylinker#from_disk
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
		TrainablePipe.get_loss(self, examples: Iterable[Example], scores) -> Tuple[float, float]
		Find the loss and gradient of loss for the batch of documents and
		        their predicted scores.
		
		        examples (Iterable[Examples]): The batch of examples.
		        scores: Scores representing the model's predictions.
		        RETURNS (Tuple[float, float]): The loss and the gradient.
		
		        DOCS: https://spacy.io/api/pipe#get_loss
		        
	**/
	public function get_loss(examples:Dynamic, sentence_encodings:Dynamic):Dynamic;
	public var hide_labels : Dynamic;
	/**
		Initialize the pipe for training, using a representative set
		of data examples.
		
		get_examples (Callable[[], Iterable[Example]]): Function that
		    returns a representative sample of gold-standard Example objects.
		nlp (Language): The current nlp object the component is part of.
		kb_loader (Callable[[Vocab], KnowledgeBase]): A function that creates a KnowledgeBase from a Vocab instance.
		    Note that providing this argument, will overwrite all data accumulated in the current KB.
		    Use this only when loading a KB as-such from file.
		
		DOCS: https://spacy.io/api/entitylinker#initialize
	**/
	public function initialize(get_examples:Dynamic, ?nlp:Dynamic, ?kb_loader:Dynamic):Dynamic;
	public var is_resizable : Dynamic;
	public var is_trainable : Dynamic;
	/**
		Optional JSON-serializable data that would be sufficient to recreate
		the label set if provided to the `pipe.initialize()` method.
	**/
	public var label_data : Dynamic;
	public var labels : Dynamic;
	/**
		model: object
	**/
	public var model : Dynamic;
	/**
		name: str
	**/
	public var name : Dynamic;
	/**
		TrainablePipe.pipe(self, stream: Iterable[Doc], *, batch_size: int = 128) -> Iterator[Doc]
		Apply the pipe to a stream of documents. This usually happens under
		        the hood when the nlp object is called on a text and all components are
		        applied to the Doc.
		
		        stream (Iterable[Doc]): A stream of documents.
		        batch_size (int): The number of documents to buffer.
		        error_handler (Callable[[str, List[Doc], Exception], Any]): Function that
		            deals with a failing batch of documents. The default function just reraises
		            the exception.
		        YIELDS (Doc): Processed documents in order.
		
		        DOCS: https://spacy.io/api/pipe#pipe
		        
	**/
	public function pipe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Apply the pipeline's model to a batch of docs, without modifying them.
		Returns the KB IDs for each entity in each doc, including NIL if there is
		no prediction.
		
		docs (Iterable[Doc]): The documents to predict.
		RETURNS (List[str]): The models prediction for each document.
		
		DOCS: https://spacy.io/api/entitylinker#predict
	**/
	public function predict(docs:Dynamic):Dynamic;
	/**
		TrainablePipe.rehearse(self, examples: Iterable[Example], *, sgd: Optimizer = None, losses: Dict[str, float] = None, **config) -> Dict[str, float]
		Perform a "rehearsal" update from a batch of data. Rehearsal updates
		        teach the current model to make predictions similar to an initial model,
		        to try to address the "catastrophic forgetting" problem. This feature is
		        experimental.
		
		        examples (Iterable[Example]): A batch of Example objects.
		        sgd (thinc.api.Optimizer): The optimizer.
		        losses (Dict[str, float]): Optional record of the loss during training.
		            Updated using the component name as the key.
		        RETURNS (Dict[str, float]): The updated losses dictionary.
		
		        DOCS: https://spacy.io/api/pipe#rehearse
		        
	**/
	public function rehearse(examples:Dynamic, ?sgd:Dynamic, ?losses:Dynamic, ?config:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pipe.score(self, examples: Iterable[Example], **kwargs) -> Dict[str, Union[float, Dict[str, float]]]
		Score a batch of examples.
		
		        examples (Iterable[Example]): The examples to score.
		        RETURNS (Dict[str, Any]): The scores.
		
		        DOCS: https://spacy.io/api/pipe#score
		        
	**/
	public function score(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scorer: object
	**/
	public var scorer : Dynamic;
	/**
		Modify a batch of documents, using pre-computed scores.
		
		docs (Iterable[Doc]): The documents to modify.
		kb_ids (List[str]): The IDs to set, produced by EntityLinker.predict.
		
		DOCS: https://spacy.io/api/entitylinker#set_annotations
	**/
	public function set_annotations(docs:Dynamic, kb_ids:Dynamic):Dynamic;
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
		Define the KB of this pipe by providing a function that will
		create it using this object's vocab.
	**/
	public function set_kb(kb_loader:Dynamic):Dynamic;
	/**
		TrainablePipe.set_output(self, nO: int) -> None
	**/
	public function set_output(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Serialize the pipe to a bytestring.
		
		exclude (Iterable[str]): String names of serialization fields to exclude.
		RETURNS (bytes): The serialized object.
		
		DOCS: https://spacy.io/api/entitylinker#to_bytes
	**/
	public function to_bytes(?exclude:Dynamic):Dynamic;
	/**
		Serialize the pipe to disk.
		
		path (str / Path): Path to a directory.
		exclude (Iterable[str]): String names of serialization fields to exclude.
		
		DOCS: https://spacy.io/api/entitylinker#to_disk
	**/
	public function to_disk(path:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Learn from a batch of documents and gold-standard information,
		updating the pipe's model. Delegates to predict and get_loss.
		
		examples (Iterable[Example]): A batch of Example objects.
		drop (float): The dropout rate.
		sgd (thinc.api.Optimizer): The optimizer.
		losses (Dict[str, float]): Optional record of the loss during training.
		    Updated using the component name as the key.
		RETURNS (Dict[str, float]): The updated losses dictionary.
		
		DOCS: https://spacy.io/api/entitylinker#update
	**/
	public function update(examples:Dynamic, ?drop:Dynamic, ?sgd:Dynamic, ?losses:Dynamic):Dynamic;
	/**
		TrainablePipe.use_params(self, params: dict)
		Modify the pipe's model, to use the given parameter values. At the
		        end of the context, the original parameters are restored.
		
		        params (dict): The parameter values to use in the model.
		
		        DOCS: https://spacy.io/api/pipe#use_params
		        
	**/
	public function use_params(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function validate_kb():Dynamic;
	/**
		vocab: spacy.vocab.Vocab
	**/
	public var vocab : Dynamic;
}