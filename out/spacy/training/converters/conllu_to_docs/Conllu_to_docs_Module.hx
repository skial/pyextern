/* This file is generated, do not edit! */
package spacy.training.converters.conllu_to_docs;
@:pythonImport("spacy.training.converters.conllu_to_docs") extern class Conllu_to_docs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	/**
		Create an Example from the lines for one CoNLL-U sentence, merging
		subtokens and appending morphology to tags if required.
		
		lines (str): The non-comment lines for a CoNLL-U sentence
		ner_tag_pattern (str): The regex pattern for matching NER in MISC col
		RETURNS (Example): An example containing the annotation
	**/
	static public function conllu_sentence_to_doc(vocab:Dynamic, lines:Dynamic, ner_tag_pattern:Dynamic, ?merge_subtokens:Dynamic, ?append_morphology:Dynamic, ?ner_map:Dynamic):Dynamic;
	/**
		Convert conllu files into JSON format for use with train cli.
		append_morphology parameter enables appending morphology to tags, which is
		useful for languages such as Spanish, where UD tags are not so rich.
		
		Extract NER tags if available and convert them so that they follow
		BILUO and the Wikipedia scheme
	**/
	static public function conllu_to_docs(input_data:Dynamic, ?n_sents:Dynamic, ?append_morphology:Dynamic, ?ner_map:Dynamic, ?merge_subtokens:Dynamic, ?no_print:Dynamic, ?_:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find entities in the MISC column according to the pattern and map to
		final entity type with `ner_map` if mapping present. Entity tag is 'O' if
		the pattern is not matched.
		
		lines (str): CONLL-U lines for one sentences
		tag_pattern (str): Regex pattern for entity tag
		ner_map (dict): Map old NER tag names to new ones, '' maps to O.
		RETURNS (list): List of BILUO entity tags
	**/
	static public function get_entities(lines:Dynamic, tag_pattern:Dynamic, ?ner_map:Dynamic):Dynamic;
	/**
		Check the MISC column for NER tags.
	**/
	static public function has_ner(input_data:Dynamic, ner_tag_pattern:Dynamic):Dynamic;
	static public function iob_to_biluo(tags:Dynamic):Dynamic;
	static public function merge_conllu_subtokens(lines:Dynamic, doc:Dynamic):Dynamic;
	static public function n_sents_info(msg:Dynamic, n_sents:Dynamic):Dynamic;
	/**
		Yield docs, one for each sentence
	**/
	static public function read_conllx(input_data:Dynamic, ?append_morphology:Dynamic, ?merge_subtokens:Dynamic, ?ner_tag_pattern:Dynamic, ?ner_map:Dynamic):Dynamic;
}