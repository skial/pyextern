/* This file is generated, do not edit! */
package spacy.cli.project.assets;
@:pythonImport("spacy.cli.project.assets") extern class Assets_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var PROJECT_FILE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check and validate assets without a URL (private assets that the user
		has to provide themselves) and give feedback about the checksum.
		
		dest (Path): Destination path of the asset.
		checksum (Optional[str]): Optional checksum of the expected file.
	**/
	static public function check_private_asset(dest:Dynamic, ?checksum:Dynamic):Dynamic;
	/**
		Check and convert the asset URL if needed.
		
		url (str): The asset URL.
		RETURNS (str): The converted URL.
	**/
	static public function convert_asset_url(url:Dynamic):Dynamic;
	/**
		Download a file using smart_open.
		
		url (str): The URL of the file.
		dest (Path): The destination path.
		force (bool): Whether to force download even if file exists.
		    If False, the download will be skipped.
	**/
	static public function download_file(src:Dynamic, dest:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Ensure string is converted to a Path.
		
		path (Any): Anything. If string, it's converted to Path.
		RETURNS: Path or original argument.
	**/
	static public function ensure_path(path:Dynamic):Dynamic;
	/**
		Fetch an asset from a given URL or path. If a checksum is provided and a
		local file exists, it's only re-downloaded if the checksum doesn't match.
		
		project_path (Path): Path to project directory.
		url (str): URL or path to asset.
		checksum (Optional[str]): Optional expected checksum of local file.
		RETURNS (Optional[Path]): The path to the fetched asset or None if fetching
		    the asset failed.
	**/
	static public function fetch_asset(project_path:Dynamic, url:Dynamic, dest:Dynamic, ?checksum:Dynamic):Dynamic;
	/**
		Get the checksum for a file or directory given its file path. If a
		directory path is provided, this uses all files in that directory.
		
		path (Union[Path, str]): The file or directory path.
		RETURNS (str): The checksum.
	**/
	static public function get_checksum(path:Dynamic):Dynamic;
	/**
		Get the version of git and raise an error if calling 'git --version' fails.
		
		error (str): The error message to show.
		RETURNS (Tuple[int, int]): The version as a (major, minor) tuple. Returns
		    (0, 0) if the version couldn't be determined.
	**/
	static public function get_git_version(?error:Dynamic):Dynamic;
	static public function git_checkout(repo:Dynamic, subpath:Dynamic, dest:Dynamic, ?branch:Dynamic, ?sparse:Dynamic):Dynamic;
	/**
		Load the project.yml file from a directory and validate it. Also make
		sure that all directories defined in the config exist.
		
		path (Path): The path to the project directory.
		interpolate (bool): Whether to substitute project variables.
		overrides (Dict[str, Any]): Optional config overrides.
		RETURNS (Dict[str, Any]): The loaded project.yml.
	**/
	static public function load_project_config(path:Dynamic, ?interpolate:Dynamic, ?overrides:Dynamic):Dynamic;
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
		Fetch assets for a project using DVC if possible.
		
		project_dir (Path): Path to project directory.
	**/
	static public function project_assets(project_dir:Dynamic, ?overrides:Dynamic, ?sparse_checkout:Dynamic):Dynamic;
	/**
		Fetch project assets like datasets and pretrained weights. Assets are
		defined in the "assets" section of the project.yml. If a checksum is
		provided in the project.yml, the file is only downloaded if no local file
		with the same checksum exists.
		
		DOCS: https://spacy.io/api/cli#project-assets
	**/
	static public function project_assets_cli(ctx:Dynamic, ?project_dir:Dynamic, ?sparse_checkout:Dynamic):Dynamic;
	static public function project_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Change current working directory and returns to previous on exit.
		
		path (str / Path): The directory to navigate to.
		YIELDS (Path): The absolute path to the current working directory. This
		    should be used if the block needs to perform actions within the working
		    directory, to prevent mismatches with relative paths.
	**/
	static public function working_dir(path:Dynamic):Dynamic;
}