/* This file is generated, do not edit! */
package spacy.cli.project.remote_storage;
@:pythonImport("spacy.cli.project.remote_storage") extern class Remote_storage_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var GIT_VERSION : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert the value of an environment variable to a boolean. Add special
		check for "0" (falsy) and consider everything else truthy, except unset.
		
		env_var (str): The name of the environment variable to check.
		RETURNS (bool): Its boolean value.
	**/
	static public function check_bool_env_var(env_var:Dynamic):Dynamic;
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
	/**
		Create a hash representing the execution of a command. This includes the
		currently installed packages, whatever environment variables have been marked
		as relevant, and the command.
	**/
	static public function get_command_hash(site_hash:Dynamic, env_hash:Dynamic, deps:Dynamic, cmd:Dynamic):Dynamic;
	static public function get_content_hash(loc:Dynamic):Dynamic;
	/**
		Construct a hash of the environment variables that will be passed into
		the commands.
		
		Values in the env dict may be references to the current os.environ, using
		the syntax $ENV_VAR to mean os.environ[ENV_VAR]
	**/
	static public function get_env_hash(env:Dynamic):Dynamic;
	/**
		Get the hash for a JSON-serializable object.
		
		data: The data to hash.
		exclude (Iterable[str]): Top-level keys to exclude if data is a dict.
		RETURNS (str): The hash.
	**/
	static public function get_hash(data:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Get the major + minor version (without patch or prerelease identifiers).
		
		version (str): The version.
		RETURNS (str): The major + minor version or None if version is invalid.
	**/
	static public function get_minor_version(version:Dynamic):Dynamic;
	/**
		Hash the current Python environment's site-packages contents, including
		the name and version of the libraries. The list we're hashing is what
		`pip freeze` would output.
	**/
	static public function get_site_hash():Dynamic;
	/**
		Execute a block in a temporary directory and remove the directory and
		its contents at the end of the with block.
		
		YIELDS (Path): The path of the temp directory.
	**/
	static public function make_tempdir():Dynamic;
}