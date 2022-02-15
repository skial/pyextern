/* This file is generated, do not edit! */
package spacy.cli.project.push;
@:pythonImport("spacy.cli.project.push") extern class Push_Module {
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_not_empty_dir(loc:Dynamic):Dynamic;
	/**
		Create a hash representing the execution of a command. This includes the
		currently installed packages, whatever environment variables have been marked
		as relevant, and the command.
	**/
	static public function get_command_hash(site_hash:Dynamic, env_hash:Dynamic, deps:Dynamic, cmd:Dynamic):Dynamic;
	static public function get_content_hash(loc:Dynamic):Dynamic;
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
	static public var msg : Dynamic;
	static public function project_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Persist outputs to a remote storage. You can alias remotes in your project.yml
		by mapping them to storage paths. A storage can be anything that the smart-open
		library can upload to, e.g. gcs, aws, ssh, local directories etc
	**/
	static public function project_push(project_dir:Dynamic, remote:Dynamic):Dynamic;
	/**
		Persist outputs to a remote storage. You can alias remotes in your
		project.yml by mapping them to storage paths. A storage can be anything that
		the smart-open library can upload to, e.g. AWS, Google Cloud Storage, SSH,
		local directories etc.
		
		DOCS: https://spacy.io/api/cli#project-push
	**/
	static public function project_push_cli(?remote:Dynamic, ?project_dir:Dynamic):Dynamic;
}