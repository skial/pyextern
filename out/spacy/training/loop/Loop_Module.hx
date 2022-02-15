/* This file is generated, do not edit! */
package spacy.training.loop;
@:pythonImport("spacy.training.loop") extern class Loop_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DIR_MODEL_BEST : Dynamic;
	static public var DIR_MODEL_LAST : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Remove an existing output directory. Typically used to ensure that that
		a directory like model-best and its contents aren't just being overwritten
		by nlp.to_disk, which could preserve existing subdirectories (e.g.
		components that don't exist anymore).
	**/
	static public function clean_output_dir(path:Dynamic):Dynamic;
	/**
		Yield a constant rate.
	**/
	static public function constant(rate:Dynamic):Dynamic;
	static public function create_before_to_disk_callback(callback:Dynamic):Dynamic;
	static public function create_evaluation_callback(nlp:Dynamic, dev_corpus:Dynamic, weights:Dynamic):Dynamic;
	static public function create_train_batches(nlp:Dynamic, corpus:Dynamic, batcher:Dynamic, max_epochs:Dynamic):Dynamic;
	/**
		Set the random seed across random, numpy.random and cupy.random.
	**/
	static public function fix_random_seed(?seed:Dynamic):Dynamic;
	static public var logger : Dynamic;
	/**
		Resolve one or more "dot notation" names, e.g. corpora.train.
		The paths could point anywhere into the config, so we don't know which
		top-level section we'll be looking within.
		
		We resolve the whole top-level section, although we could resolve less --
		we could find the lowest part of the tree.
	**/
	static public function resolve_dot_names(config:Dynamic, dot_names:Dynamic):Dynamic;
	/**
		Route GPU memory allocation via PyTorch or tensorflow.
		Raise an error if the given argument does not match either of the two.
	**/
	static public function set_gpu_allocator(allocator:Dynamic):Dynamic;
	static public function subdivide_batch(batch:Dynamic, accumulate_gradient:Dynamic):Dynamic;
	/**
		perf_counter() -> float
		
		Performance counter for benchmarking.
	**/
	static public function timer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Train a pipeline.
		
		nlp (Language): The initialized nlp object with the full config.
		output_path (Optional[Path]): Optional output path to save trained model to.
		use_gpu (int): Whether to train on GPU. Make sure to call require_gpu
		    before calling this function.
		stdout (file): A file-like object to write output messages. To disable
		    printing, set to io.StringIO.
		stderr (file): A second file-like object to write output messages. To disable
		    printing, set to io.StringIO.
		
		RETURNS (tuple): The final nlp object and the path to the exported model.
	**/
	static public function train(nlp:Dynamic, ?output_path:Dynamic, ?use_gpu:Dynamic, ?stdout:Dynamic, ?stderr:Dynamic):Dynamic;
	/**
		Train until an evaluation stops improving. Works as a generator,
		with each iteration yielding a tuple `(batch, info, is_best_checkpoint)`,
		where info is a dict, and is_best_checkpoint is in [True, False, None] --
		None indicating that the iteration was not evaluated as a checkpoint.
		The evaluation is conducted by calling the evaluate callback.
		
		Positional arguments:
		    nlp: The spaCy pipeline to evaluate.
		    optimizer: The optimizer callable.
		    train_data (Iterable[Batch]): A generator of batches, with the training
		        data. Each batch should be a Sized[Tuple[Input, Annot]]. The training
		        data iterable needs to take care of iterating over the epochs and
		        shuffling.
		    evaluate (Callable[[], Tuple[float, Any]]): A callback to perform evaluation.
		        The callback should take no arguments and return a tuple
		        `(main_score, other_scores)`. The main_score should be a float where
		        higher is better. other_scores can be any object.
		
		Every iteration, the function yields out a tuple with:
		
		* batch: A list of Example objects.
		* info: A dict with various information about the last update (see below).
		* is_best_checkpoint: A value in None, False, True, indicating whether this
		    was the best evaluation so far. You should use this to save the model
		    checkpoints during training. If None, evaluation was not conducted on
		    that iteration. False means evaluation was conducted, but a previous
		    evaluation was better.
		
		The info dict provides the following information:
		
		    epoch (int): How many passes over the data have been completed.
		    step (int): How many steps have been completed.
		    score (float): The main score from the last evaluation.
		    other_scores: : The other scores from the last evaluation.
		    losses: The accumulated losses throughout training.
		    checkpoints: A list of previous results, where each result is a
		        (score, step, epoch) tuple.
	**/
	static public function train_while_improving(nlp:Dynamic, optimizer:Dynamic, train_data:Dynamic, evaluate:Dynamic, dropout:Dynamic, eval_frequency:Dynamic, accumulate_gradient:Dynamic, patience:Dynamic, max_steps:Dynamic, exclude:Dynamic, annotating_components:Dynamic):Dynamic;
	static public function update_meta(training:Dynamic, nlp:Dynamic, info:Dynamic):Dynamic;
}