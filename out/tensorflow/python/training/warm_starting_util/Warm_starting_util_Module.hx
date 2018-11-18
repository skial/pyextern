/* This file is generated, do not edit! */
package tensorflow.python.training.warm_starting_util;
@:pythonImport("tensorflow.python.training.warm_starting_util") extern class Warm_starting_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Collects and groups (possibly partitioned) variables into a dictionary.
		
		The variables can be provided explicitly through vars_to_warm_start, or they
		are retrieved from collections (see below).
		
		Args:
		  vars_to_warm_start: One of the following:
		
		    - A regular expression (string) that captures which variables to
		      warm-start (see tf.get_collection).  This expression will only consider
		      variables in the TRAINABLE_VARIABLES collection.
		    - A list of Variables to warm-start.
		    - A list of strings, each representing a full variable name to warm-start.
		    - `None`, in which case only variables specified in
		      `var_name_to_vocab_info` will be warm-started.
		Returns:
		  A dictionary mapping variable names (strings) to lists of Variables.
		Raises:
		  ValueError: If vars_to_warm_start is not a string, `None`, a list of
		    `Variables`, or a list of strings.
	**/
	static public function _get_grouped_variables(vars_to_warm_start:Dynamic):Dynamic;
	/**
		Returns name of the `var`.
		
		Args:
		  var: A list. The list can contain either of the following:
		    (i) A single `Variable`
		    (ii) A single `ResourceVariable`
		    (iii) Multiple `Variable` objects which must be slices of the same larger
		      variable.
		    (iv) A single `PartitionedVariable`
		
		Returns:
		  Name of the `var`
	**/
	static public function _infer_var_name(_var:Dynamic):Dynamic;
	/**
		Warm-starts given variable from `prev_tensor_name` tensor in `prev_ckpt`.
		
		Args:
		  var: Current graph's variable that needs to be warm-started (initialized).
		    Can be either of the following:
		    (i) `Variable`
		    (ii) `ResourceVariable`
		    (iii) list of `Variable`: The list must contain slices of the same larger
		      variable.
		    (iv) `PartitionedVariable`
		  prev_ckpt: A string specifying the directory with checkpoint file(s) or path
		    to checkpoint. The given checkpoint must have tensor with name
		    `prev_tensor_name` (if not None) or tensor with name same as given `var`.
		  prev_tensor_name: Name of the tensor to lookup in provided `prev_ckpt`. If
		    None, we lookup tensor with same name as given `var`.
	**/
	static public function _warm_start_var(_var:Dynamic, prev_ckpt:Dynamic, ?prev_tensor_name:Dynamic):Dynamic;
	/**
		Warm-starts given variable from `prev_tensor_name` tensor in `prev_ckpt`.
		
		Use this method when the `var` is backed by vocabulary. This method stitches
		the given `var` such that values corresponding to individual features in the
		vocabulary remain consistent irrespective of changing order of the features
		between old and new vocabularies.
		
		Args:
		  var: Current graph's variable that needs to be warm-started (initialized).
		    Can be either of the following:
		    (i) `Variable`
		    (ii) `ResourceVariable`
		    (iii) list of `Variable`: The list must contain slices of the same larger
		      variable.
		    (iv) `PartitionedVariable`
		  current_vocab_path: Path to the vocab file used for the given `var`.
		  current_vocab_size: An `int` specifying the number of entries in the current
		    vocab.
		  prev_ckpt: A string specifying the directory with checkpoint file(s) or path
		    to checkpoint. The given checkpoint must have tensor with name
		    `prev_tensor_name` (if not None) or tensor with name same as given `var`.
		  prev_vocab_path: Path to the vocab file used for the tensor in `prev_ckpt`.
		  previous_vocab_size: If provided, will constrain previous vocab to the first
		    `previous_vocab_size` entries.  -1 means use the entire previous vocab.
		  current_oov_buckets: An `int` specifying the number of out-of-vocabulary
		    buckets used for given `var`.
		  prev_tensor_name: Name of the tensor to lookup in provided `prev_ckpt`. If
		    None, we lookup tensor with same name as given `var`.
		  initializer: Variable initializer to be used for missing entries.  If None,
		    missing entries will be zero-initialized.
		  axis: Axis of the variable that the provided vocabulary corresponds to.
		
		Raises:
		  ValueError: If required args are not provided.
	**/
	static public function _warm_start_var_with_vocab(_var:Dynamic, current_vocab_path:Dynamic, current_vocab_size:Dynamic, prev_ckpt:Dynamic, prev_vocab_path:Dynamic, ?previous_vocab_size:Dynamic, ?current_oov_buckets:Dynamic, ?prev_tensor_name:Dynamic, ?initializer:Dynamic, ?axis:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Warm-starts a model using the given settings.
		
		If you are using a tf.estimator.Estimator, this will automatically be called
		during training.
		
		Args:
		  ckpt_to_initialize_from: [Required] A string specifying the directory with
		    checkpoint file(s) or path to checkpoint from which to warm-start the
		    model parameters.
		  vars_to_warm_start: [Optional] One of the following:
		
		    - A regular expression (string) that captures which variables to
		      warm-start (see tf.get_collection).  This expression will only consider
		      variables in the TRAINABLE_VARIABLES collection.
		    - A list of Variables to warm-start.
		    - A list of strings, each representing a full variable name to warm-start.
		    - `None`, in which case only variables specified in
		      `var_name_to_vocab_info` will be warm-started.
		
		    Defaults to `'.*'`, which warm-starts all variables in the
		    TRAINABLE_VARIABLES collection.  Note that this excludes variables such as
		    accumulators and moving statistics from batch norm.
		  var_name_to_vocab_info: [Optional] Dict of variable names (strings) to
		    VocabInfo. The variable names should be "full" variables, not the names
		    of the partitions.  If not explicitly provided, the variable is assumed to
		    have no vocabulary.
		  var_name_to_prev_var_name: [Optional] Dict of variable names (strings) to
		    name of the previously-trained variable in `ckpt_to_initialize_from`. If
		    not explicitly provided, the name of the variable is assumed to be same
		    between previous checkpoint and current model.
		Raises:
		  ValueError: If the WarmStartSettings contains prev_var_name or VocabInfo
		    configuration for variable names that are not used.  This is to ensure
		    a stronger check for variable configuration than relying on users to
		    examine the logs.
	**/
	static public function warm_start(ckpt_to_initialize_from:Dynamic, ?vars_to_warm_start:Dynamic, ?var_name_to_vocab_info:Dynamic, ?var_name_to_prev_var_name:Dynamic):Dynamic;
}