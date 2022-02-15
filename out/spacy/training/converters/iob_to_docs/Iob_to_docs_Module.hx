/* This file is generated, do not edit! */
package spacy.training.converters.iob_to_docs;
@:pythonImport("spacy.training.converters.iob_to_docs") extern class Iob_to_docs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function iob_to_biluo(tags:Dynamic):Dynamic;
	/**
		Convert IOB files with one sentence per line and tags separated with '|'
		into Doc objects so they can be saved. IOB and IOB2 are accepted.
		
		Sample formats:
		
		I|O like|O London|I-GPE and|O New|B-GPE York|I-GPE City|I-GPE .|O
		I|O like|O London|B-GPE and|O New|B-GPE York|I-GPE City|I-GPE .|O
		I|PRP|O like|VBP|O London|NNP|I-GPE and|CC|O New|NNP|B-GPE York|NNP|I-GPE City|NNP|I-GPE .|.|O
		I|PRP|O like|VBP|O London|NNP|B-GPE and|CC|O New|NNP|B-GPE York|NNP|I-GPE City|NNP|I-GPE .|.|O
	**/
	static public function iob_to_docs(input_data:Dynamic, ?n_sents:Dynamic, ?no_print:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Iterate over batches of items. `size` may be an iterator,
		so that batch-size can vary on each step.
	**/
	static public function minibatch(items:Dynamic, size:Dynamic):Dynamic;
	static public function n_sents_info(msg:Dynamic, n_sents:Dynamic):Dynamic;
	static public function read_iob(raw_sents:Dynamic, vocab:Dynamic, n_sents:Dynamic):Dynamic;
	/**
		Note that the end index returned by this function is inclusive.
		To use it for Span creation, increment the end by 1.
	**/
	static public function tags_to_entities(tags:Dynamic):Dynamic;
}