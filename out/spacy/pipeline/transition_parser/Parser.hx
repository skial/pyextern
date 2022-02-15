/* This file is generated, do not edit! */
package spacy.pipeline.transition_parser;
@:pythonImport("spacy.pipeline.transition_parser", "Parser") extern class Parser {
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
		Create a Parser.
		
		vocab (Vocab): The vocabulary object. Must be shared with documents
		    to be processed. The value is set to the `.vocab` attribute.
		model (Model): The model for the transition-based parser. The model needs
		    to have a specific substructure of named components --- see the
		    spacy.ml.tb_framework.TransitionModel for details.
		name (str): The name of the pipeline component
		moves (Optional[TransitionSystem]): This defines how the parse-state is created,
		    updated and evaluated. If 'moves' is None, a new instance is
		    created with `self.TransitionSystem()`. Defaults to `None`.
		update_with_oracle_cut_size (int): During training, cut long sequences into
		    shorter segments by creating intermediate states based on the gold-standard
		    history. The model is not very sensitive to this parameter, so you usually
		    won't need to change it. 100 is a good default.
		min_action_freq (int): The minimum frequency of labelled actions to retain.
		    Rarer labelled actions have their label backed-off to "dep". While this
		    primarily affects the label accuracy, it can also affect the attachment
		    structure, as the labels are used to represent the pseudo-projectivity
		    transformation.
		learn_tokens (bool): Whether to learn to merge subtokens that are split
		    relative to the gold standard. Experimental.
		beam_width (int): The number of candidate analyses to maintain.
		beam_density (float): The minimum ratio between the scores of the first and
		    last candidates in the beam. This allows the parser to avoid exploring
		    candidates that are too far behind. This is mostly intended to improve
		    efficiency, but it can also improve accuracy as deeper search is not
		    always better.
		beam_update_prob (float): The chance of making a beam update, instead of a
		    greedy update. Greedy updates are an approximation for the beam updates,
		    and are faster to compute.
		multitasks: additional multi-tasking components. Experimental.
		incorrect_spans_key (Optional[str]): Identifies spans that are known
		    to be incorrect entity annotations. The incorrect entity annotations
		    can be stored in the span group, under this key.
		scorer (Optional[Callable]): The scoring method. Defaults to None.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a Parser.
		
		vocab (Vocab): The vocabulary object. Must be shared with documents
		    to be processed. The value is set to the `.vocab` attribute.
		model (Model): The model for the transition-based parser. The model needs
		    to have a specific substructure of named components --- see the
		    spacy.ml.tb_framework.TransitionModel for details.
		name (str): The name of the pipeline component
		moves (Optional[TransitionSystem]): This defines how the parse-state is created,
		    updated and evaluated. If 'moves' is None, a new instance is
		    created with `self.TransitionSystem()`. Defaults to `None`.
		update_with_oracle_cut_size (int): During training, cut long sequences into
		    shorter segments by creating intermediate states based on the gold-standard
		    history. The model is not very sensitive to this parameter, so you usually
		    won't need to change it. 100 is a good default.
		min_action_freq (int): The minimum frequency of labelled actions to retain.
		    Rarer labelled actions have their label backed-off to "dep". While this
		    primarily affects the label accuracy, it can also affect the attachment
		    structure, as the labels are used to represent the pseudo-projectivity
		    transformation.
		learn_tokens (bool): Whether to learn to merge subtokens that are split
		    relative to the gold standard. Experimental.
		beam_width (int): The number of candidate analyses to maintain.
		beam_density (float): The minimum ratio between the scores of the first and
		    last candidates in the beam. This allows the parser to avoid exploring
		    candidates that are too far behind. This is mostly intended to improve
		    efficiency, but it can also improve accuracy as deeper search is not
		    always better.
		beam_update_prob (float): The chance of making a beam update, instead of a
		    greedy update. Greedy updates are an approximation for the beam updates,
		    and are faster to compute.
		multitasks: additional multi-tasking components. Experimental.
		incorrect_spans_key (Optional[str]): Identifies spans that are known
		    to be incorrect entity annotations. The incorrect entity annotations
		    can be stored in the span group, under this key.
		scorer (Optional[Callable]): The scoring method. Defaults to None.
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
		Parser.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parser.__reduce_cython__(self)
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
		Parser.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parser.__setstate_cython__(self, __pyx_state)
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
		Parser._ensure_labels_are_added(self, docs)
		Ensure that all labels for a batch of docs are added.
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
		Parser.add_multitask_objective(self, target)
	**/
	public function add_multitask_objective(target:Dynamic):Dynamic;
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
		Parser.init_multitask_objectives(self, get_examples, pipeline, **cfg)
		Setup models for secondary objectives, to benefit from multi-task
		        learning. This method is intended to be overridden by subclasses.
		
		        For instance, the dependency parser can benefit from sharing
		        an input representation with a label prediction model. These auxiliary
		        models are discarded after training.
		        
	**/
	public function init_multitask_objectives(get_examples:Dynamic, pipeline:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
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