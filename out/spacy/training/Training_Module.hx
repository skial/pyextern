/* This file is generated, do not edit! */
package spacy.training;
@:pythonImport("spacy.training") extern class Training_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function console_logger(?progress_bar:Dynamic):Dynamic;
	static public function create_copy_from_base_model(?tokenizer:Dynamic, ?vocab:Dynamic):Dynamic;
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
	static public function dont_augment(nlp:Dynamic, example:Dynamic):Dynamic;
	static public function iob_to_biluo(tags:Dynamic):Dynamic;
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
	static public function orth_variants_augmenter(nlp:Dynamic, example:Dynamic, orth_variants:Dynamic, ?level:Dynamic, ?lower:Dynamic):Dynamic;
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