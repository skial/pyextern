/* This file is generated, do not edit! */
package spacy.pipeline.functions;
@:pythonImport("spacy.pipeline.functions") extern class Functions_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function make_doc_cleaner(nlp:Dynamic, name:Dynamic, attrs:Dynamic, silent:Dynamic):Dynamic;
	static public function make_token_splitter(nlp:Dynamic, name:Dynamic, ?min_length:Dynamic, ?split_length:Dynamic):Dynamic;
	/**
		Merge entities into a single token.
		
		doc (Doc): The Doc object.
		RETURNS (Doc): The Doc object with merged entities.
		
		DOCS: https://spacy.io/api/pipeline-functions#merge_entities
	**/
	static public function merge_entities(doc:Dynamic):Dynamic;
	/**
		Merge noun chunks into a single token.
		
		doc (Doc): The Doc object.
		RETURNS (Doc): The Doc object with merged noun chunks.
		
		DOCS: https://spacy.io/api/pipeline-functions#merge_noun_chunks
	**/
	static public function merge_noun_chunks(doc:Dynamic):Dynamic;
	/**
		Merge subtokens into a single token.
		
		doc (Doc): The Doc object.
		label (str): The subtoken dependency label.
		RETURNS (Doc): The Doc object with merged subtokens.
		
		DOCS: https://spacy.io/api/pipeline-functions#merge_subtokens
	**/
	static public function merge_subtokens(doc:Dynamic, ?label:Dynamic):Dynamic;
}