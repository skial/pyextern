/* This file is generated, do not edit! */
package spacy.cli.init_config;
@:pythonImport("spacy.cli.init_config") extern class Init_config_Module {
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public var COMMAND : Dynamic;
	static public var DEFAULT_CONFIG_PRETRAIN_PATH : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var RECOMMENDATIONS : Dynamic;
	static public var ROOT : Dynamic;
	static public var TEMPLATE_PATH : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compare two strings and return a colored diff with red/green background
		for deletion and insertions.
		
		a (unicode): The first string to diff.
		b (unicode): The second string to diff.
		fg (unicode / int): Foreground color. String name or 0 - 256 (see COLORS).
		bg (tuple): Background colors as (insert, delete) tuple of string name or
		    0 - 256 (see COLORS).
		RETURNS (unicode): The formatted diff.
	**/
	static public function diff_strings(a:Dynamic, b:Dynamic, ?fg:Dynamic, ?bg:Dynamic):Dynamic;
	static public function fill_config(output_file:Dynamic, base_path:Dynamic, ?pretraining:Dynamic, ?diff:Dynamic, ?silent:Dynamic):Dynamic;
	static public function has_spacy_transformers():Dynamic;
	/**
		Helper to import Python file provided in training commands / commands
		using the config. This makes custom registered functions available.
	**/
	static public function import_code(code_path:Dynamic):Dynamic;
	static public function init_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function init_config(lang:Dynamic, pipeline:Dynamic, optimize:Dynamic, gpu:Dynamic, ?pretraining:Dynamic, ?silent:Dynamic):Dynamic;
	/**
		Generate a starter config file for training. Based on your requirements
		specified via the CLI arguments, this command generates a config with the
		optimal settings for your use case. This includes the choice of architecture,
		pretrained weights and related hyperparameters.
		
		DOCS: https://spacy.io/api/cli#init-config
	**/
	static public function init_config_cli(?output_file:Dynamic, ?lang:Dynamic, ?pipeline:Dynamic, ?optimize:Dynamic, ?gpu:Dynamic, ?pretraining:Dynamic, ?force_overwrite:Dynamic):Dynamic;
	/**
		Fill partial config file with default values. Will add all missing settings
		from the default config and will create all objects, check the registered
		functions for their default values and update the base config. This command
		can be used with a config generated via the training quickstart widget:
		https://spacy.io/usage/training#quickstart
		
		DOCS: https://spacy.io/api/cli#init-fill-config
	**/
	static public function init_fill_config_cli(?base_path:Dynamic, ?output_file:Dynamic, ?pretraining:Dynamic, ?diff:Dynamic, ?code_path:Dynamic):Dynamic;
	static public function save_config(config:Dynamic, output_file:Dynamic, ?is_stdout:Dynamic, ?silent:Dynamic):Dynamic;
	/**
		Helper to show custom config validation errors on the CLI.
		
		file_path (str / Path): Optional file path of config file, used in hints.
		title (str): Override title of custom formatted error.
		desc (str): Override description of custom formatted error.
		show_config (bool): Whether to output the config the error refers to.
		hint_fill (bool): Show hint about filling config.
	**/
	static public function show_validation_error(?file_path:Dynamic, ?title:Dynamic, ?desc:Dynamic, ?show_config:Dynamic, ?hint_fill:Dynamic):Dynamic;
	/**
		Parse a comma-separated string to a list and account for various
		formatting options. Mostly used to handle CLI arguments that take a list of
		comma-separated values.
		
		value (str): The value to parse.
		intify (bool): Whether to convert values to ints.
		RETURNS (Union[List[str], List[int]]): A list of strings or ints.
	**/
	static public function string_to_list(value:Dynamic, ?intify:Dynamic):Dynamic;
	static public function validate_config_for_pretrain(config:Dynamic, msg:Dynamic):Dynamic;
}