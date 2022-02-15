/* This file is generated, do not edit! */
package spacy.pipeline.dep_parser;
@:pythonImport("spacy.pipeline.dep_parser", "DependencyParser") extern class DependencyParser {
	/**
		ArcEager(*args, **kwargs)
	**/
	public function TransitionSystem(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Parser.__getnewargs_ex__(self)
		This allows pickling the Parser and its keyword-only init arguments
	**/
	public function __getnewargs_ex__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create a DependencyParser.
		        
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a DependencyParser.
		        
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
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
		DependencyParser.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyParser.__reduce_cython__(self)
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
		DependencyParser.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyParser.__setstate_cython__(self, __pyx_state)
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
		TrainablePipe._allow_extra_label(self) -> None
		Raise an error if the component can not add any more labels.
	**/
	public function _allow_extra_label(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyParser._ensure_labels_are_added(self, docs)
	**/
	public function _ensure_labels_are_added(docs:Dynamic):Dynamic;
	/**
		Parser._init_gold_batch(self, examples, max_length)
		Make a square batch, of length equal to the shortest transition
		        sequence or a cap. A long
		        doc will get multiple states. Let's say we have a doc of length 2*N,
		        where N is the shortest doc. We'll make two states, one representing
		        long_doc[:N], and another representing long_doc[N:].
	**/
	public function _init_gold_batch(examples:Dynamic, max_length:Dynamic):Dynamic;
	/**
		_multitasks: object
	**/
	public var _multitasks : Dynamic;
	/**
		_rehearsal_model: object
	**/
	public var _rehearsal_model : Dynamic;
	/**
		Pipe._require_labels(self) -> None
		Raise an error if this component has no labels defined.
	**/
	public function _require_labels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parser._resize(self)
	**/
	public function _resize():Dynamic;
	/**
		TrainablePipe._validate_serialization_attrs(self)
		Check that the pipe implements the required attributes. If a subclass
		        implements a custom __init__ method but doesn't set these attributes,
		        they currently default to None, so we need to perform additonal checks.
		        
	**/
	public function _validate_serialization_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parser.add_label(self, label)
	**/
	public function add_label(label:Dynamic):Dynamic;
	/**
		DependencyParser.add_multitask_objective(self, mt_component)
	**/
	public function add_multitask_objective(mt_component:Dynamic):Dynamic;
	/**
		Parser.beam_parse(self, docs, int beam_width, float drop=0., beam_density=0.)
	**/
	public function beam_parse(docs:Dynamic, beam_width:Dynamic, drop:Dynamic, beam_density:Dynamic):Dynamic;
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
		Parser.from_bytes(self, bytes_data, exclude=tuple())
	**/
	public function from_bytes(bytes_data:Dynamic, exclude:Dynamic):Dynamic;
	/**
		Parser.from_disk(self, path, exclude=tuple())
	**/
	public function from_disk(path:Dynamic, exclude:Dynamic):Dynamic;
	/**
		Parser.get_batch_loss(self, states, golds, float[:, ::1] scores, losses)
	**/
	public function get_batch_loss(states:Dynamic, golds:Dynamic, scores:Dynamic, losses:Dynamic):Dynamic;
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
	public function get_loss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parser.greedy_parse(self, docs, drop=0.)
	**/
	public function greedy_parse(docs:Dynamic, drop:Dynamic):Dynamic;
	public var hide_labels : Dynamic;
	public var incorrect_spans_key : Dynamic;
	/**
		DependencyParser.init_multitask_objectives(self, get_examples, nlp=None, **cfg)
	**/
	public function init_multitask_objectives(get_examples:Dynamic, nlp:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parser.initialize(self, get_examples, nlp=None, labels=None)
	**/
	public function initialize(get_examples:Dynamic, nlp:Dynamic, labels:Dynamic):Dynamic;
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
	public var move_names : Dynamic;
	public var moves : Dynamic;
	/**
		name: str
	**/
	public var name : Dynamic;
	/**
		Parser.pipe(self, docs, *, int batch_size=256)
		Process a stream of documents.
		
		        stream: The sequence of documents to process.
		        batch_size (int): Number of documents to accumulate into a working set.
		        error_handler (Callable[[str, List[Doc], Exception], Any]): Function that
		            deals with a failing batch of documents. The default function just reraises
		            the exception.
		
		        YIELDS (Doc): Documents, in order.
		        
	**/
	public function pipe(docs:Dynamic, batch_size:Dynamic):Dynamic;
	public var postprocesses : Dynamic;
	/**
		Parser.predict(self, docs)
	**/
	public function predict(docs:Dynamic):Dynamic;
	/**
		Parser.rehearse(self, examples, sgd=None, losses=None, **cfg)
		Perform a "rehearsal" update, to prevent catastrophic forgetting.
	**/
	public function rehearse(examples:Dynamic, sgd:Dynamic, losses:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pipe.score(self, examples: Iterable[Example], **kwargs) -> Dict[str, Union[float, Dict[str, float]]]
		Score a batch of examples.
		
		        examples (Iterable[Example]): The examples to score.
		        RETURNS (Dict[str, Any]): The scores.
		
		        DOCS: https://spacy.io/api/pipe#score
		        
	**/
	public function score(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyParser.scored_parses(self, beams)
		Return two dictionaries with scores for each beam/doc that was processed:
		        one containing (i, head) keys, and another containing (i, label) keys.
		        
	**/
	public function scored_parses(beams:Dynamic):Dynamic;
	/**
		scorer: object
	**/
	public var scorer : Dynamic;
	/**
		Parser.set_annotations(self, docs, states_or_beams)
	**/
	public function set_annotations(docs:Dynamic, states_or_beams:Dynamic):Dynamic;
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
		Parser.set_output(self, nO)
	**/
	public function set_output(nO:Dynamic):Dynamic;
	/**
		Parser.to_bytes(self, exclude=tuple())
	**/
	public function to_bytes(exclude:Dynamic):Dynamic;
	/**
		Parser.to_disk(self, path, exclude=tuple())
	**/
	public function to_disk(path:Dynamic, exclude:Dynamic):Dynamic;
	/**
		Return the embedding and convolutional layer of the model.
	**/
	public var tok2vec : Dynamic;
	/**
		Parser.transition_states(self, states, float[:, ::1] scores)
	**/
	public function transition_states(states:Dynamic, scores:Dynamic):Dynamic;
	/**
		Parser.update(self, examples, *, drop=0., sgd=None, losses=None)
	**/
	public function update(examples:Dynamic, drop:Dynamic, sgd:Dynamic, losses:Dynamic):Dynamic;
	/**
		Parser.update_beam(self, examples, *, beam_width, drop=0., sgd=None, losses=None, beam_density=0.0)
	**/
	public function update_beam(examples:Dynamic, beam_width:Dynamic, drop:Dynamic, sgd:Dynamic, losses:Dynamic, beam_density:Dynamic):Dynamic;
	/**
		Parser.use_params(self, params)
	**/
	public function use_params(params:Dynamic):Dynamic;
	/**
		vocab: spacy.vocab.Vocab
	**/
	public var vocab : Dynamic;
}