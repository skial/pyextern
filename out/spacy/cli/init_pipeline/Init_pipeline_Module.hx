/* This file is generated, do not edit! */
package spacy.cli.init_pipeline;
@:pythonImport("spacy.cli.init_pipeline") extern class Init_pipeline_Module {
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _init_labels(nlp:Dynamic, output_path:Dynamic):Dynamic;
	static public function convert_vectors(nlp:Dynamic, vectors_loc:Dynamic, truncate:Dynamic, prune:Dynamic, ?name:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Helper to import Python file provided in training commands / commands
		using the config. This makes custom registered functions available.
	**/
	static public function import_code(code_path:Dynamic):Dynamic;
	static public function init_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generate JSON files for the labels in the data. This helps speed up the
		training process, since spaCy won't have to preprocess the data to
		extract the labels.
	**/
	static public function init_labels_cli(ctx:Dynamic, ?config_path:Dynamic, ?output_path:Dynamic, ?code_path:Dynamic, ?verbose:Dynamic, ?use_gpu:Dynamic):Dynamic;
	static public function init_nlp(config:Dynamic, ?use_gpu:Dynamic):Dynamic;
	static public function init_pipeline_cli(ctx:Dynamic, ?config_path:Dynamic, ?output_path:Dynamic, ?code_path:Dynamic, ?verbose:Dynamic, ?use_gpu:Dynamic):Dynamic;
	/**
		Convert word vectors for use with spaCy. Will export an nlp object that
		you can use in the [initialize] block of your config to initialize
		a model with vectors.
	**/
	static public function init_vectors_cli(?lang:Dynamic, ?vectors_loc:Dynamic, ?output_dir:Dynamic, ?prune:Dynamic, ?truncate:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?verbose:Dynamic, ?jsonl_loc:Dynamic):Dynamic;
	static public var msg : Dynamic;
	/**
		Generate a dictionary of config overrides based on the extra arguments
		provided on the CLI, e.g. --training.batch_size to override
		"training.batch_size". Arguments without a "." are considered invalid,
		since the config only allows top-level sections to exist.
		
		env_vars (Optional[str]): Optional environment variable to read from.
		RETURNS (Dict[str, Any]): The parsed dict, keyed by nested config setting.
	**/
	static public function parse_config_overrides(args:Dynamic, ?env_var:Dynamic):Dynamic;
	/**
		Configure the GPU and log info.
	**/
	static public function setup_gpu(use_gpu:Dynamic, ?silent:Dynamic):Dynamic;
	/**
		Helper to show custom config validation errors on the CLI.
		
		file_path (str / Path): Optional file path of config file, used in hints.
		title (str): Override title of custom formatted error.
		desc (str): Override description of custom formatted error.
		show_config (bool): Whether to output the config the error refers to.
		hint_fill (bool): Show hint about filling config.
	**/
	static public function show_validation_error(?file_path:Dynamic, ?title:Dynamic, ?desc:Dynamic, ?show_config:Dynamic, ?hint_fill:Dynamic):Dynamic;
	static public function update_lexemes(nlp:Dynamic, jsonl_loc:Dynamic):Dynamic;
}