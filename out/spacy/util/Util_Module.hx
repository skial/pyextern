/* This file is generated, do not edit! */
package spacy.util;
@:pythonImport("spacy.util") extern class Util_Module {
	static public function Adam(?learn_rate:Dynamic, ?L2:Dynamic, ?beta1:Dynamic, ?beta2:Dynamic, ?eps:Dynamic, ?grad_clip:Dynamic, ?L2_is_weight_decay:Dynamic, ?use_averages:Dynamic):Dynamic;
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var CONFIG_SECTION_ORDER : Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var CudaStream : Dynamic;
	static public var DEFAULT_OOV_PROB : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Generator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var LEXEME_NORM_LANGS : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Mapping(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NoReturn(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var OLD_MODEL_SHORTCUTS : Dynamic;
	static public var OOV_RANK : Dynamic;
	static public var ORTH : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Pattern(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function Type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_attr_unless_lookup(default_func:Dynamic, lookups:Dynamic, string:Dynamic):Dynamic;
	static public function _pipe(docs:Dynamic, proc:Dynamic, name:Dynamic, default_error_handler:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Extend an attribute function with special cases. If a word is in the
		lookups, the value is returned. Otherwise the previous function is used.
		
		default_func (callable): The default function to execute.
		*lookups (dict): Lookup dictionary mapping string to attribute value.
		RETURNS (callable): Lexical attribute getter.
	**/
	static public function add_lookups(default_func:Dynamic, ?lookups:python.VarArgs<Dynamic>):Dynamic;
	/**
		Convert the value of an environment variable to a boolean. Add special
		check for "0" (falsy) and consider everything else truthy, except unset.
		
		env_var (str): The name of the environment variable to check.
		RETURNS (bool): Its boolean value.
	**/
	static public function check_bool_env_var(env_var:Dynamic):Dynamic;
	static public function check_lexeme_norms(vocab:Dynamic, component_name:Dynamic):Dynamic;
	/**
		Combine and normalize score weights defined by components, e.g.
		{"ents_r": 0.2, "ents_p": 0.3, "ents_f": 0.5} and {"some_other_score": 1.0}.
		
		weights (List[dict]): The weights defined by the components.
		overrides (Dict[str, Optional[Union[float, int]]]): Existing scores that
		    should be preserved.
		RETURNS (Dict[str, float]): The combined and normalized weights.
	**/
	static public function combine_score_weights(weights:Dynamic, ?overrides:Dynamic):Dynamic;
	/**
		Compile a sequence of infix rules into a regex object.
		
		entries (Iterable[Union[str, Pattern]]): The infix rules, e.g.
		    spacy.lang.punctuation.TOKENIZER_INFIXES.
		RETURNS (regex object): The regex object. to be used for Tokenizer.infix_finditer.
	**/
	static public function compile_infix_regex(entries:Dynamic):Dynamic;
	/**
		Compile a sequence of prefix rules into a regex object.
		
		entries (Iterable[Union[str, Pattern]]): The prefix rules, e.g.
		    spacy.lang.punctuation.TOKENIZER_PREFIXES.
		RETURNS (Pattern): The regex object. to be used for Tokenizer.prefix_search.
	**/
	static public function compile_prefix_regex(entries:Dynamic):Dynamic;
	/**
		Compile a sequence of suffix rules into a regex object.
		
		entries (Iterable[Union[str, Pattern]]): The suffix rules, e.g.
		    spacy.lang.punctuation.TOKENIZER_SUFFIXES.
		RETURNS (Pattern): The regex object. to be used for Tokenizer.suffix_search.
	**/
	static public function compile_suffix_regex(entries:Dynamic):Dynamic;
	/**
		Yield an infinite series of compounding values. Each time the
		generator is called, a value is produced by multiplying the previous
		value by the compound rate.
		
		EXAMPLE:
		    >>> sizes = compounding(1.0, 10.0, 1.5)
		    >>> assert next(sizes) == 1.
		    >>> assert next(sizes) == 1 * 1.5
		    >>> assert next(sizes) == 1.5 * 1.5
	**/
	static public function compounding(start:Dynamic, stop:Dynamic, compound:Dynamic, ?t:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Deep copy a Config. Will raise an error if the config contents are not
		JSON-serializable.
		
		config (Config): The config to copy.
		RETURNS (Config): The copied config.
	**/
	static public function copy_config(config:Dynamic):Dynamic;
	static public function create_default_optimizer():Dynamic;
	static public var cupy : Dynamic;
	/**
		Yield an infinite series of linearly decaying values,
		following the schedule: base_rate * 1 / (1 + decay * t)
		
		EXAMPLE:
		    >>> learn_rates = decaying(0.001, 1e-4)
		    >>> next(learn_rates)
		    0.001
		    >>> next(learn_rates)
		    0.00999
	**/
	static public function decaying(base_rate:Dynamic, decay:Dynamic, ?t:Dynamic):Dynamic;
	/**
		Convert dot notation to a dict. For example: {"token": {"pos": True,
		"_": {"xyz": True }}} becomes {"token.pos": True, "token._.xyz": True}.
		
		values (Dict[str, dict]): The dict to convert.
		RETURNS (Dict[str, Any]): The key/value pairs.
	**/
	static public function dict_to_dot(obj:Dynamic):Dynamic;
	/**
		Convert dot notation to a dict. For example: {"token.pos": True,
		"token._.xyz": True} becomes {"token": {"pos": True, "_": {"xyz": True }}}.
		
		values (Dict[str, Any]): The key/value pairs to convert.
		RETURNS (Dict[str, dict]): The converted values.
	**/
	static public function dot_to_dict(values:Dynamic):Dynamic;
	/**
		Convert dot notation of a "section" to a specific part of the Config.
		e.g. "training.optimizer" would return the Optimizer object.
		Throws an error if the section is not defined in this config.
		
		config (Config): The config.
		section (str): The dot notation of the section in the config.
		RETURNS: The object denoted by the section
	**/
	static public function dot_to_object(config:Dynamic, section:Dynamic):Dynamic;
	/**
		Ensure string is converted to a Path.
		
		path (Any): Anything. If string, it's converted to Path.
		RETURNS: Path or original argument.
	**/
	static public function ensure_path(path:Dynamic):Dynamic;
	/**
		Replace <, >, &, " with their HTML encoded representation. Intended to
		prevent HTML errors in rendered displaCy markup.
		
		text (str): The original text.
		RETURNS (str): Equivalent text to be safely used within HTML.
	**/
	static public function escape_html(text:Dynamic):Dynamic;
	/**
		Find string in tokenizer exceptions, duplicate entry and replace string.
		For example, to add additional versions with typographic apostrophes.
		
		excs (Dict[str, List[dict]]): Tokenizer exceptions.
		search (str): String to find and replace.
		replace (str): Replacement.
		RETURNS (Dict[str, List[dict]]): Combined tokenizer exceptions.
	**/
	static public function expand_exc(excs:Dynamic, search:Dynamic, replace:Dynamic):Dynamic;
	/**
		Filter a sequence of spans and remove duplicates or overlaps. Useful for
		creating named entities (where one token can only be part of one entity) or
		when merging spans with `Retokenizer.merge`. When spans overlap, the (first)
		longest span is preferred over shorter spans.
		
		spans (Iterable[Span]): The spans to filter.
		RETURNS (List[Span]): The filtered spans.
	**/
	static public function filter_spans(spans:Dynamic):Dynamic;
	/**
		Given an IETF language code, find a supported spaCy language that is a
		close match for it (according to Unicode CLDR language-matching rules).
		This allows for language aliases, ISO 639-2 codes, more detailed language
		tags, and close matches.
		
		Returns the language code if a matching language is available, or None
		if there is no matching language.
		
		>>> find_matching_language('en')
		'en'
		>>> find_matching_language('pt-BR')  # Brazilian Portuguese
		'pt'
		>>> find_matching_language('fra')  # an ISO 639-2 code for French
		'fr'
		>>> find_matching_language('iw')  # obsolete alias for Hebrew
		'he'
		>>> find_matching_language('no')  # Norwegian
		'nb'
		>>> find_matching_language('mo')  # old code for ro-MD
		'ro'
		>>> find_matching_language('zh-Hans')  # Simplified Chinese
		'zh'
		>>> find_matching_language('zxx')
		None
	**/
	static public function find_matching_language(lang:Dynamic):Dynamic;
	/**
		Set the random seed across random, numpy.random and cupy.random.
	**/
	static public function fix_random_seed(?seed:Dynamic):Dynamic;
	static public function from_bytes(bytes_data:Dynamic, setters:Dynamic, exclude:Dynamic):Dynamic;
	static public function from_dict(msg:Dynamic, setters:Dynamic, exclude:Dynamic):Dynamic;
	static public function from_disk(path:Dynamic, readers:Dynamic, exclude:Dynamic):Dynamic;
	/**
		Get a list of all named arguments of a function (regular,
		keyword-only).
		
		func (Callable): The function
		RETURNS (List[str]): The argument names.
	**/
	static public function get_arg_names(func:Dynamic):Dynamic;
	static public function get_async(stream:Dynamic, numpy_array:Dynamic):Dynamic;
	/**
		Generate the base version without any prerelease identifiers.
		
		version (str): The version, e.g. "3.0.0.dev1".
		RETURNS (str): The base version, e.g. "3.0.0".
	**/
	static public function get_base_version(version:Dynamic):Dynamic;
	static public function get_cuda_stream(?require:Dynamic, ?non_blocking:Dynamic):Dynamic;
	/**
		Get the current backend object.
	**/
	static public function get_current_ops():Dynamic;
	/**
		List all model packages currently installed in the environment.
		
		RETURNS (List[str]): The string names of the models.
	**/
	static public function get_installed_models():Dynamic;
	/**
		Import and load a Language class.
		
		lang (str): IETF language code, such as 'en'.
		RETURNS (Language): Language class.
	**/
	static public function get_lang_class(lang:Dynamic):Dynamic;
	/**
		Get the major + minor version (without patch or prerelease identifiers).
		
		version (str): The version.
		RETURNS (str): The major + minor version or None if version is invalid.
	**/
	static public function get_minor_version(version:Dynamic):Dynamic;
	/**
		Generate a version range like >=1.2.3,<1.3.0 based on a given version
		(e.g. of spaCy).
	**/
	static public function get_minor_version_range(version:Dynamic):Dynamic;
	/**
		From a version range like >=1.2.3,<1.3.0 return the lower pin.
	**/
	static public function get_model_lower_version(constraint:Dynamic):Dynamic;
	/**
		Get model meta.json from a directory path and validate its contents.
		
		path (str / Path): Path to model directory.
		RETURNS (Dict[str, Any]): The model's meta data.
	**/
	static public function get_model_meta(path:Dynamic):Dynamic;
	/**
		Get the path of a Python module.
		
		module (ModuleType): The Python module.
		RETURNS (Path): The path.
	**/
	static public function get_module_path(module:Dynamic):Dynamic;
	/**
		Get a human-readable name of a Python object, e.g. a pipeline component.
		
		obj (Any): The Python object, typically a function or class.
		RETURNS (str): A human-readable name.
	**/
	static public function get_object_name(obj:Dynamic):Dynamic;
	/**
		Get the path to an installed package.
		
		name (str): Package name.
		RETURNS (Path): Path to installed package.
	**/
	static public function get_package_path(name:Dynamic):Dynamic;
	/**
		Get the version of an installed package. Typically used to get model
		package versions.
		
		name (str): The name of the installed Python package.
		RETURNS (str / None): The version or None if package not installed.
	**/
	static public function get_package_version(name:Dynamic):Dynamic;
	/**
		RETURNS (List[str]): All sourced components in the original config,
		e.g. {"source": "en_core_web_sm"}. If the config contains a key
		"factory", we assume it refers to a component factory.
	**/
	static public function get_sourced_components(config:Dynamic):Dynamic;
	/**
		Given a list of words and a text, reconstruct the original tokens and
		return a list of words and spaces that can be used to create a Doc. This
		can help recover destructive tokenization that didn't preserve any
		whitespace information.
		
		words (Iterable[str]): The words.
		text (str): The original text.
		RETURNS (Tuple[List[str], List[bool]]): The words and spaces.
	**/
	static public function get_words_and_spaces(words:Dynamic, text:Dynamic):Dynamic;
	static public function ignore_error(proc_name:Dynamic, proc:Dynamic, docs:Dynamic, e:Dynamic):Dynamic;
	/**
		Import module from a file. Used to load models from a directory.
		
		name (str): Name of module to load.
		loc (str / Path): Path to the file.
		RETURNS: The loaded module.
	**/
	static public function import_file(name:Dynamic, loc:Dynamic):Dynamic;
	/**
		Check if a version (e.g. "2.0.0") is compatible given a version
		constraint (e.g. ">=1.9.0,<2.2.1"). If the constraint is a specific version,
		it's interpreted as =={version}.
		
		version (str): The version to check.
		constraint (str): The constraint string.
		prereleases (bool): Whether to allow prereleases. If set to False,
		    prerelease versions will be considered incompatible.
		RETURNS (bool / None): Whether the version is compatible, or None if the
		    version or constraint are invalid.
	**/
	static public function is_compatible_version(version:Dynamic, constraint:Dynamic, ?prereleases:Dynamic):Dynamic;
	/**
		Check whether a path is the current working directory.
		
		path (Union[Path, str]): The directory path.
		RETURNS (bool): Whether the path is the current working directory.
	**/
	static public function is_cwd(path:Dynamic):Dynamic;
	/**
		Slightly hacky check for whether a callable is implemented in Cython.
		Can be used to implement slightly different behaviors, especially around
		inspecting and parameter annotations. Note that this will only return True
		for actual cdef functions and methods, not regular Python functions defined
		in Python modules.
		
		func (Callable): The callable to check.
		RETURNS (bool): Whether the callable is Cython (probably).
	**/
	static public function is_cython_func(func:Dynamic):Dynamic;
	/**
		Check if user is running spaCy from a Jupyter notebook by detecting the
		IPython kernel. Mainly used for the displaCy visualizer.
		RETURNS (bool): True if in Jupyter, False if not.
	**/
	static public function is_in_jupyter():Dynamic;
	/**
		Compare two versions and check if they match in major and minor, without
		patch or prerelease identifiers. Used internally for compatibility checks
		that should be insensitive to patch releases.
		
		version_a (str): The first version
		version_b (str): The second version.
		RETURNS (bool): Whether the versions match.
	**/
	static public function is_minor_version_match(version_a:Dynamic, version_b:Dynamic):Dynamic;
	/**
		Check if string maps to a package installed via pip.
		
		name (str): Name of package.
		RETURNS (bool): True if installed package, False if not.
	**/
	static public function is_package(name:Dynamic):Dynamic;
	/**
		Approximately decide whether two functions are the same, even if their
		identity is different (e.g. after they have been live reloaded). Mostly
		used in the @Language.component and @Language.factory decorators to decide
		whether to raise if a factory already exists. Allows decorator to run
		multiple times with the same function.
		
		func1 (Callable): The first function.
		func2 (Callable): The second function.
		RETURNS (bool): Whether it's the same function (most likely).
	**/
	static public function is_same_func(func1:Dynamic, func2:Dynamic):Dynamic;
	static public function is_unconstrained_version(constraint:Dynamic, ?prereleases:Dynamic):Dynamic;
	static public var is_windows : Dynamic;
	/**
		Join a command using shlex. shlex.join is only available for Python 3.8+,
		so we're using a workaround here.
		
		command (List[str]): The command to join.
		RETURNS (str): The joined command
	**/
	static public function join_command(command:Dynamic):Dynamic;
	/**
		Check whether a Language class is already loaded. Language classes are
		loaded lazily, to avoid expensive setup code associated with the language
		data.
		
		lang (str): Two-letter language code, e.g. 'en'.
		RETURNS (bool): Whether a Language class has been loaded.
	**/
	static public function lang_class_is_loaded(lang:Dynamic):Dynamic;
	/**
		Load a config file. Takes care of path validation and section order.
		
		path (Union[str, Path]): Path to the config file or "-" to read from stdin.
		overrides: (Dict[str, Any]): Config overrides as nested dict or
		    dict keyed by section values in dot notation.
		interpolate (bool): Whether to interpolate and resolve variables.
		RETURNS (Config): The loaded config.
	**/
	static public function load_config(path:Dynamic, ?overrides:Dynamic, ?interpolate:Dynamic):Dynamic;
	/**
		Load a full config from a string. Wrapper around Thinc's Config.from_str.
		
		text (str): The string config to load.
		interpolate (bool): Whether to interpolate and resolve variables.
		RETURNS (Config): The loaded config.
	**/
	static public function load_config_from_str(text:Dynamic, ?overrides:Dynamic, ?interpolate:Dynamic):Dynamic;
	/**
		Load JSON language data using the given path as a base. If the provided
		path isn't present, will attempt to load a gzipped version before giving up.
		
		path (str / Path): The data to load.
		RETURNS: The loaded data.
	**/
	static public function load_language_data(path:Dynamic):Dynamic;
	/**
		Load a model meta.json from a path and validate its contents.
		
		path (Union[str, Path]): Path to meta.json.
		RETURNS (Dict[str, Any]): The loaded meta.
	**/
	static public function load_meta(path:Dynamic):Dynamic;
	/**
		Load a model from a package or data path.
		
		name (str): Package name or model path.
		vocab (Vocab / True): Optional vocab to pass in on initialization. If True,
		    a new Vocab object will be created.
		disable (Iterable[str]): Names of pipeline components to disable.
		config (Dict[str, Any] / Config): Config overrides as nested dict or dict
		    keyed by section values in dot notation.
		RETURNS (Language): The loaded nlp object.
	**/
	static public function load_model(name:Dynamic, ?vocab:Dynamic, ?disable:Dynamic, ?exclude:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Create an nlp object from a config. Expects the full config file including
		a section "nlp" containing the settings for the nlp object.
		
		name (str): Package name or model path.
		meta (Dict[str, Any]): Optional model meta.
		vocab (Vocab / True): Optional vocab to pass in on initialization. If True,
		    a new Vocab object will be created.
		disable (Iterable[str]): Names of pipeline components to disable. Disabled
		    pipes will be loaded but they won't be run unless you explicitly
		    enable them by calling nlp.enable_pipe.
		exclude (Iterable[str]): Names of pipeline components to exclude. Excluded
		    components won't be loaded.
		auto_fill (bool): Whether to auto-fill config with missing defaults.
		validate (bool): Whether to show config validation errors.
		RETURNS (Language): The loaded nlp object.
	**/
	static public function load_model_from_config(config:Dynamic, ?vocab:Dynamic, ?disable:Dynamic, ?exclude:Dynamic, ?auto_fill:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Helper function to use in the `load()` method of a model package's
		__init__.py.
		
		vocab (Vocab / True): Optional vocab to pass in on initialization. If True,
		    a new Vocab object will be created.
		disable (Iterable[str]): Names of pipeline components to disable. Disabled
		    pipes will be loaded but they won't be run unless you explicitly
		    enable them by calling nlp.enable_pipe.
		exclude (Iterable[str]): Names of pipeline components to exclude. Excluded
		    components won't be loaded.
		config (Dict[str, Any] / Config): Config overrides as nested dict or dict
		    keyed by section values in dot notation.
		RETURNS (Language): The loaded nlp object.
	**/
	static public function load_model_from_init_py(init_file:Dynamic, ?vocab:Dynamic, ?disable:Dynamic, ?exclude:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Load a model from an installed package.
		
		name (str): The package name.
		vocab (Vocab / True): Optional vocab to pass in on initialization. If True,
		    a new Vocab object will be created.
		disable (Iterable[str]): Names of pipeline components to disable. Disabled
		    pipes will be loaded but they won't be run unless you explicitly
		    enable them by calling nlp.enable_pipe.
		exclude (Iterable[str]): Names of pipeline components to exclude. Excluded
		    components won't be loaded.
		config (Dict[str, Any] / Config): Config overrides as nested dict or dict
		    keyed by section values in dot notation.
		RETURNS (Language): The loaded nlp object.
	**/
	static public function load_model_from_package(name:Dynamic, ?vocab:Dynamic, ?disable:Dynamic, ?exclude:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Load a model from a data directory path. Creates Language class with
		pipeline from config.cfg and then calls from_disk() with path.
		
		model_path (Path): Model path.
		meta (Dict[str, Any]): Optional model meta.
		vocab (Vocab / True): Optional vocab to pass in on initialization. If True,
		    a new Vocab object will be created.
		disable (Iterable[str]): Names of pipeline components to disable. Disabled
		    pipes will be loaded but they won't be run unless you explicitly
		    enable them by calling nlp.enable_pipe.
		exclude (Iterable[str]): Names of pipeline components to exclude. Excluded
		    components won't be loaded.
		config (Dict[str, Any] / Config): Config overrides as nested dict or dict
		    keyed by section values in dot notation.
		RETURNS (Language): The loaded nlp object.
	**/
	static public function load_model_from_path(model_path:Dynamic, ?meta:Dynamic, ?vocab:Dynamic, ?disable:Dynamic, ?exclude:Dynamic, ?config:Dynamic):Dynamic;
	static public var logger : Dynamic;
	static public var logger_stream_handler : Dynamic;
	/**
		Execute a block in a temporary directory and remove the directory and
		its contents at the end of the with block.
		
		YIELDS (Path): The path of the temp directory.
	**/
	static public function make_tempdir():Dynamic;
	/**
		Iterate over batches of items. `size` may be an iterator,
		so that batch-size can vary on each step.
	**/
	static public function minibatch(items:Dynamic, size:Dynamic):Dynamic;
	/**
		Perform a template-specific, rudimentary HTML minification for displaCy.
		Disclaimer: NOT a general-purpose solution, only removes indentation and
		newlines.
		
		html (str): Markup to minify.
		RETURNS (str): "Minified" HTML.
	**/
	static public function minify_html(html:Dynamic):Dynamic;
	static public function normalize_slice(length:Dynamic, start:Dynamic, stop:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Return a mapping of top-level packages to their distributions. We're
		inlining this helper from the importlib_metadata "backport" here, since
		it's not available in the builtin importlib.metadata.
	**/
	static public function packages_distributions():Dynamic;
	static public function raise_error(proc_name:Dynamic, proc:Dynamic, docs:Dynamic, e:Dynamic):Dynamic;
	static public function read_regex(path:Dynamic):Dynamic;
	/**
		Replace a node within a model with a new one, updating refs.
		
		model (Model): The parent model.
		target (Model): The target node.
		replacement (Model): The node to replace the target with.
	**/
	static public function replace_model_node(model:Dynamic, target:Dynamic, replacement:Dynamic):Dynamic;
	/**
		Resolve one or more "dot notation" names, e.g. corpora.train.
		The paths could point anywhere into the config, so we don't know which
		top-level section we'll be looking within.
		
		We resolve the whole top-level section, although we could resolve less --
		we could find the lowest part of the tree.
	**/
	static public function resolve_dot_names(config:Dynamic, dot_names:Dynamic):Dynamic;
	/**
		Run a command on the command line as a subprocess. If the subprocess
		returns a non-zero exit code, a system exit is performed.
		
		command (str / List[str]): The command. If provided as a string, the
		    string will be split using shlex.split.
		stdin (Optional[Any]): stdin to read from or None.
		capture (bool): Whether to capture the output and errors. If False,
		    the stdout and stderr will not be redirected, and if there's an error,
		    sys.exit will be called with the return code. You should use capture=False
		    when you want to turn over execution to the command, and capture=True
		    when you want to run the command more like a function.
		RETURNS (Optional[CompletedProcess]): The process object.
	**/
	static public function run_command(command:Dynamic, ?stdin:Dynamic, ?capture:Dynamic):Dynamic;
	/**
		Update a config at a given position from a dot notation.
		
		config (Config): The config.
		section (str): The dot notation of the section in the config.
		value (Any): The value to set in the config.
	**/
	static public function set_dot_to_object(config:Dynamic, section:Dynamic, value:Dynamic):Dynamic;
	/**
		Set a custom Language class name that can be loaded via get_lang_class.
		
		name (str): Name of Language class.
		cls (Language): Language class.
	**/
	static public function set_lang_class(name:Dynamic, cls:Dynamic):Dynamic;
	/**
		Split a string command using shlex. Handles platform compatibility.
		
		command (str) : The command to split
		RETURNS (List[str]): The split command.
	**/
	static public function split_command(command:Dynamic):Dynamic;
	/**
		Split a requirement like spacy>=1.2.3 into ("spacy", ">=1.2.3").
	**/
	static public function split_requirement(requirement:Dynamic):Dynamic;
	static public function to_bytes(getters:Dynamic, exclude:Dynamic):Dynamic;
	static public function to_dict(getters:Dynamic, exclude:Dynamic):Dynamic;
	static public function to_disk(path:Dynamic, writers:Dynamic, exclude:Dynamic):Dynamic;
	/**
		Convert a value to the ternary 1/0/-1 int used for True/None/False in
		attributes such as SENT_START: True/1/1.0 is 1 (True), None/0/0.0 is 0
		(None), any other values are -1 (False).
	**/
	static public function to_ternary_int(val:Dynamic):Dynamic;
	/**
		Update and validate tokenizer exceptions. Will overwrite exceptions.
		
		base_exceptions (Dict[str, List[dict]]): Base exceptions.
		*addition_dicts (Dict[str, List[dict]]): Exceptions to add to the base dict, in order.
		RETURNS (Dict[str, List[dict]]): Combined tokenizer exceptions.
	**/
	static public function update_exc(base_exceptions:Dynamic, ?addition_dicts:python.VarArgs<Dynamic>):Dynamic;
	/**
		Walk a dict and yield the path and values of the leaves.
	**/
	static public function walk_dict(node:Dynamic, ?parent:Dynamic):Dynamic;
	/**
		Warn about require_gpu if a jupyter notebook + cupy + mismatched
		contextvars vs. thread ops are detected
	**/
	static public function warn_if_jupyter_cupy():Dynamic;
	/**
		Change current working directory and returns to previous on exit.
		
		path (str / Path): The directory to navigate to.
		YIELDS (Path): The absolute path to the current working directory. This
		    should be used if the block needs to perform actions within the working
		    directory, to prevent mismatches with relative paths.
	**/
	static public function working_dir(path:Dynamic):Dynamic;
}