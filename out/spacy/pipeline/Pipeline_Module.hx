/* This file is generated, do not edit! */
package spacy.pipeline;
@:pythonImport("spacy.pipeline") extern class Pipeline_Module {
	static public var __all__ : Dynamic;
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