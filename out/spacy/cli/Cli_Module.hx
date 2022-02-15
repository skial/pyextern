/* This file is generated, do not edit! */
package spacy.cli;
@:pythonImport("spacy.cli") extern class Cli_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function app(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Assemble a spaCy pipeline from a config file. The config file includes
		all settings for initializing the pipeline. To override settings in the
		config, e.g. settings that point to local paths or that you want to
		experiment with, you can override them as command line options. The
		--code argument lets you pass in a Python file that can be used to
		register custom functions that are referenced in the config.
		
		DOCS: https://spacy.io/api/cli#assemble
	**/
	static public function assemble_cli(ctx:Dynamic, ?config_path:Dynamic, ?output_path:Dynamic, ?code_path:Dynamic, ?verbose:Dynamic):Dynamic;
	static public function convert(input_path:Dynamic, output_dir:Dynamic, ?file_type:Dynamic, ?n_sents:Dynamic, ?seg_sents:Dynamic, ?model:Dynamic, ?morphology:Dynamic, ?merge_subtokens:Dynamic, ?converter:Dynamic, ?ner_map:Dynamic, ?lang:Dynamic, ?concatenate:Dynamic, ?silent:Dynamic, ?msg:Dynamic):Dynamic;
	static public function debug_config(config_path:Dynamic, ?overrides:Dynamic, ?show_funcs:Dynamic, ?show_vars:Dynamic):Dynamic;
	static public function debug_data(config_path:Dynamic, ?config_overrides:Dynamic, ?ignore_warnings:Dynamic, ?verbose:Dynamic, ?no_format:Dynamic, ?silent:Dynamic):Dynamic;
	static public function debug_model(config:Dynamic, resolved_train_config:Dynamic, nlp:Dynamic, pipe:Dynamic, ?print_settings:Dynamic):Dynamic;
	static public function download(model:Dynamic, ?direct:Dynamic, ?sdist:Dynamic, ?pip_args:python.VarArgs<Dynamic>):Dynamic;
	static public function evaluate(model:Dynamic, data_path:Dynamic, ?output:Dynamic, ?use_gpu:Dynamic, ?gold_preproc:Dynamic, ?displacy_path:Dynamic, ?displacy_limit:Dynamic, ?silent:Dynamic, ?spans_key:Dynamic):Dynamic;
	static public function fill_config(output_file:Dynamic, base_path:Dynamic, ?pretraining:Dynamic, ?diff:Dynamic, ?silent:Dynamic):Dynamic;
	static public function info(?model:Dynamic, ?markdown:Dynamic, ?silent:Dynamic, ?exclude:Dynamic):Dynamic;
	static public function init_config(lang:Dynamic, pipeline:Dynamic, optimize:Dynamic, gpu:Dynamic, ?pretraining:Dynamic, ?silent:Dynamic):Dynamic;
	static public function init_pipeline_cli(ctx:Dynamic, ?config_path:Dynamic, ?output_path:Dynamic, ?code_path:Dynamic, ?verbose:Dynamic, ?use_gpu:Dynamic):Dynamic;
	/**
		As of spaCy v3.0, symlinks like "en" are not supported anymore. You can load trained
		pipeline packages using their full names or from a directory path.
	**/
	static public function link(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var msg : Dynamic;
	@:native("package")
	static public function _package(input_dir:Dynamic, output_dir:Dynamic, ?meta_path:Dynamic, ?code_paths:Dynamic, ?name:Dynamic, ?version:Dynamic, ?create_meta:Dynamic, ?create_sdist:Dynamic, ?create_wheel:Dynamic, ?force:Dynamic, ?silent:Dynamic):Dynamic;
	static public function pretrain(config:Dynamic, output_dir:Dynamic, ?resume_path:Dynamic, ?epoch_resume:Dynamic, ?use_gpu:Dynamic, ?silent:Dynamic):Dynamic;
	static public function profile(model:Dynamic, ?inputs:Dynamic, ?n_texts:Dynamic):Dynamic;
	/**
		Fetch assets for a project using DVC if possible.
		
		project_dir (Path): Path to project directory.
	**/
	static public function project_assets(project_dir:Dynamic, ?overrides:Dynamic, ?sparse_checkout:Dynamic):Dynamic;
	/**
		Clone a project template from a repository.
		
		name (str): Name of subdirectory to clone.
		dest (Path): Destination path of cloned project.
		repo (str): URL of Git repo containing project templates.
		branch (str): The branch to clone from
	**/
	static public function project_clone(name:Dynamic, dest:Dynamic, ?repo:Dynamic, ?branch:Dynamic, ?sparse_checkout:Dynamic):Dynamic;
	static public function project_document(project_dir:Dynamic, output_file:Dynamic, ?no_emoji:Dynamic):Dynamic;
	static public function project_pull(project_dir:Dynamic, remote:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Persist outputs to a remote storage. You can alias remotes in your project.yml
		by mapping them to storage paths. A storage can be anything that the smart-open
		library can upload to, e.g. gcs, aws, ssh, local directories etc
	**/
	static public function project_push(project_dir:Dynamic, remote:Dynamic):Dynamic;
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
	static public function setup_cli():Dynamic;
	/**
		Train or update a spaCy pipeline. Requires data in spaCy's binary format. To
		convert data from other formats, use the `spacy convert` command. The
		config file includes all settings and hyperparameters used during training.
		To override settings in the config, e.g. settings that point to local
		paths or that you want to experiment with, you can override them as
		command line options. For instance, --training.batch_size 128 overrides
		the value of "batch_size" in the block "[training]". The --code argument
		lets you pass in a Python file that's imported before training. It can be
		used to register custom functions and architectures that can then be
		referenced in the config.
		
		DOCS: https://spacy.io/api/cli#train
	**/
	static public function train_cli(ctx:Dynamic, ?config_path:Dynamic, ?output_path:Dynamic, ?code_path:Dynamic, ?verbose:Dynamic, ?use_gpu:Dynamic):Dynamic;
	static public function validate():Dynamic;
}