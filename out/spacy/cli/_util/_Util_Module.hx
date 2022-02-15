/* This file is generated, do not edit! */
package spacy.cli._util;
@:pythonImport("spacy.cli._util") extern class _Util_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public var COMMAND : Dynamic;
	static public var DEBUG_HELP : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var HELP : Dynamic;
	static public var INIT_HELP : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var NAME : Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var PROJECT_FILE : Dynamic;
	static public var PROJECT_HELP : Dynamic;
	static public var PROJECT_LOCK : Dynamic;
	static public var SDIST_SUFFIX : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
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
	static public function _http_to_git(repo:Dynamic):Dynamic;
	static public function _parse_override(value:Dynamic):Dynamic;
	static public function _parse_overrides(args:Dynamic, ?is_cli:Dynamic):Dynamic;
	static public function app(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function debug_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Download a file using smart_open.
		
		url (str): The URL of the file.
		dest (Path): The destination path.
		force (bool): Whether to force download even if file exists.
		    If False, the download will be skipped.
	**/
	static public function download_file(src:Dynamic, dest:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Temporary helper to prevent importing Pathy globally (which can cause
		slow and annoying Google Cloud warning).
	**/
	static public function ensure_pathy(path:Dynamic):Dynamic;
	/**
		Get the checksum for a file or directory given its file path. If a
		directory path is provided, this uses all files in that directory.
		
		path (Union[Path, str]): The file or directory path.
		RETURNS (str): The checksum.
	**/
	static public function get_checksum(path:Dynamic):Dynamic;
	static public function get_command(typer_instance:Dynamic):Dynamic;
	/**
		Get the version of git and raise an error if calling 'git --version' fails.
		
		error (str): The error message to show.
		RETURNS (Tuple[int, int]): The version as a (major, minor) tuple. Returns
		    (0, 0) if the version couldn't be determined.
	**/
	static public function get_git_version(?error:Dynamic):Dynamic;
	/**
		Get the hash for a JSON-serializable object.
		
		data: The data to hash.
		exclude (Iterable[str]): Top-level keys to exclude if data is a dict.
		RETURNS (str): The hash.
	**/
	static public function get_hash(data:Dynamic, ?exclude:Dynamic):Dynamic;
	static public function git_checkout(repo:Dynamic, subpath:Dynamic, dest:Dynamic, ?branch:Dynamic, ?sparse:Dynamic):Dynamic;
	static public function git_sparse_checkout(repo:Dynamic, subpath:Dynamic, dest:Dynamic, branch:Dynamic):Dynamic;
	static public function gpu_is_available():Dynamic;
	static public var has_cupy : Dynamic;
	/**
		Helper to import Python file provided in training commands / commands
		using the config. This makes custom registered functions available.
	**/
	static public function import_code(code_path:Dynamic):Dynamic;
	/**
		Import module from a file. Used to load models from a directory.
		
		name (str): Name of module to load.
		loc (str / Path): Path to the file.
		RETURNS: The loaded module.
	**/
	static public function import_file(name:Dynamic, loc:Dynamic):Dynamic;
	static public function init_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Check whether `child` is a path contained within `parent`.
	**/
	static public function is_subpath_of(parent:Dynamic, child:Dynamic):Dynamic;
	/**
		Load the project.yml file from a directory and validate it. Also make
		sure that all directories defined in the config exist.
		
		path (Path): The path to the project directory.
		interpolate (bool): Whether to substitute project variables.
		overrides (Dict[str, Any]): Optional config overrides.
		RETURNS (Dict[str, Any]): The loaded project.yml.
	**/
	static public function load_project_config(path:Dynamic, ?interpolate:Dynamic, ?overrides:Dynamic):Dynamic;
	static public var logger : Dynamic;
	/**
		Execute a block in a temporary directory and remove the directory and
		its contents at the end of the with block.
		
		YIELDS (Path): The path of the temp directory.
	**/
	static public function make_tempdir():Dynamic;
	static public var msg : Dynamic;
	/**
		Decorator for overloaded functions/methods.
		
		In a stub file, place two or more stub definitions for the same
		function in a row, each decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		
		In a non-stub file (i.e. a regular .py file), do the same but
		follow it with an implementation.  The implementation should *not*
		be decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		  def utf8(value):
		      # implementation goes here
	**/
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Generate a dictionary of config overrides based on the extra arguments
		provided on the CLI, e.g. --training.batch_size to override
		"training.batch_size". Arguments without a "." are considered invalid,
		since the config only allows top-level sections to exist.
		
		env_vars (Optional[str]): Optional environment variable to read from.
		RETURNS (Dict[str, Any]): The parsed dict, keyed by nested config setting.
	**/
	static public function parse_config_overrides(args:Dynamic, ?env_var:Dynamic):Dynamic;
	static public function project_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function require_gpu(?gpu_id:Dynamic):Dynamic;
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
	static public function setup_cli():Dynamic;
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
	/**
		Split an argument string as with :func:`shlex.split`, but don't
		fail if the string is incomplete. Ignores a missing closing quote or
		incomplete escape sequence and uses the partial token as-is.
		
		.. code-block:: python
		
		    split_arg_string("example 'my file")
		    ["example", "my file"]
		
		    split_arg_string("example my\")
		    ["example", "my"]
		
		:param string: String to split.
	**/
	static public function split_arg_string(string:Dynamic):Dynamic;
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
		Interpolate variables in the project file using the config system.
		
		config (Dict[str, Any]): The project config.
		overrides (Dict[str, Any]): Optional config overrides.
		key (str): Key containing variables in project config.
		env_key (str): Key containing environment variable mapping in project config.
		RETURNS (Dict[str, Any]): The interpolated project config.
	**/
	static public function substitute_project_variables(config:Dynamic, ?overrides:Dynamic, ?key:Dynamic, ?env_key:Dynamic):Dynamic;
	/**
		Upload a file.
		
		src (Path): The source path.
		url (str): The destination URL to upload to.
	**/
	static public function upload_file(src:Dynamic, dest:Dynamic):Dynamic;
	/**
		Validate data against a given pydantic schema.
		
		obj (Dict[str, Any]): JSON-serializable data to validate.
		schema (pydantic.BaseModel): The schema to validate against.
		RETURNS (List[str]): A list of error messages, if available.
	**/
	static public function validate(schema:Dynamic, obj:Dynamic):Dynamic;
	/**
		Check that project commands and workflows are valid, don't contain
		duplicates, don't clash  and only refer to commands that exist.
		
		config (Dict[str, Any]): The loaded config.
	**/
	static public function validate_project_commands(config:Dynamic):Dynamic;
	/**
		If the project defines a compatible spaCy version range, chec that it's
		compatible with the current version of spaCy.
		
		config (Dict[str, Any]): The loaded config.
	**/
	static public function validate_project_version(config:Dynamic):Dynamic;
}