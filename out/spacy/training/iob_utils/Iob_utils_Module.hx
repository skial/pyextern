/* This file is generated, do not edit! */
package spacy.training.iob_utils;
@:pythonImport("spacy.training.iob_utils") extern class Iob_utils_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _consume_ent(tags:Dynamic):Dynamic;
	static public function _consume_os(tags:Dynamic):Dynamic;
	/**
		Encode labelled spans into per-token tags, using the
		Begin/In/Last/Unit/Out scheme (BILUO).
		
		doc (Doc): The document that the entity offsets refer to. The output tags
		    will refer to the token boundaries within the document.
		entities (iterable): A sequence of `(start, end, label)` triples. `start`
		    and `end` should be character-offset integers denoting the slice into
		    the original string.
		missing (str): The label used for missing values, e.g. if tokenization
		    doesn’t align with the entity offsets. Defaults to "O".
		RETURNS (list): A list of unicode strings, describing the tags. Each tag
		    string will be of the form either "", "O" or "{action}-{label}", where
		    action is one of "B", "I", "L", "U". The missing label is used where the
		    entity offsets don't align with the tokenization in the `Doc` object.
		    The training algorithm will view these as missing values. "O" denotes a
		    non-entity token. "B" denotes the beginning of a multi-token entity,
		    "I" the inside of an entity of three or more tokens, and "L" the end
		    of an entity of two or more tokens. "U" denotes a single-token entity.
		
		EXAMPLE:
		    >>> text = 'I like London.'
		    >>> entities = [(len('I like '), len('I like London'), 'LOC')]
		    >>> doc = nlp.tokenizer(text)
		    >>> tags = offsets_to_biluo_tags(doc, entities)
		    >>> assert tags == ["O", "O", 'U-LOC', "O"]
	**/
	static public function biluo_tags_from_offsets(doc:Dynamic, entities:Dynamic, ?missing:Dynamic):Dynamic;
	/**
		Encode per-token tags following the BILUO scheme into entity offsets.
		
		doc (Doc): The document that the BILUO tags refer to.
		tags (iterable): A sequence of BILUO tags with each tag describing one
		    token. Each tags string will be of the form of either "", "O" or
		    "{action}-{label}", where action is one of "B", "I", "L", "U".
		RETURNS (list): A sequence of `(start, end, label)` triples. `start` and
		    `end` will be character-offset integers denoting the slice into the
		    original string.
	**/
	static public function biluo_tags_to_offsets(doc:Dynamic, tags:Dynamic):Dynamic;
	/**
		Encode per-token tags following the BILUO scheme into Span object, e.g.
		to overwrite the doc.ents.
		
		doc (Doc): The document that the BILUO tags refer to.
		tags (iterable): A sequence of BILUO tags with each tag describing one
		    token. Each tag string will be of the form of either "", "O" or
		    "{action}-{label}", where action is one of "B", "I", "L", "U".
		RETURNS (list): A sequence of Span objects. Each token with a missing IOB
		    tag is returned as a Span with an empty label.
	**/
	static public function biluo_tags_to_spans(doc:Dynamic, tags:Dynamic):Dynamic;
	static public function biluo_to_iob(tags:Dynamic):Dynamic;
	static public function doc_to_biluo_tags(doc:Dynamic, ?missing:Dynamic):Dynamic;
	static public function iob_to_biluo(tags:Dynamic):Dynamic;
	/**
		Encode per-token tags following the BILUO scheme into entity offsets.
		
		doc (Doc): The document that the BILUO tags refer to.
		tags (iterable): A sequence of BILUO tags with each tag describing one
		    token. Each tags string will be of the form of either "", "O" or
		    "{action}-{label}", where action is one of "B", "I", "L", "U".
		RETURNS (list): A sequence of `(start, end, label)` triples. `start` and
		    `end` will be character-offset integers denoting the slice into the
		    original string.
	**/
	static public function offsets_from_biluo_tags(doc:Dynamic, tags:Dynamic):Dynamic;
	/**
		Encode labelled spans into per-token tags, using the
		Begin/In/Last/Unit/Out scheme (BILUO).
		
		doc (Doc): The document that the entity offsets refer to. The output tags
		    will refer to the token boundaries within the document.
		entities (iterable): A sequence of `(start, end, label)` triples. `start`
		    and `end` should be character-offset integers denoting the slice into
		    the original string.
		missing (str): The label used for missing values, e.g. if tokenization
		    doesn’t align with the entity offsets. Defaults to "O".
		RETURNS (list): A list of unicode strings, describing the tags. Each tag
		    string will be of the form either "", "O" or "{action}-{label}", where
		    action is one of "B", "I", "L", "U". The missing label is used where the
		    entity offsets don't align with the tokenization in the `Doc` object.
		    The training algorithm will view these as missing values. "O" denotes a
		    non-entity token. "B" denotes the beginning of a multi-token entity,
		    "I" the inside of an entity of three or more tokens, and "L" the end
		    of an entity of two or more tokens. "U" denotes a single-token entity.
		
		EXAMPLE:
		    >>> text = 'I like London.'
		    >>> entities = [(len('I like '), len('I like London'), 'LOC')]
		    >>> doc = nlp.tokenizer(text)
		    >>> tags = offsets_to_biluo_tags(doc, entities)
		    >>> assert tags == ["O", "O", 'U-LOC', "O"]
	**/
	static public function offsets_to_biluo_tags(doc:Dynamic, entities:Dynamic, ?missing:Dynamic):Dynamic;
	/**
		Encode per-token tags following the BILUO scheme into Span object, e.g.
		to overwrite the doc.ents.
		
		doc (Doc): The document that the BILUO tags refer to.
		tags (iterable): A sequence of BILUO tags with each tag describing one
		    token. Each tag string will be of the form of either "", "O" or
		    "{action}-{label}", where action is one of "B", "I", "L", "U".
		RETURNS (list): A sequence of Span objects. Each token with a missing IOB
		    tag is returned as a Span with an empty label.
	**/
	static public function spans_from_biluo_tags(doc:Dynamic, tags:Dynamic):Dynamic;
	/**
		Note that the end index returned by this function is inclusive.
		To use it for Span creation, increment the end by 1.
	**/
	static public function tags_to_entities(tags:Dynamic):Dynamic;
}