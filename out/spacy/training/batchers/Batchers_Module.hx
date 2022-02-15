/* This file is generated, do not edit! */
package spacy.training.batchers;
@:pythonImport("spacy.training.batchers") extern class Batchers_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function BatcherT(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var ItemT : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sizing(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Given a list of sequences, return a batched list of indices into the
		list, where the batches are grouped by length, in descending order.
		
		Batches may be at most max_words in size, defined as max sequence length * size.
	**/
	static public function _batch_by_length(seqs:Dynamic, max_words:Dynamic, ?get_length:Dynamic):Dynamic;
	/**
		Create a batcher that creates batches of the specified size.
		
		size (int or Sequence[int]): The target number of items per batch.
		    Can be a single integer, or a sequence, allowing for variable batch sizes.
	**/
	static public function configure_minibatch(size:Dynamic, ?get_length:Dynamic):Dynamic;
	/**
		Create a batcher that uses the `batch_by_padded_size` strategy.
		
		The padded size is defined as the maximum length of sequences within the
		batch multiplied by the number of sequences in the batch.
		
		size (int or Sequence[int]): The largest padded size to batch sequences into.
		    Can be a single integer, or a sequence, allowing for variable batch sizes.
		buffer (int): The number of sequences to accumulate before sorting by length.
		    A larger buffer will result in more even sizing, but if the buffer is
		    very large, the iteration order will be less random, which can result
		    in suboptimal training.
		discard_oversize (bool): Whether to discard sequences that are by themselves
		    longer than the largest padded batch size.
		get_length (Callable or None): Function to get the length of a sequence item.
		    The `len` function is used by default.
	**/
	static public function configure_minibatch_by_padded_size(size:Dynamic, buffer:Dynamic, discard_oversize:Dynamic, ?get_length:Dynamic):Dynamic;
	/**
		Create a batcher that uses the "minibatch by words" strategy.
		
		size (int or Sequence[int]): The target number of words per batch.
		    Can be a single integer, or a sequence, allowing for variable batch sizes.
		tolerance (float): What percentage of the size to allow batches to exceed.
		discard_oversize (bool): Whether to discard sequences that by themselves
		    exceed the tolerated size.
		get_length (Callable or None): Function to get the length of a sequence
		    item. The `len` function is used by default.
	**/
	static public function configure_minibatch_by_words(size:Dynamic, tolerance:Dynamic, discard_oversize:Dynamic, ?get_length:Dynamic):Dynamic;
	/**
		Iterate over batches of items. `size` may be an iterator,
		so that batch-size can vary on each step.
	**/
	static public function minibatch(items:Dynamic, size:Dynamic):Dynamic;
	/**
		Minibatch a sequence by the size of padded batches that would result,
		with sequences binned by length within a window.
		
		The padded size is defined as the maximum length of sequences within the
		batch multiplied by the number of sequences in the batch.
		
		size (int or Sequence[int]): The largest padded size to batch sequences into.
		buffer (int): The number of sequences to accumulate before sorting by length.
		    A larger buffer will result in more even sizing, but if the buffer is
		    very large, the iteration order will be less random, which can result
		    in suboptimal training.
		discard_oversize (bool): Whether to discard sequences that are by themselves
		    longer than the largest padded batch size.
		get_length (Callable or None): Function to get the length of a sequence item.
		    The `len` function is used by default.
	**/
	static public function minibatch_by_padded_size(seqs:Dynamic, size:Dynamic, ?buffer:Dynamic, ?discard_oversize:Dynamic, ?get_length:Dynamic):Dynamic;
	/**
		Create minibatches of roughly a given number of words. If any examples
		are longer than the specified batch length, they will appear in a batch by
		themselves, or be discarded if discard_oversize=True.
		
		seqs (Iterable[Sequence]): The sequences to minibatch.
		size (int or Sequence[int]): The target number of words per batch.
		    Can be a single integer, or a sequence, allowing for variable batch sizes.
		tolerance (float): What percentage of the size to allow batches to exceed.
		discard_oversize (bool): Whether to discard sequences that by themselves
		    exceed the tolerated size.
		get_length (Callable or None): Function to get the length of a sequence
		    item. The `len` function is used by default.
	**/
	static public function minibatch_by_words(seqs:Dynamic, size:Dynamic, ?tolerance:Dynamic, ?discard_oversize:Dynamic, ?get_length:Dynamic):Dynamic;
}