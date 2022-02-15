/* This file is generated, do not edit! */
package spacy.cli.project.dvc;
@:pythonImport("spacy.cli.project.dvc") extern class Dvc_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public var COMMAND : Dynamic;
	static public var DVC_CONFIG : Dynamic;
	static public var DVC_CONFIG_COMMENT : Dynamic;
	static public var DVC_DIR : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NAME : Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var PROJECT_FILE : Dynamic;
	static public var UPDATE_COMMAND : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Validate workflows provided in project.yml and check that a given
		workflow can be used to generate a DVC config.
		
		workflows (List[str]): Names of the available workflows.
		workflow (Optional[str]): The name of the workflow to convert.
	**/
	static public function check_workflows(workflows:Dynamic, ?workflow:Dynamic):Dynamic;
	/**
		Ensure that the "dvc" command is available and that the current project
		directory is an initialized DVC project.
	**/
	static public function ensure_dvc(project_dir:Dynamic):Dynamic;
	/**
		Get the hash for a JSON-serializable object.
		
		data: The data to hash.
		exclude (Iterable[str]): Top-level keys to exclude if data is a dict.
		RETURNS (str): The hash.
	**/
	static public function get_hash(data:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Join a command using shlex. shlex.join is only available for Python 3.8+,
		so we're using a workaround here.
		
		command (List[str]): The command to join.
		RETURNS (str): The joined command
	**/
	static public function join_command(command:Dynamic):Dynamic;
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
	static public function project_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Update the auto-generated Data Version Control (DVC) config file. A DVC
		project can only define one pipeline, so you need to specify one workflow
		defined in the project.yml. Will only update the file if the checksum changed.
		
		project_dir (Path): The project directory.
		workflow (Optional[str]): Optional name of workflow defined in project.yml.
		    If not set, the first workflow will be used.
		verbose (bool): Print more info.
		force (bool): Force update DVC config.
	**/
	static public function project_update_dvc(project_dir:Dynamic, ?workflow:Dynamic, ?verbose:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Auto-generate Data Version Control (DVC) config. A DVC
		project can only define one pipeline, so you need to specify one workflow
		defined in the project.yml. If no workflow is specified, the first defined
		workflow is used. The DVC config will only be updated if the project.yml
		changed.
		
		DOCS: https://spacy.io/api/cli#project-dvc
	**/
	static public function project_update_dvc_cli(?project_dir:Dynamic, ?workflow:Dynamic, ?verbose:Dynamic, ?force:Dynamic):Dynamic;
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
	/**
		Run a sequence of DVC commands in a subprocess, in order.
		
		commands (List[str]): The string commands without the leading "dvc".
		flags (Dict[str, bool]): Conditional flags to be added to command. Makes it
		    easier to pass flags like --quiet that depend on a variable or
		    command-line setting while avoiding lots of nested conditionals.
	**/
	static public function run_dvc_commands(?commands:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Split a string command using shlex. Handles platform compatibility.
		
		command (str) : The command to split
		RETURNS (List[str]): The split command.
	**/
	static public function split_command(command:Dynamic):Dynamic;
	/**
		Re-run the DVC commands in dry mode and update dvc.yaml file in the
		project directory. The file is auto-generated based on the config. The
		first line of the auto-generated file specifies the hash of the config
		dict, so if any of the config values change, the DVC config is regenerated.
		
		path (Path): The path to the project directory.
		config (Dict[str, Any]): The loaded project.yml.
		verbose (bool): Whether to print additional info (via DVC).
		silent (bool): Don't output anything (via DVC).
		force (bool): Force update, even if hashes match.
		RETURNS (bool): Whether the DVC config file was updated.
	**/
	static public function update_dvc_config(path:Dynamic, config:Dynamic, ?workflow:Dynamic, ?verbose:Dynamic, ?silent:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Change current working directory and returns to previous on exit.
		
		path (str / Path): The directory to navigate to.
		YIELDS (Path): The absolute path to the current working directory. This
		    should be used if the block needs to perform actions within the working
		    directory, to prevent mismatches with relative paths.
	**/
	static public function working_dir(path:Dynamic):Dynamic;
}