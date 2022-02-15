/* This file is generated, do not edit! */
package spacy.cli.download;
@:pythonImport("spacy.cli.download") extern class Download_Module {
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public var OLD_MODEL_SHORTCUTS : Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var SDIST_SUFFIX : Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var WHEEL_SUFFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function app(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function download(model:Dynamic, ?direct:Dynamic, ?sdist:Dynamic, ?pip_args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Download compatible trained pipeline from the default download path using
		pip. If --direct flag is set, the command expects the full package name with
		version. For direct downloads, the compatibility check will be skipped. All
		additional arguments provided to this command will be passed to `pip install`
		on package installation.
		
		DOCS: https://spacy.io/api/cli#download
		AVAILABLE PACKAGES: https://spacy.io/models
	**/
	static public function download_cli(ctx:Dynamic, ?model:Dynamic, ?direct:Dynamic, ?sdist:Dynamic):Dynamic;
	static public function download_model(filename:Dynamic, ?user_pip_args:Dynamic):Dynamic;
	static public function get_compatibility():Dynamic;
	/**
		Get the major + minor version (without patch or prerelease identifiers).
		
		version (str): The version.
		RETURNS (str): The major + minor version or None if version is invalid.
	**/
	static public function get_minor_version(version:Dynamic):Dynamic;
	static public function get_version(model:Dynamic, comp:Dynamic):Dynamic;
	/**
		Check if string maps to a package installed via pip.
		
		name (str): Name of package.
		RETURNS (bool): True if installed package, False if not.
	**/
	static public function is_package(name:Dynamic):Dynamic;
	static public var msg : Dynamic;
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
}