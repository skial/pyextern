/* This file is generated, do not edit! */
package spacy.training.converters.json_to_docs;
@:pythonImport("spacy.training.converters.json_to_docs") extern class Json_to_docs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		_fix_legacy_dict_data(example_dict)
	**/
	static public function _fix_legacy_dict_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_parse_example_dict_data(example_dict)
	**/
	static public function _parse_example_dict_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		annotations_to_doc(vocab, tok_annot, doc_annot) -> Doc
		Create a Doc from dictionaries with token and doc annotations. 
	**/
	static public function annotations_to_doc(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function json_to_docs(input_data:Dynamic, ?model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
}