/* This file is generated, do not edit! */
package spacy.cli.evaluate;
@:pythonImport("spacy.cli.evaluate") extern class Evaluate_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function app(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function evaluate(model:Dynamic, data_path:Dynamic, ?output:Dynamic, ?use_gpu:Dynamic, ?gold_preproc:Dynamic, ?displacy_path:Dynamic, ?displacy_limit:Dynamic, ?silent:Dynamic, ?spans_key:Dynamic):Dynamic;
	/**
		Evaluate a trained pipeline. Expects a loadable spaCy pipeline and evaluation
		data in the binary .spacy format. The --gold-preproc option sets up the
		evaluation examples with gold-standard sentences and tokens for the
		predictions. Gold preprocessing helps the annotations align to the
		tokenization, and may result in sequences of more consistent length. However,
		it may reduce runtime accuracy due to train/test skew. To render a sample of
		dependency parses in a HTML file, set as output directory as the
		displacy_path argument.
		
		DOCS: https://spacy.io/api/cli#evaluate
	**/
	static public function evaluate_cli(?model:Dynamic, ?data_path:Dynamic, ?output:Dynamic, ?code_path:Dynamic, ?use_gpu:Dynamic, ?gold_preproc:Dynamic, ?displacy_path:Dynamic, ?displacy_limit:Dynamic):Dynamic;
	/**
		Set the random seed across random, numpy.random and cupy.random.
	**/
	static public function fix_random_seed(?seed:Dynamic):Dynamic;
	static public function handle_scores_per_type(scores:Dynamic, ?data:Dynamic, ?spans_key:Dynamic, ?silent:Dynamic):Dynamic;
	/**
		Helper to import Python file provided in training commands / commands
		using the config. This makes custom registered functions available.
	**/
	static public function import_code(code_path:Dynamic):Dynamic;
	static public function print_prf_per_type(msg:Dynamic, scores:Dynamic, name:Dynamic, type:Dynamic):Dynamic;
	static public function print_textcats_auc_per_cat(msg:Dynamic, scores:Dynamic):Dynamic;
	static public function render_parses(docs:Dynamic, output_path:Dynamic, ?model_name:Dynamic, ?limit:Dynamic, ?deps:Dynamic, ?ents:Dynamic):Dynamic;
	/**
		Configure the GPU and log info.
	**/
	static public function setup_gpu(use_gpu:Dynamic, ?silent:Dynamic):Dynamic;
}