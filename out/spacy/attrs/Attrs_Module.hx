/* This file is generated, do not edit! */
package spacy.attrs;
@:pythonImport("spacy.attrs") extern class Attrs_Module {
	static public var DEP : Dynamic;
	static public var ENT_ID : Dynamic;
	static public var ENT_IOB : Dynamic;
	static public var ENT_KB_ID : Dynamic;
	static public var ENT_TYPE : Dynamic;
	static public var FLAG19 : Dynamic;
	static public var FLAG20 : Dynamic;
	static public var FLAG21 : Dynamic;
	static public var FLAG22 : Dynamic;
	static public var FLAG23 : Dynamic;
	static public var FLAG24 : Dynamic;
	static public var FLAG25 : Dynamic;
	static public var FLAG26 : Dynamic;
	static public var FLAG27 : Dynamic;
	static public var FLAG28 : Dynamic;
	static public var FLAG29 : Dynamic;
	static public var FLAG30 : Dynamic;
	static public var FLAG31 : Dynamic;
	static public var FLAG32 : Dynamic;
	static public var FLAG33 : Dynamic;
	static public var FLAG34 : Dynamic;
	static public var FLAG35 : Dynamic;
	static public var FLAG36 : Dynamic;
	static public var FLAG37 : Dynamic;
	static public var FLAG38 : Dynamic;
	static public var FLAG39 : Dynamic;
	static public var FLAG40 : Dynamic;
	static public var FLAG41 : Dynamic;
	static public var FLAG42 : Dynamic;
	static public var FLAG43 : Dynamic;
	static public var FLAG44 : Dynamic;
	static public var FLAG45 : Dynamic;
	static public var FLAG46 : Dynamic;
	static public var FLAG47 : Dynamic;
	static public var FLAG48 : Dynamic;
	static public var FLAG49 : Dynamic;
	static public var FLAG50 : Dynamic;
	static public var FLAG51 : Dynamic;
	static public var FLAG52 : Dynamic;
	static public var FLAG53 : Dynamic;
	static public var FLAG54 : Dynamic;
	static public var FLAG55 : Dynamic;
	static public var FLAG56 : Dynamic;
	static public var FLAG57 : Dynamic;
	static public var FLAG58 : Dynamic;
	static public var FLAG59 : Dynamic;
	static public var FLAG60 : Dynamic;
	static public var FLAG61 : Dynamic;
	static public var FLAG62 : Dynamic;
	static public var FLAG63 : Dynamic;
	static public var HEAD : Dynamic;
	static public var ID : Dynamic;
	static public var IDS : Dynamic;
	static public var IDX : Dynamic;
	static public var IOB_STRINGS : Dynamic;
	static public var IS_ALPHA : Dynamic;
	static public var IS_ASCII : Dynamic;
	static public var IS_BRACKET : Dynamic;
	static public var IS_CURRENCY : Dynamic;
	static public var IS_DIGIT : Dynamic;
	static public var IS_LEFT_PUNCT : Dynamic;
	static public var IS_LOWER : Dynamic;
	static public var IS_OOV_DEPRECATED : Dynamic;
	static public var IS_PUNCT : Dynamic;
	static public var IS_QUOTE : Dynamic;
	static public var IS_RIGHT_PUNCT : Dynamic;
	static public var IS_SPACE : Dynamic;
	static public var IS_STOP : Dynamic;
	static public var IS_TITLE : Dynamic;
	static public var IS_UPPER : Dynamic;
	static public var LANG : Dynamic;
	static public var LEMMA : Dynamic;
	static public var LENGTH : Dynamic;
	static public var LIKE_EMAIL : Dynamic;
	static public var LIKE_NUM : Dynamic;
	static public var LIKE_URL : Dynamic;
	static public var LOWER : Dynamic;
	static public var MORPH : Dynamic;
	static public var NAMES : Dynamic;
	static public var NORM : Dynamic;
	static public var ORTH : Dynamic;
	static public var POS : Dynamic;
	static public var PREFIX : Dynamic;
	static public var SENT_START : Dynamic;
	static public var SHAPE : Dynamic;
	static public var SPACY : Dynamic;
	static public var SUFFIX : Dynamic;
	static public var TAG : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		intify_attr(name)
		
		Normalize an attribute name, converting it to int.
		
		stringy_attr (string): Attribute string name. Can also be int (will then be left unchanged)
		RETURNS (int): int representation of the attribute, or None if it couldn't be converted.
	**/
	static public function intify_attr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		intify_attrs(stringy_attrs, strings_map=None, _do_deprecated=False)
		
		Normalize a dictionary of attributes, converting them to ints.
		
		stringy_attrs (dict): Dictionary keyed by attribute string names. Values
		    can be ints or strings.
		strings_map (StringStore): Defaults to None. If provided, encodes string
		    values into ints.
		RETURNS (dict): Attributes dictionary with keys and optionally values
		    converted to ints.
	**/
	static public function intify_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var key : Dynamic;
	static public var value : Dynamic;
}