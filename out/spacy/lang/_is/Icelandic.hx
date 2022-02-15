/* This file is generated, do not edit! */
package spacy.lang._is;
@:pythonImport("spacy.lang.is", "Icelandic") extern class Icelandic {
	/**
		Language data defaults, available via Language.Defaults. Can be
		overwritten by language subclasses by defining their own subclasses of
		Language.Defaults.
	**/
	static public function Defaults():Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Apply the pipeline to some text. The text can span multiple sentences,
		and can contain arbitrary whitespace. Alignment into the original string
		is preserved.
		
		text (Union[str, Doc]): If `str`, the text to be processed. If `Doc`,
		    the doc will be passed directly to the pipeline, skipping
		    `Language.make_doc`.
		disable (List[str]): Names of the pipeline components to disable.
		component_cfg (Dict[str, dict]): An optional dictionary with extra
		    keyword arguments for specific components.
		RETURNS (Doc): A container for accessing the annotations.
		
		DOCS: https://spacy.io/api/language#call
	**/
	public function __call__(text:Dynamic, ?disable:Dynamic, ?component_cfg:Dynamic):Dynamic;
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
		Initialise a Language object.
		
		vocab (Vocab): A `Vocab` object. If `True`, a vocab is created.
		meta (dict): Custom meta data for the Language class. Is written to by
		    models to add model meta data.
		max_length (int): Maximum number of characters in a single text. The
		    current models may run out memory on extremely long texts, due to
		    large internal allocations. You should segment these texts into
		    meaningful units, e.g. paragraphs, subsections etc, before passing
		    them to spaCy. Default maximum length is 1,000,000 charas (1mb). As
		    a rule of thumb, if all pipeline components are enabled, spaCy's
		    default models currently requires roughly 1GB of temporary memory per
		    100,000 characters in one text.
		create_tokenizer (Callable): Function that takes the nlp object and
		    returns a tokenizer.
		batch_size (int): Default batch size for pipe and evaluate.
		
		DOCS: https://spacy.io/api/language#init
	**/
	@:native("__init__")
	public function ___init__(?vocab:Dynamic, ?max_length:Dynamic, ?meta:Dynamic, ?create_tokenizer:Dynamic, ?batch_size:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialise a Language object.
		
		vocab (Vocab): A `Vocab` object. If `True`, a vocab is created.
		meta (dict): Custom meta data for the Language class. Is written to by
		    models to add model meta data.
		max_length (int): Maximum number of characters in a single text. The
		    current models may run out memory on extremely long texts, due to
		    large internal allocations. You should segment these texts into
		    meaningful units, e.g. paragraphs, subsections etc, before passing
		    them to spaCy. Default maximum length is 1,000,000 charas (1mb). As
		    a rule of thumb, if all pipeline components are enabled, spaCy's
		    default models currently requires roughly 1GB of temporary memory per
		    100,000 characters in one text.
		create_tokenizer (Callable): Function that takes the nlp object and
		    returns a tokenizer.
		batch_size (int): Default batch size for pipe and evaluate.
		
		DOCS: https://spacy.io/api/language#init
	**/
	public function new(?vocab:Dynamic, ?max_length:Dynamic, ?meta:Dynamic, ?create_tokenizer:Dynamic, ?batch_size:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
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
		Create a Doc if need be, or raise an error if the input is not a Doc or a string.
	**/
	public function _ensure_doc(doc_like:Dynamic):Dynamic;
	/**
		Create a Doc if need be and add as_tuples context, or raise an error if the input is not a Doc or a string.
	**/
	public function _ensure_doc_with_context(doc_like:Dynamic, context:Dynamic):Dynamic;
	static public var _factory_meta : Dynamic;
	/**
		Determine where to insert a pipeline component based on the before/
		after/first/last values.
		
		before (str): Name or index of the component to insert directly before.
		after (str): Name or index of component to insert directly after.
		first (bool): If True, insert component first in the pipeline.
		last (bool): If True, insert component last in the pipeline.
		RETURNS (int): The index of the new pipeline component.
	**/
	public function _get_pipe_index(?before:Dynamic, ?after:Dynamic, ?first:Dynamic, ?last:Dynamic):Dynamic;
	public function _has_gpu_model(disable:Dynamic):Dynamic;
	/**
		Register 'listeners' within pipeline components, to allow them to
		effectively share weights.
	**/
	public function _link_components():Dynamic;
	public function _multiprocessing_pipe(texts:Dynamic, pipes:Dynamic, n_process:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Add a component to the processing pipeline. Valid components are
		callables that take a `Doc` object, modify it and return it. Only one
		of before/after/first/last can be set. Default behaviour is "last".
		
		factory_name (str): Name of the component factory.
		name (str): Name of pipeline component. Overwrites existing
		    component.name attribute if available. If no name is set and
		    the component exposes no name attribute, component.__name__ is
		    used. An error is raised if a name already exists in the pipeline.
		before (Union[str, int]): Name or index of the component to insert new
		    component directly before.
		after (Union[str, int]): Name or index of the component to insert new
		    component directly after.
		first (bool): If True, insert component first in the pipeline.
		last (bool): If True, insert component last in the pipeline.
		source (Language): Optional loaded nlp object to copy the pipeline
		    component from.
		config (Dict[str, Any]): Config parameters to use for this component.
		    Will be merged with default config, if available.
		raw_config (Optional[Config]): Internals: the non-interpolated config.
		validate (bool): Whether to validate the component config against the
		    arguments and types expected by the factory.
		RETURNS (Pipe): The pipeline component.
		
		DOCS: https://spacy.io/api/language#add_pipe
	**/
	public function add_pipe(factory_name:Dynamic, ?name:Dynamic, ?before:Dynamic, ?after:Dynamic, ?first:Dynamic, ?last:Dynamic, ?source:Dynamic, ?config:Dynamic, ?raw_config:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Analyze the current pipeline components, print a summary of what
		they assign or require and check that all requirements are met.
		
		keys (List[str]): The meta values to display in the table. Corresponds
		    to values in FactoryMeta, defined by @Language.factory decorator.
		pretty (bool): Pretty-print the results.
		RETURNS (dict): The data.
	**/
	public function analyze_pipes(?keys:Dynamic, ?pretty:Dynamic):Dynamic;
	public function begin_training(?get_examples:Dynamic, ?sgd:Dynamic):Dynamic;
	/**
		Register a new pipeline component. Can be used for stateless function
		components that don't require a separate factory. Can be used as a
		decorator on a function or classmethod, or called as a function with the
		factory provided as the func keyword argument. To create a component and
		add it to the pipeline, you can use nlp.add_pipe(name).
		
		name (str): The name of the component factory.
		assigns (Iterable[str]): Doc/Token attributes assigned by this component,
		    e.g. "token.ent_id". Used for pipeline analysis.
		requires (Iterable[str]): Doc/Token attributes required by this component,
		    e.g. "token.ent_id". Used for pipeline analysis.
		retokenizes (bool): Whether the component changes the tokenization.
		    Used for pipeline analysis.
		func (Optional[Callable]): Factory function if not used as a decorator.
		
		DOCS: https://spacy.io/api/language#component
	**/
	static public function component(name:Dynamic, ?assigns:Dynamic, ?requires:Dynamic, ?retokenizes:Dynamic, ?func:Dynamic):Dynamic;
	/**
		Get the names of the available pipeline components. Includes all
		active and inactive pipeline components.
		
		RETURNS (List[str]): List of component name strings, in order.
	**/
	public var component_names : Dynamic;
	/**
		Get all (name, component) tuples in the pipeline, including the
		currently disabled components.
	**/
	public var components : Dynamic;
	/**
		Trainable config for the current language instance. Includes the
		current pipeline components, as well as default training config.
		
		RETURNS (thinc.api.Config): The config.
		
		DOCS: https://spacy.io/api/language#config
	**/
	public var config : Dynamic;
	/**
		Create an optimizer, usually using the [training.optimizer] config.
	**/
	public function create_optimizer():Dynamic;
	/**
		Create a pipeline component. Mostly used internally. To create and
		add a component to the pipeline, you can use nlp.add_pipe.
		
		factory_name (str): Name of component factory.
		name (Optional[str]): Optional name to assign to component instance.
		    Defaults to factory name if not set.
		config (Dict[str, Any]): Config parameters to use for this component.
		    Will be merged with default config, if available.
		raw_config (Optional[Config]): Internals: the non-interpolated config.
		validate (bool): Whether to validate the component config against the
		    arguments and types expected by the factory.
		RETURNS (Pipe): The pipeline component.
		
		DOCS: https://spacy.io/api/language#create_pipe
	**/
	public function create_pipe(factory_name:Dynamic, ?name:Dynamic, ?config:Dynamic, ?raw_config:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Create a pipeline component by copying it from an existing model.
		
		source_name (str): Name of the component in the source pipeline.
		source (Language): The source nlp object to copy from.
		name (str): Optional alternative name to use in current pipeline.
		RETURNS (Tuple[Callable, str]): The component and its factory name.
	**/
	public function create_pipe_from_source(source_name:Dynamic, source:Dynamic, name:Dynamic):Dynamic;
	static public var default_config : Dynamic;
	/**
		Disable a pipeline component. The component will still exist on
		the nlp object, but it won't be run as part of the pipeline. Does
		nothing if the component is already disabled.
		
		name (str): The name of the component to disable.
	**/
	public function disable_pipe(name:Dynamic):Dynamic;
	/**
		Disable one or more pipeline components. If used as a context
		manager, the pipeline will be restored to the initial state at the end
		of the block. Otherwise, a DisabledPipes object is returned, that has
		a `.restore()` method you can use to undo your changes.
		
		This method has been deprecated since 3.0
	**/
	public function disable_pipes(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Get the names of all disabled components.
		
		RETURNS (List[str]): The disabled components.
	**/
	public var disabled : Dynamic;
	/**
		Enable a previously disabled pipeline component so it's run as part
		of the pipeline. Does nothing if the component is already enabled.
		
		name (str): The name of the component to enable.
	**/
	public function enable_pipe(name:Dynamic):Dynamic;
	/**
		Evaluate a model's pipeline components.
		
		examples (Iterable[Example]): `Example` objects.
		batch_size (Optional[int]): Batch size to use.
		scorer (Optional[Scorer]): Scorer to use. If not passed in, a new one
		    will be created.
		component_cfg (dict): An optional dictionary with extra keyword
		    arguments for specific components.
		scorer_cfg (dict): An optional dictionary with extra keyword arguments
		    for the scorer.
		
		RETURNS (Scorer): The scorer containing the evaluation results.
		
		DOCS: https://spacy.io/api/language#evaluate
	**/
	public function evaluate(examples:Dynamic, ?batch_size:Dynamic, ?scorer:Dynamic, ?component_cfg:Dynamic, ?scorer_cfg:Dynamic):Dynamic;
	static public var factories : Dynamic;
	/**
		Register a new pipeline component factory. Can be used as a decorator
		on a function or classmethod, or called as a function with the factory
		provided as the func keyword argument. To create a component and add
		it to the pipeline, you can use nlp.add_pipe(name).
		
		name (str): The name of the component factory.
		default_config (Dict[str, Any]): Default configuration, describing the
		    default values of the factory arguments.
		assigns (Iterable[str]): Doc/Token attributes assigned by this component,
		    e.g. "token.ent_id". Used for pipeline analysis.
		requires (Iterable[str]): Doc/Token attributes required by this component,
		    e.g. "token.ent_id". Used for pipeline analysis.
		retokenizes (bool): Whether the component changes the tokenization.
		    Used for pipeline analysis.
		default_score_weights (Dict[str, Optional[float]]): The scores to report during
		    training, and their default weight towards the final score used to
		    select the best model. Weights should sum to 1.0 per component and
		    will be combined and normalized for the whole pipeline. If None,
		    the score won't be shown in the logs or be weighted.
		func (Optional[Callable]): Factory function if not used as a decorator.
		
		DOCS: https://spacy.io/api/language#factory
	**/
	static public function factory(name:Dynamic, ?default_config:Dynamic, ?assigns:Dynamic, ?requires:Dynamic, ?retokenizes:Dynamic, ?default_score_weights:Dynamic, ?func:Dynamic):Dynamic;
	/**
		Get names of all available factories.
		
		RETURNS (List[str]): The factory names.
	**/
	public var factory_names : Dynamic;
	/**
		Load state from a binary string.
		
		bytes_data (bytes): The data to load from.
		exclude (Iterable[str]): Names of components or serialization fields to exclude.
		RETURNS (Language): The `Language` object.
		
		DOCS: https://spacy.io/api/language#from_bytes
	**/
	public function from_bytes(bytes_data:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Create the nlp object from a loaded config. Will set up the tokenizer
		and language data, add pipeline components etc. If no config is provided,
		the default config of the given language is used.
		
		config (Dict[str, Any] / Config): The loaded config.
		vocab (Vocab): A Vocab object. If True, a vocab is created.
		disable (Iterable[str]): Names of pipeline components to disable.
		    Disabled pipes will be loaded but they won't be run unless you
		    explicitly enable them by calling nlp.enable_pipe.
		exclude (Iterable[str]): Names of pipeline components to exclude.
		    Excluded components won't be loaded.
		meta (Dict[str, Any]): Meta overrides for nlp.meta.
		auto_fill (bool): Automatically fill in missing values in config based
		    on defaults and function argument annotations.
		validate (bool): Validate the component config and arguments against
		    the types expected by the factory.
		RETURNS (Language): The initialized Language class.
		
		DOCS: https://spacy.io/api/language#from_config
	**/
	static public function from_config(?config:Dynamic, ?vocab:Dynamic, ?disable:Dynamic, ?exclude:Dynamic, ?meta:Dynamic, ?auto_fill:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Loads state from a directory. Modifies the object in place and
		returns it. If the saved `Language` object contains a model, the
		model will be loaded.
		
		path (str / Path): A path to a directory.
		exclude (Iterable[str]): Names of components or serialization fields to exclude.
		RETURNS (Language): The modified `Language` object.
		
		DOCS: https://spacy.io/api/language#from_disk
	**/
	public function from_disk(path:Dynamic, ?exclude:Dynamic, ?overrides:Dynamic):Dynamic;
	/**
		Get the meta information for a given factory name.
		
		name (str): The component factory name.
		RETURNS (FactoryMeta): The meta for the given factory name.
	**/
	static public function get_factory_meta(name:Dynamic):Dynamic;
	/**
		Get the internal factory name based on the language subclass.
		
		name (str): The factory name.
		RETURNS (str): The internal factory name.
	**/
	static public function get_factory_name(name:Dynamic):Dynamic;
	/**
		Get a pipeline component for a given component name.
		
		name (str): Name of pipeline component to get.
		RETURNS (callable): The pipeline component.
		
		DOCS: https://spacy.io/api/language#get_pipe
	**/
	public function get_pipe(name:Dynamic):Dynamic;
	/**
		Get the config used to create a pipeline component.
		
		name (str): The component name.
		RETURNS (Config): The config used to create the pipeline component.
	**/
	public function get_pipe_config(name:Dynamic):Dynamic;
	/**
		Get the meta information for a given component name.
		
		name (str): The component name.
		RETURNS (FactoryMeta): The meta for the given component name.
	**/
	public function get_pipe_meta(name:Dynamic):Dynamic;
	/**
		RETURNS (bool): Whether a factory of that name is registered.
	**/
	static public function has_factory(name:Dynamic):Dynamic;
	/**
		Check if a component name is present in the pipeline. Equivalent to
		`name in nlp.pipe_names`.
		
		name (str): Name of the component.
		RETURNS (bool): Whether a component of the name exists in the pipeline.
		
		DOCS: https://spacy.io/api/language#has_pipe
	**/
	public function has_pipe(name:Dynamic):Dynamic;
	/**
		Initialize the pipe for training, using data examples if available.
		
		get_examples (Callable[[], Iterable[Example]]): Optional function that
		    returns gold-standard Example objects.
		sgd (Optional[Optimizer]): An optimizer to use for updates. If not
		    provided, will be created using the .create_optimizer() method.
		RETURNS (thinc.api.Optimizer): The optimizer.
		
		DOCS: https://spacy.io/api/language#initialize
	**/
	public function initialize(?get_examples:Dynamic, ?sgd:Dynamic):Dynamic;
	static public var lang : Dynamic;
	/**
		Turn a text into a Doc object.
		
		text (str): The text to process.
		RETURNS (Doc): The processed doc.
	**/
	public function make_doc(text:Dynamic):Dynamic;
	/**
		Custom meta data of the language class. If a model is loaded, this
		includes details from the model's meta.json.
		
		RETURNS (Dict[str, Any]): The meta.
		
		DOCS: https://spacy.io/api/language#meta
	**/
	public var meta : Dynamic;
	public var path : Dynamic;
	/**
		Process texts as a stream, and yield `Doc` objects in order.
		
		texts (Iterable[Union[str, Doc]]): A sequence of texts or docs to
		    process.
		as_tuples (bool): If set to True, inputs should be a sequence of
		    (text, context) tuples. Output will then be a sequence of
		    (doc, context) tuples. Defaults to False.
		batch_size (Optional[int]): The number of texts to buffer.
		disable (List[str]): Names of the pipeline components to disable.
		component_cfg (Dict[str, Dict]): An optional dictionary with extra keyword
		    arguments for specific components.
		n_process (int): Number of processors to process texts. If -1, set `multiprocessing.cpu_count()`.
		YIELDS (Doc): Documents in the order of the original text.
		
		DOCS: https://spacy.io/api/language#pipe
	**/
	public function pipe(texts:Dynamic, ?as_tuples:Dynamic, ?batch_size:Dynamic, ?disable:Dynamic, ?component_cfg:Dynamic, ?n_process:Dynamic):Dynamic;
	/**
		Get the component factories for the available pipeline components.
		
		RETURNS (Dict[str, str]): Factory names, keyed by component names.
	**/
	public var pipe_factories : Dynamic;
	/**
		Get the labels set by the pipeline components, if available (if
		the component exposes a labels property and the labels are not
		hidden).
		
		RETURNS (Dict[str, List[str]]): Labels keyed by component name.
	**/
	public var pipe_labels : Dynamic;
	/**
		Get names of available active pipeline components.
		
		RETURNS (List[str]): List of component name strings, in order.
	**/
	public var pipe_names : Dynamic;
	/**
		The processing pipeline consisting of (name, component) tuples. The
		components are called on the Doc in order as it passes through the
		pipeline.
		
		RETURNS (List[Tuple[str, Pipe]]): The pipeline.
	**/
	public var pipeline : Dynamic;
	/**
		Make a "rehearsal" update to the models in the pipeline, to prevent
		forgetting. Rehearsal updates run an initial copy of the model over some
		data, and update the model so its current predictions are more like the
		initial ones. This is useful for keeping a pretrained model on-track,
		even if you're updating it with a smaller set of examples.
		
		examples (Iterable[Example]): A batch of `Example` objects.
		sgd (Optional[Optimizer]): An optimizer.
		component_cfg (Dict[str, Dict]): Config parameters for specific pipeline
		    components, keyed by component name.
		exclude (Iterable[str]): Names of components that shouldn't be updated.
		RETURNS (dict): Results from the update.
		
		EXAMPLE:
		    >>> raw_text_batches = minibatch(raw_texts)
		    >>> for labelled_batch in minibatch(examples):
		    >>>     nlp.update(labelled_batch)
		    >>>     raw_batch = [Example.from_dict(nlp.make_doc(text), {}) for text in next(raw_text_batches)]
		    >>>     nlp.rehearse(raw_batch)
		
		DOCS: https://spacy.io/api/language#rehearse
	**/
	public function rehearse(examples:Dynamic, ?sgd:Dynamic, ?losses:Dynamic, ?component_cfg:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Remove a component from the pipeline.
		
		name (str): Name of the component to remove.
		RETURNS (tuple): A `(name, component)` tuple of the removed component.
		
		DOCS: https://spacy.io/api/language#remove_pipe
	**/
	public function remove_pipe(name:Dynamic):Dynamic;
	/**
		Rename a pipeline component.
		
		old_name (str): Name of the component to rename.
		new_name (str): New name of the component.
		
		DOCS: https://spacy.io/api/language#rename_pipe
	**/
	public function rename_pipe(old_name:Dynamic, new_name:Dynamic):Dynamic;
	/**
		Find listener layers (connecting to a token-to-vector embedding
		component) of a given pipeline component model and replace
		them with a standalone copy of the token-to-vector layer. This can be
		useful when training a pipeline with components sourced from an existing
		pipeline: if multiple components (e.g. tagger, parser, NER) listen to
		the same tok2vec component, but some of them are frozen and not updated,
		their performance may degrade significally as the tok2vec component is
		updated with new data. To prevent this, listeners can be replaced with
		a standalone tok2vec layer that is owned by the component and doesn't
		change if the component isn't updated.
		
		tok2vec_name (str): Name of the token-to-vector component, typically
		    "tok2vec" or "transformer".
		pipe_name (str): Name of pipeline component to replace listeners for.
		listeners (Iterable[str]): The paths to the listeners, relative to the
		    component config, e.g. ["model.tok2vec"]. Typically, implementations
		    will only connect to one tok2vec component, [model.tok2vec], but in
		    theory, custom models can use multiple listeners. The value here can
		    either be an empty list to not replace any listeners, or a complete
		    (!) list of the paths to all listener layers used by the model.
		
		DOCS: https://spacy.io/api/language#replace_listeners
	**/
	public function replace_listeners(tok2vec_name:Dynamic, pipe_name:Dynamic, listeners:Dynamic):Dynamic;
	/**
		Replace a component in the pipeline.
		
		name (str): Name of the component to replace.
		factory_name (str): Factory name of replacement component.
		config (Optional[Dict[str, Any]]): Config parameters to use for this
		    component. Will be merged with default config, if available.
		validate (bool): Whether to validate the component config against the
		    arguments and types expected by the factory.
		RETURNS (Pipe): The new pipeline component.
		
		DOCS: https://spacy.io/api/language#replace_pipe
	**/
	public function replace_pipe(name:Dynamic, factory_name:Dynamic, ?config:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Continue training a pretrained model.
		
		Create and return an optimizer, and initialize "rehearsal" for any pipeline
		component that has a .rehearse() method. Rehearsal is used to prevent
		models from "forgetting" their initialized "knowledge". To perform
		rehearsal, collect samples of text you want the models to retain performance
		on, and call nlp.rehearse() with a batch of Example objects.
		
		RETURNS (Optimizer): The optimizer.
		
		DOCS: https://spacy.io/api/language#resume_training
	**/
	public function resume_training(?sgd:Dynamic):Dynamic;
	/**
		Disable one or more pipeline components. If used as a context
		manager, the pipeline will be restored to the initial state at the end
		of the block. Otherwise, a DisabledPipes object is returned, that has
		a `.restore()` method you can use to undo your changes.
		
		disable (str or iterable): The name(s) of the pipes to disable
		enable (str or iterable): The name(s) of the pipes to enable - all others will be disabled
		
		DOCS: https://spacy.io/api/language#select_pipes
	**/
	public function select_pipes(?disable:Dynamic, ?enable:Dynamic):Dynamic;
	/**
		Set an error handler object for all the components in the pipeline that implement
		a set_error_handler function.
		
		error_handler (Callable[[str, Pipe, List[Doc], Exception], NoReturn]):
		    Function that deals with a failing batch of documents. This callable function should take in
		    the component's name, the component itself, the offending batch of documents, and the exception
		    that was thrown.
		DOCS: https://spacy.io/api/language#set_error_handler
	**/
	public function set_error_handler(error_handler:Dynamic):Dynamic;
	/**
		Set the meta information for a given factory name.
		
		name (str): The component factory name.
		value (FactoryMeta): The meta to set.
	**/
	static public function set_factory_meta(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Serialize the current state to a binary string.
		
		exclude (Iterable[str]): Names of components or serialization fields to exclude.
		RETURNS (bytes): The serialized form of the `Language` object.
		
		DOCS: https://spacy.io/api/language#to_bytes
	**/
	public function to_bytes(?exclude:Dynamic):Dynamic;
	/**
		Save the current state to a directory.  If a model is loaded, this
		will include the model.
		
		path (str / Path): Path to a directory, which will be created if
		    it doesn't exist.
		exclude (Iterable[str]): Names of components or serialization fields to exclude.
		
		DOCS: https://spacy.io/api/language#to_disk
	**/
	public function to_disk(path:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Update the models in the pipeline.
		
		examples (Iterable[Example]): A batch of examples
		_: Should not be set - serves to catch backwards-incompatible scripts.
		drop (float): The dropout rate.
		sgd (Optimizer): An optimizer.
		losses (Dict[str, float]): Dictionary to update with the loss, keyed by
		    component.
		component_cfg (Dict[str, Dict]): Config parameters for specific pipeline
		    components, keyed by component name.
		exclude (Iterable[str]): Names of components that shouldn't be updated.
		annotates (Iterable[str]): Names of components that should set
		    annotations on the predicted examples after updating.
		RETURNS (Dict[str, float]): The updated losses dictionary
		
		DOCS: https://spacy.io/api/language#update
	**/
	public function update(examples:Dynamic, ?_:Dynamic, ?drop:Dynamic, ?sgd:Dynamic, ?losses:Dynamic, ?component_cfg:Dynamic, ?exclude:Dynamic, ?annotates:Dynamic):Dynamic;
	/**
		Replace weights of models in the pipeline with those provided in the
		params dictionary. Can be used as a contextmanager, in which case,
		models go back to their original weights after the block.
		
		params (dict): A dictionary of parameters keyed by model ID.
		
		EXAMPLE:
		    >>> with nlp.use_params(optimizer.averages):
		    >>>     nlp.to_disk("/tmp/checkpoint")
		
		DOCS: https://spacy.io/api/language#use_params
	**/
	public function use_params(params:Dynamic):Dynamic;
}