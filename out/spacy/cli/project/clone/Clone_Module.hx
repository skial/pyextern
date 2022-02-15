/* This file is generated, do not edit! */
package spacy.cli.project.clone;
@:pythonImport("spacy.cli.project.clone") extern class Clone_Module {
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public var COMMAND : Dynamic;
	static public var DEFAULT_BRANCH : Dynamic;
	static public var DEFAULT_PROJECTS_BRANCH : Dynamic;
	static public var DEFAULT_REPO : Dynamic;
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
		Check and validate that the destination path can be used to clone. Will
		check that Git is available and that the destination path is suitable.
		
		name (str): Name of the directory to clone from the repo.
		dest (Path): Local destination of cloned directory.
		repo (str): URL of the repo to clone from.
	**/
	static public function check_clone(name:Dynamic, dest:Dynamic, repo:Dynamic):Dynamic;
	/**
		Ensure string is converted to a Path.
		
		path (Any): Anything. If string, it's converted to Path.
		RETURNS: Path or original argument.
	**/
	static public function ensure_path(path:Dynamic):Dynamic;
	/**
		Get the version of git and raise an error if calling 'git --version' fails.
		
		error (str): The error message to show.
		RETURNS (Tuple[int, int]): The version as a (major, minor) tuple. Returns
		    (0, 0) if the version couldn't be determined.
	**/
	static public function get_git_version(?error:Dynamic):Dynamic;
	static public function git_checkout(repo:Dynamic, subpath:Dynamic, dest:Dynamic, ?branch:Dynamic, ?sparse:Dynamic):Dynamic;
	static public var msg : Dynamic;
	static public function project_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Clone a project template from a repository.
		
		name (str): Name of subdirectory to clone.
		dest (Path): Destination path of cloned project.
		repo (str): URL of Git repo containing project templates.
		branch (str): The branch to clone from
	**/
	static public function project_clone(name:Dynamic, dest:Dynamic, ?repo:Dynamic, ?branch:Dynamic, ?sparse_checkout:Dynamic):Dynamic;
	/**
		Clone a project template from a repository. Calls into "git" and will
		only download the files from the given subdirectory. The GitHub repo
		defaults to the official spaCy template repo, but can be customized
		(including using a private repo).
		
		DOCS: https://spacy.io/api/cli#project-clone
	**/
	static public function project_clone_cli(?name:Dynamic, ?dest:Dynamic, ?repo:Dynamic, ?branch:Dynamic, ?sparse_checkout:Dynamic):Dynamic;
}