/* This file is generated, do not edit! */
package spacy.cli.project.document;
@:pythonImport("spacy.cli.project.document") extern class Document_Module {
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public var DOCS_URL : Dynamic;
	static public var INTRO_ASSETS : Dynamic;
	static public var INTRO_COMMANDS : Dynamic;
	static public var INTRO_PROJECT : Dynamic;
	static public var INTRO_WORKFLOWS : Dynamic;
	static public var MARKER_END : Dynamic;
	static public var MARKER_IGNORE : Dynamic;
	static public var MARKER_START : Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
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
	static public function project_document(project_dir:Dynamic, output_file:Dynamic, ?no_emoji:Dynamic):Dynamic;
	/**
		Auto-generate a README.md for a project. If the content is saved to a file,
		hidden markers are added so you can add custom content before or after the
		auto-generated section and only the auto-generated docs will be replaced
		when you re-run the command.
		
		DOCS: https://spacy.io/api/cli#project-document
	**/
	static public function project_document_cli(?project_dir:Dynamic, ?output_file:Dynamic, ?no_emoji:Dynamic):Dynamic;
	/**
		Change current working directory and returns to previous on exit.
		
		path (str / Path): The directory to navigate to.
		YIELDS (Path): The absolute path to the current working directory. This
		    should be used if the block needs to perform actions within the working
		    directory, to prevent mismatches with relative paths.
	**/
	static public function working_dir(path:Dynamic):Dynamic;
}