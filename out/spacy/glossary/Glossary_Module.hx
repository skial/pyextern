/* This file is generated, do not edit! */
package spacy.glossary;
@:pythonImport("spacy.glossary") extern class Glossary_Module {
	static public var GLOSSARY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get a description for a given POS tag, dependency label or entity type.
		
		term (str): The term to explain.
		RETURNS (str): The explanation, or `None` if not found in the glossary.
		
		EXAMPLE:
		    >>> spacy.explain(u'NORP')
		    >>> doc = nlp(u'Hello world')
		    >>> print([w.text, w.tag_, spacy.explain(w.tag_) for w in doc])
	**/
	static public function explain(term:Dynamic):Dynamic;
}