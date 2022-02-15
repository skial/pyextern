/* This file is generated, do not edit! */
package spacy.training.example;
@:pythonImport("spacy.training.example") extern class Example_Module {
	static public var IDS : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle_Example(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_Example(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		_add_entities_to_doc(doc, ner_data)
	**/
	static public function _add_entities_to_doc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_add_spans_to_doc(doc, spans_data)
	**/
	static public function _add_spans_to_doc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_annot2array(vocab, tok_annot, doc_annot)
	**/
	static public function _annot2array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_fix_legacy_dict_data(example_dict)
	**/
	static public function _fix_legacy_dict_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_guess_spaces(text, words)
	**/
	static public function _guess_spaces(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_has_field(annot, field)
	**/
	static public function _has_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_parse_example_dict_data(example_dict)
	**/
	static public function _parse_example_dict_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_parse_links(vocab, words, spaces, links)
	**/
	static public function _parse_links(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_parse_ner_tags(biluo_or_offsets, vocab, words, spaces)
	**/
	static public function _parse_ner_tags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		annotations_to_doc(vocab, tok_annot, doc_annot) -> Doc
		Create a Doc from dictionaries with token and doc annotations. 
	**/
	static public function annotations_to_doc(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var logger : Dynamic;
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
		Convert a value to the ternary 1/0/-1 int used for True/None/False in
		attributes such as SENT_START: True/1/1.0 is 1 (True), None/0/0.0 is 0
		(None), any other values are -1 (False).
	**/
	static public function to_ternary_int(val:Dynamic):Dynamic;
	/**
		validate_examples(examples, method)
		Check that a batch of examples received during processing is valid.
		    This function lives here to prevent circular imports.
		
		    examples (Iterable[Examples]): A batch of examples.
		    method (str): The method name to show in error messages.
		    
	**/
	static public function validate_examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		validate_get_examples(get_examples, method)
		Check that a generator of a batch of examples received during processing is valid:
		    the callable produces a non-empty list of Example objects.
		    This function lives here to prevent circular imports.
		
		    get_examples (Callable[[], Iterable[Example]]): A function that produces a batch of examples.
		    method (str): The method name to show in error messages.
		    
	**/
	static public function validate_get_examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
}