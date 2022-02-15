/* This file is generated, do not edit! */
package spacy.training.pretrain;
@:pythonImport("spacy.training.pretrain") extern class Pretrain_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _resume_model(model:Dynamic, resume_path:Dynamic, epoch_resume:Dynamic, ?silent:Dynamic):Dynamic;
	/**
		Round large numbers as integers, smaller numbers as decimals.
	**/
	static public function _smart_round(figure:Dynamic, ?width:Dynamic, ?max_decimal:Dynamic):Dynamic;
	/**
		Define a network for the pretraining. We simply add an output layer onto
		the tok2vec input model. The tok2vec input model needs to be a model that
		takes a batch of Doc objects (as a list), and returns a list of arrays.
		Each array in the output needs to have one row per token in the doc.
		The actual tok2vec layer is stored as a reference, and only this bit will be
		serialized to file and read back in when calling the 'train' command.
	**/
	static public function create_pretraining_model(nlp:Dynamic, pretrain_config:Dynamic):Dynamic;
	/**
		Convert dot notation of a "section" to a specific part of the Config.
		e.g. "training.optimizer" would return the Optimizer object.
		Throws an error if the section is not defined in this config.
		
		config (Config): The config.
		section (str): The dot notation of the section in the config.
		RETURNS: The object denoted by the section
	**/
	static public function dot_to_object(config:Dynamic, section:Dynamic):Dynamic;
	static public function ensure_docs(examples_or_docs:Dynamic):Dynamic;
	/**
		Set the random seed across random, numpy.random and cupy.random.
	**/
	static public function fix_random_seed(?seed:Dynamic):Dynamic;
	static public function get_tok2vec_ref(nlp:Dynamic, pretrain_config:Dynamic):Dynamic;
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
		Perform an update over a single batch of documents.
		
		docs (iterable): A batch of `Doc` objects.
		optimizer (callable): An optimizer.
		RETURNS loss: A float for the loss.
	**/
	static public function make_update(model:Dynamic, docs:Dynamic, optimizer:Dynamic, objective_func:Dynamic):Dynamic;
	static public function pretrain(config:Dynamic, output_dir:Dynamic, ?resume_path:Dynamic, ?epoch_resume:Dynamic, ?use_gpu:Dynamic, ?silent:Dynamic):Dynamic;
	/**
		Walk over the model's nodes, setting the dropout rate. You can specify
		one or more attribute names, by default it looks for ["dropout_rate"].
	**/
	static public function set_dropout_rate(model:Dynamic, drop:Dynamic, ?attrs:Dynamic):Dynamic;
	/**
		Route GPU memory allocation via PyTorch or tensorflow.
		Raise an error if the given argument does not match either of the two.
	**/
	static public function set_gpu_allocator(allocator:Dynamic):Dynamic;
}