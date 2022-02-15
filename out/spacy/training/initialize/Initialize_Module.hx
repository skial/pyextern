/* This file is generated, do not edit! */
package spacy.training.initialize;
@:pythonImport("spacy.training.initialize") extern class Initialize_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_OOV_PROB : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var OOV_RANK : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function convert_vectors(nlp:Dynamic, vectors_loc:Dynamic, truncate:Dynamic, prune:Dynamic, ?name:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Ensure string is converted to a Path.
		
		path (Any): Anything. If string, it's converted to Path.
		RETURNS: Path or original argument.
	**/
	static public function ensure_path(path:Dynamic):Dynamic;
	/**
		Ensure that the first line of the data is the vectors shape.
		If it's not, we read in the data and output the shape as the first result,
		so that the reader doesn't have to deal with the problem.
	**/
	static public function ensure_shape(vectors_loc:Dynamic):Dynamic;
	/**
		Set the random seed across random, numpy.random and cupy.random.
	**/
	static public function fix_random_seed(?seed:Dynamic):Dynamic;
	/**
		RETURNS (List[str]): All sourced components in the original config,
		e.g. {"source": "en_core_web_sm"}. If the config contains a key
		"factory", we assume it refers to a component factory.
	**/
	static public function get_sourced_components(config:Dynamic):Dynamic;
	static public function get_tok2vec_ref(nlp:Dynamic, pretrain_config:Dynamic):Dynamic;
	static public function init_nlp(config:Dynamic, ?use_gpu:Dynamic):Dynamic;
	static public function init_tok2vec(nlp:Dynamic, pretrain_config:Dynamic, init_config:Dynamic):Dynamic;
	static public function init_vocab(nlp:Dynamic, ?data:Dynamic, ?lookups:Dynamic, ?vectors:Dynamic):Dynamic;
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
		Load word vectors from an installed model or path into a model instance.
	**/
	static public function load_vectors_into_model(nlp:Dynamic, name:Dynamic, ?add_strings:Dynamic):Dynamic;
	static public var logger : Dynamic;
	/**
		Handle .gz, .tar.gz or unzipped files
	**/
	static public function open_file(loc:Dynamic):Dynamic;
	static public function read_vectors(vectors_loc:Dynamic, truncate_vectors:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Resolve one or more "dot notation" names, e.g. corpora.train.
		The paths could point anywhere into the config, so we don't know which
		top-level section we'll be looking within.
		
		We resolve the whole top-level section, although we could resolve less --
		we could find the lowest part of the tree.
	**/
	static public function resolve_dot_names(config:Dynamic, dot_names:Dynamic):Dynamic;
	/**
		Route GPU memory allocation via PyTorch or tensorflow.
		Raise an error if the given argument does not match either of the two.
	**/
	static public function set_gpu_allocator(allocator:Dynamic):Dynamic;
}