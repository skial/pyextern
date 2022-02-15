/* This file is generated, do not edit! */
package spacy.training.converters;
@:pythonImport("spacy.training.converters") extern class Converters_Module {
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
		Convert conllu files into JSON format for use with train cli.
		append_morphology parameter enables appending morphology to tags, which is
		useful for languages such as Spanish, where UD tags are not so rich.
		
		Extract NER tags if available and convert them so that they follow
		BILUO and the Wikipedia scheme
	**/
	static public function conllu_to_docs(input_data:Dynamic, ?n_sents:Dynamic, ?append_morphology:Dynamic, ?ner_map:Dynamic, ?merge_subtokens:Dynamic, ?no_print:Dynamic, ?_:python.KwArgs<Dynamic>):Dynamic;
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
	static public function json_to_docs(input_data:Dynamic, ?model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}