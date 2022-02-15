/* This file is generated, do not edit! */
package spacy.training.augment;
@:pythonImport("spacy.training.augment") extern class Augment_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create a data augmentation callback that converts documents to lowercase.
		The callback can be added to a corpus or other data iterator during training.
		
		level (float): The percentage of texts that will be augmented.
		RETURNS (Callable[[Language, Example], Iterator[Example]]): The augmenter.
	**/
	static public function create_lower_casing_augmenter(level:Dynamic):Dynamic;
	/**
		Create a data augmentation callback that uses orth-variant replacement.
		The callback can be added to a corpus or other data iterator during training.
		
		level (float): The percentage of texts that will be augmented.
		lower (float): The percentage of texts that will be lowercased.
		orth_variants (Dict[str, dict]): A dictionary containing the single and
		    paired orth variants. Typically loaded from a JSON file.
		RETURNS (Callable[[Language, Example], Iterator[Example]]): The augmenter.
	**/
	static public function create_orth_variants_augmenter(level:Dynamic, lower:Dynamic, orth_variants:Dynamic):Dynamic;
	static public function dont_augment(nlp:Dynamic, example:Dynamic):Dynamic;
	static public function lower_casing_augmenter(nlp:Dynamic, example:Dynamic, level:Dynamic):Dynamic;
	static public function make_orth_variants(nlp:Dynamic, raw:Dynamic, token_dict:Dynamic, orth_variants:Dynamic, ?lower:Dynamic):Dynamic;
	static public function orth_variants_augmenter(nlp:Dynamic, example:Dynamic, orth_variants:Dynamic, ?level:Dynamic, ?lower:Dynamic):Dynamic;
}