/* This file is generated, do not edit! */
package spacy.cli.project.run;
@:pythonImport("spacy.cli.project.run") extern class Run_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public var COMMAND : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var GIT_VERSION : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var PROJECT_FILE : Dynamic;
	static public var PROJECT_LOCK : Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Check if a command should be rerun because its settings or inputs/outputs
		changed.
		
		project_dir (Path): The current project directory.
		command (Dict[str, Any]): The command, as defined in the project.yml.
		strict_version (bool):
		RETURNS (bool): Whether to re-run the command.
	**/
	static public function check_rerun(project_dir:Dynamic, command:Dynamic, ?check_spacy_version:Dynamic, ?check_spacy_commit:Dynamic):Dynamic;
	/**
		Get the checksum for a file or directory given its file path. If a
		directory path is provided, this uses all files in that directory.
		
		path (Union[Path, str]): The file or directory path.
		RETURNS (str): The checksum.
	**/
	static public function get_checksum(path:Dynamic):Dynamic;
	/**
		Generate the file information for a list of paths (dependencies, outputs).
		Includes the file path and the file's checksum.
		
		project_dir (Path): The current project directory.
		paths (List[str]): The file paths.
		RETURNS (List[Dict[str, str]]): The lockfile entry for a file.
	**/
	static public function get_fileinfo(project_dir:Dynamic, paths:Dynamic):Dynamic;
	/**
		Get the hash for a JSON-serializable object.
		
		data: The data to hash.
		exclude (Iterable[str]): Top-level keys to exclude if data is a dict.
		RETURNS (str): The hash.
	**/
	static public function get_hash(data:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Get a lockfile entry for a given command. An entry includes the command,
		the script (command steps) and a list of dependencies and outputs with
		their paths and file hashes, if available. The format is based on the
		dvc.lock files, to keep things consistent.
		
		project_dir (Path): The current project directory.
		command (Dict[str, Any]): The command, as defined in the project.yml.
		RETURNS (Dict[str, Any]): The lockfile entry.
	**/
	static public function get_lock_entry(project_dir:Dynamic, command:Dynamic):Dynamic;
	/**
		Check whether a path is the current working directory.
		
		path (Union[Path, str]): The directory path.
		RETURNS (bool): Whether the path is the current working directory.
	**/
	static public function is_cwd(path:Dynamic):Dynamic;
	/**
		Compare two versions and check if they match in major and minor, without
		patch or prerelease identifiers. Used internally for compatibility checks
		that should be insensitive to patch releases.
		
		version_a (str): The first version
		version_b (str): The second version.
		RETURNS (bool): Whether the versions match.
	**/
	static public function is_minor_version_match(version_a:Dynamic, version_b:Dynamic):Dynamic;
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
	/**
		Mangle non-supported characters, for savages with ASCII terminals.
		
		string (unicode): The string to escape.
		errors (unicode): The str.encode errors setting. Defaults to `"replace"`.
		RETURNS (unicode): The escaped string.
	**/
	static public function locale_escape(string:Dynamic, ?errors:Dynamic):Dynamic;
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
		Simulate a CLI help prompt using the info available in the project.yml.
		
		project_dir (Path): The project directory.
		subcommand (Optional[str]): The subcommand or None. If a subcommand is
		    provided, the subcommand help is shown. Otherwise, the top-level help
		    and a list of available commands is printed.
	**/
	static public function print_run_help(project_dir:Dynamic, ?subcommand:Dynamic):Dynamic;
	static public function project_cli(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Run a named script defined in the project.yml. If the script is part
		of the default pipeline (defined in the "run" section), DVC is used to
		execute the command, so it can determine whether to rerun it. It then
		calls into "exec" to execute it.
		
		project_dir (Path): Path to project directory.
		subcommand (str): Name of command to run.
		overrides (Dict[str, Any]): Optional config overrides.
		force (bool): Force re-running, even if nothing changed.
		dry (bool): Perform a dry run and don't execute commands.
		capture (bool): Whether to capture the output and errors of individual commands.
		    If False, the stdout and stderr will not be redirected, and if there's an error,
		    sys.exit will be called with the return code. You should use capture=False
		    when you want to turn over execution to the command, and capture=True
		    when you want to run the command more like a function.
	**/
	static public function project_run(project_dir:Dynamic, subcommand:Dynamic, ?overrides:Dynamic, ?force:Dynamic, ?dry:Dynamic, ?capture:Dynamic):Dynamic;
	/**
		Run a named command or workflow defined in the project.yml. If a workflow
		name is specified, all commands in the workflow are run, in order. If
		commands define dependencies and/or outputs, they will only be re-run if
		state has changed.
		
		DOCS: https://spacy.io/api/cli#project-run
	**/
	static public function project_run_cli(ctx:Dynamic, ?subcommand:Dynamic, ?project_dir:Dynamic, ?force:Dynamic, ?dry:Dynamic, ?show_help:Dynamic):Dynamic;
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
		Run a sequence of commands in a subprocess, in order.
		
		commands (List[str]): The string commands.
		silent (bool): Don't print the commands.
		dry (bool): Perform a dry run and don't execut anything.
		capture (bool): Whether to capture the output and errors of individual commands.
		    If False, the stdout and stderr will not be redirected, and if there's an error,
		    sys.exit will be called with the return code. You should use capture=False
		    when you want to turn over execution to the command, and capture=True
		    when you want to run the command more like a function.
	**/
	static public function run_commands(?commands:Dynamic, ?silent:Dynamic, ?dry:Dynamic, ?capture:Dynamic):Dynamic;
	/**
		Split a string command using shlex. Handles platform compatibility.
		
		command (str) : The command to split
		RETURNS (List[str]): The split command.
	**/
	static public function split_command(command:Dynamic):Dynamic;
	/**
		Update the lockfile after running a command. Will create a lockfile if
		it doesn't yet exist and will add an entry for the current command, its
		script and dependencies/outputs.
		
		project_dir (Path): The current project directory.
		command (Dict[str, Any]): The command, as defined in the project.yml.
	**/
	static public function update_lockfile(project_dir:Dynamic, command:Dynamic):Dynamic;
	/**
		Check that a subcommand is valid and defined. Raises an error otherwise.
		
		commands (Sequence[str]): The available commands.
		subcommand (str): The subcommand.
	**/
	static public function validate_subcommand(commands:Dynamic, workflows:Dynamic, subcommand:Dynamic):Dynamic;
	/**
		Change current working directory and returns to previous on exit.
		
		path (str / Path): The directory to navigate to.
		YIELDS (Path): The absolute path to the current working directory. This
		    should be used if the block needs to perform actions within the working
		    directory, to prevent mismatches with relative paths.
	**/
	static public function working_dir(path:Dynamic):Dynamic;
}