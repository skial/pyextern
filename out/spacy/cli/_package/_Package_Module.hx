/* This file is generated, do not edit! */
package spacy.cli._package;
@:pythonImport("spacy.cli.package") extern class _Package_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var FILENAMES_DOCS : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var SDIST_SUFFIX : Dynamic;
	static public var TEMPLATE_INIT : Dynamic;
	static public var TEMPLATE_MANIFEST : Dynamic;
	static public var TEMPLATE_SETUP : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var WHEEL_SUFFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _format_accuracy(data:Dynamic, ?exclude:Dynamic):Dynamic;
	static public function _format_label_scheme(data:Dynamic):Dynamic;
	static public function _format_sources(data:Dynamic):Dynamic;
	static public function _is_permitted_package_name(package_name:Dynamic):Dynamic;
	static public function app(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function create_file(file_path:Dynamic, contents:Dynamic):Dynamic;
	static public function generate_meta(existing_meta:Dynamic, msg:Dynamic):Dynamic;
	/**
		Generate a Markdown-formatted README text from a model meta.json. Used
		within the GitHub release notes and as content for README.md file added
		to model packages.
	**/
	static public function generate_readme(meta:Dynamic):Dynamic;
	static public function get_build_formats(formats:Dynamic):Dynamic;
	static public function get_meta(model_path:Dynamic, existing_meta:Dynamic):Dynamic;
	/**
		Get user input from the command line via raw_input / input.
		
		description (unicode): Text to display before prompt.
		default (unicode or False/None): Default value to display with prompt.
		indent (int): Indentation in spaces.
		RETURNS (unicode): User input.
	**/
	static public function get_raw_input(description:Dynamic, ?_default:Dynamic, ?indent:Dynamic):Dynamic;
	/**
		If the config includes references to registered functions that are
		provided by third-party packages (spacy-transformers, other libraries), we
		want to include them in meta["requirements"] so that the package specifies
		them as dependencies and the user won't have to do it manually.
		
		We do this by:
		- traversing the config to check for registered function (@ keys)
		- looking up the functions and getting their module
		- looking up the module version and generating an appropriate version range
		
		config (Config): The pipeline config.
		exclude (list): List of packages to exclude (e.g. that already exist in meta).
		RETURNS (list): The versioned requirements.
	**/
	static public function get_third_party_dependencies(config:Dynamic, ?exclude:Dynamic):Dynamic;
	static public function has_wheel():Dynamic;
	@:native("package")
	static public function _package(input_dir:Dynamic, output_dir:Dynamic, ?meta_path:Dynamic, ?code_paths:Dynamic, ?name:Dynamic, ?version:Dynamic, ?create_meta:Dynamic, ?create_sdist:Dynamic, ?create_wheel:Dynamic, ?force:Dynamic, ?silent:Dynamic):Dynamic;
	/**
		Generate an installable Python package for a pipeline. Includes binary data,
		meta and required installation files. A new directory will be created in the
		specified output directory, and the data will be copied over. If
		--create-meta is set and a meta.json already exists in the output directory,
		the existing values will be used as the defaults in the command-line prompt.
		After packaging, "python setup.py sdist" is run in the package directory,
		which will create a .tar.gz archive that can be installed via "pip install".
		
		If additional code files are provided (e.g. Python files containing custom
		registered functions like pipeline components), they are copied into the
		package and imported in the __init__.py.
		
		DOCS: https://spacy.io/api/cli#package
	**/
	static public function package_cli(?input_dir:Dynamic, ?output_dir:Dynamic, ?code_paths:Dynamic, ?meta_path:Dynamic, ?create_meta:Dynamic, ?name:Dynamic, ?version:Dynamic, ?build:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Parse a comma-separated string to a list and account for various
		formatting options. Mostly used to handle CLI arguments that take a list of
		comma-separated values.
		
		value (str): The value to parse.
		intify (bool): Whether to convert values to ints.
		RETURNS (Union[List[str], List[int]]): A list of strings or ints.
	**/
	static public function string_to_list(value:Dynamic, ?intify:Dynamic):Dynamic;
	/**
		Validate data against a given pydantic schema.
		
		obj (Dict[str, Any]): JSON-serializable data to validate.
		schema (pydantic.BaseModel): The schema to validate against.
		RETURNS (List[str]): A list of error messages, if available.
	**/
	static public function validate(schema:Dynamic, obj:Dynamic):Dynamic;
}