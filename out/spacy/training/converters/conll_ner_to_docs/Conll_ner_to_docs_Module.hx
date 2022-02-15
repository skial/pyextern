/* This file is generated, do not edit! */
package spacy.training.converters.conll_ner_to_docs;
@:pythonImport("spacy.training.converters.conll_ner_to_docs") extern class Conll_ner_to_docs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert files in the CoNLL-2003 NER format and similar
		whitespace-separated columns into Doc objects.
		
		The first column is the tokens, the final column is the IOB tags. If an
		additional second column is present, the second column is the tags.
		
		Sentences are separated with whitespace and documents can be separated
		using the line "-DOCSTART- -X- O O".
		
		Sample format:
		
		-DOCSTART- -X- O O
		
		I O
		like O
		London B-GPE
		and O
		New B-GPE
		York I-GPE
		City I-GPE
		. O
	**/
	static public function conll_ner_to_docs(input_data:Dynamic, ?n_sents:Dynamic, ?seg_sents:Dynamic, ?model:Dynamic, ?no_print:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Import and load a Language class.
		
		lang (str): IETF language code, such as 'en'.
		RETURNS (Language): Language class.
	**/
	static public function get_lang_class(lang:Dynamic):Dynamic;
	static public function iob_to_biluo(tags:Dynamic):Dynamic;
	/**
		Load a model from a package or data path.
		
		name (str): Package name or model path.
		vocab (Vocab / True): Optional vocab to pass in on initialization. If True,
		    a new Vocab object will be created.
		disable (Iterable[str]): Names of pipeline components to disable.
		config (Dict[str, Any] / Config): Config overrides as nested dict or dict
		    keyed by section values in dot notation.
		RETURNS (Language): The loaded nlp object.
	**/
	static public function load_model(name:Dynamic, ?vocab:Dynamic, ?disable:Dynamic, ?exclude:Dynamic, ?config:Dynamic):Dynamic;
	static public function n_sents_info(msg:Dynamic, n_sents:Dynamic):Dynamic;
	static public function segment_docs(input_data:Dynamic, n_sents:Dynamic, doc_delimiter:Dynamic):Dynamic;
	static public function segment_sents_and_docs(doc:Dynamic, n_sents:Dynamic, doc_delimiter:Dynamic, ?model:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Note that the end index returned by this function is inclusive.
		To use it for Span creation, increment the end by 1.
	**/
	static public function tags_to_entities(tags:Dynamic):Dynamic;
}