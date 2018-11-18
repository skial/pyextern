/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.training_loop;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.training_loop") extern class Training_loop_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Builds a training loop that executes a fixed number of iterations.
		
		The set of loop-carried tensors correspond to `inputs`.
		`body` must be a function that takes and returns the values of the
		loop-carried tensors.
		
		Args:
		  n: the number of loop iterations
		  body: a Python function that builds the loop body.
		  inputs: a list of initial values passed into the training loop or
		    None (equivalent to an empty list).
		  infeed_queue: if not None, the infeed queue from which to append a tuple
		    of arguments as inputs to condition.
		  name: (Deprecated) Does nothing.
		Returns:
		  The final values of the loop-carried tensors.
		Raises:
		  ValueError: if there is a type error.
	**/
	static public function repeat(n:Dynamic, body:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Builds a training loop for TPUs.
		
		The set of loop-carried tensors corresponds to `inputs`.  Both
		`condition` and `body` take the current value of the loop-carried
		tensors. 'body' additionally takes a tuple of infeed from
		infeed_queue if infeed_queue is not None. `condition` must return a
		single boolean value that determines whether iteration
		continues. `body` must return an updated list of values for the
		loop-carried tensors.
		
		Args:
		  condition: a Python function that builds the loop condition.
		  body: a Python function that builds the loop body.
		  inputs: a list of initial values passed into the training loop, or
		    None (equivalent to an empty list).
		  infeed_queue: if not None, the infeed queue from which to append a tuple
		    of arguments as inputs to condition.
		  name: (Deprecated) Does nothing.
		
		Returns:
		  The final values of the loop-carried tensors.
		
		Raises:
		  TypeError: if body or condition has the wrong signature.
	**/
	static public function while_loop(condition:Dynamic, body:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?name:Dynamic):Dynamic;
}