/* This file is generated, do not edit! */
package spacy.training.gold_io;
@:pythonImport("spacy.training.gold_io") extern class Gold_io_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		docs_to_json(docs, doc_id=0, ner_missing_tag='O')
		Convert a list of Doc objects into the JSON-serializable format used by
		    the spacy train command.
		
		    docs (iterable / Doc): The Doc object(s) to convert.
		    doc_id (int): Id for the JSON.
		    RETURNS (dict): The data in spaCy's JSON format
		        - each input doc will be treated as a paragraph in the output doc
		    
	**/
	static public function docs_to_json(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		json_iterate(bytes utf8_str)
	**/
	static public function json_iterate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		json_to_annotations(doc)
		Convert an item in the JSON-formatted training data to the format
		    used by Example.
		
		    doc (dict): One entry in the training data.
		    YIELDS (tuple): The reformatted data - one training example per paragraph
		    
	**/
	static public function json_to_annotations(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		read_json_file(loc, docs_filter=None, limit=None)
		Read Example dictionaries from a json file or directory.
	**/
	static public function read_json_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Note that the end index returned by this function is inclusive.
		To use it for Span creation, increment the end by 1.
	**/
	static public function tags_to_entities(tags:Dynamic):Dynamic;
}