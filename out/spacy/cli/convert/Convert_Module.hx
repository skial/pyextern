/* This file is generated, do not edit! */
package spacy.cli.convert;
@:pythonImport("spacy.cli.convert") extern class Convert_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Arg(_default:Dynamic, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public var CONVERTERS : Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var FILE_TYPES_STDOUT : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Mapping(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Opt(_default:Dynamic, ?param_decls:python.VarArgs<Dynamic>, ?callback:Dynamic, ?metavar:Dynamic, ?expose_value:Dynamic, ?is_eager:Dynamic, ?envvar:Dynamic, ?shell_complete:Dynamic, ?autocompletion:Dynamic, ?show_default:Dynamic, ?prompt:Dynamic, ?confirmation_prompt:Dynamic, ?prompt_required:Dynamic, ?hide_input:Dynamic, ?is_flag:Dynamic, ?flag_value:Dynamic, ?count:Dynamic, ?allow_from_autoenv:Dynamic, ?help:Dynamic, ?hidden:Dynamic, ?show_choices:Dynamic, ?show_envvar:Dynamic, ?case_sensitive:Dynamic, ?min:Dynamic, ?max:Dynamic, ?clamp:Dynamic, ?formats:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?lazy:Dynamic, ?atomic:Dynamic, ?exists:Dynamic, ?file_okay:Dynamic, ?dir_okay:Dynamic, ?writable:Dynamic, ?readable:Dynamic, ?resolve_path:Dynamic, ?allow_dash:Dynamic, ?path_type:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_converter(msg:Dynamic, converter:Dynamic, input_path:Dynamic):Dynamic;
	static public function _print_docs_to_stdout(data:Dynamic, output_type:Dynamic):Dynamic;
	static public function _write_docs_to_file(data:Dynamic, output_file:Dynamic, output_type:Dynamic):Dynamic;
	static public function app(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function autodetect_ner_format(input_data:Dynamic):Dynamic;
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
	static public function convert(input_path:Dynamic, output_dir:Dynamic, ?file_type:Dynamic, ?n_sents:Dynamic, ?seg_sents:Dynamic, ?model:Dynamic, ?morphology:Dynamic, ?merge_subtokens:Dynamic, ?converter:Dynamic, ?ner_map:Dynamic, ?lang:Dynamic, ?concatenate:Dynamic, ?silent:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Convert files into json or DocBin format for training. The resulting .spacy
		file can be used with the train command and other experiment management
		functions.
		
		If no output_dir is specified and the output format is JSON, the data
		is written to stdout, so you can pipe them forward to a JSON file:
		$ spacy convert some_file.conllu --file-type json > some_file.json
		
		DOCS: https://spacy.io/api/cli#convert
	**/
	static public function convert_cli(?input_path:Dynamic, ?output_dir:Dynamic, ?file_type:Dynamic, ?n_sents:Dynamic, ?seg_sents:Dynamic, ?model:Dynamic, ?morphology:Dynamic, ?merge_subtokens:Dynamic, ?converter:Dynamic, ?ner_map:Dynamic, ?lang:Dynamic, ?concatenate:Dynamic):Dynamic;
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
	static public function verify_cli_args(msg:Dynamic, input_path:Dynamic, output_dir:Dynamic, file_type:Dynamic, converter:Dynamic, ner_map:Dynamic):Dynamic;
	static public function walk_directory(path:Dynamic, converter:Dynamic):Dynamic;
}