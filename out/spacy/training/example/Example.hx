/* This file is generated, do not edit! */
package spacy.training.example;
@:pythonImport("spacy.training.example", "Example") extern class Example {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Example.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Example.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _cached_alignment : Dynamic;
	public var _cached_words_x : Dynamic;
	public var _cached_words_y : Dynamic;
	/**
		Example._get_aligned_spans(self, doc, spans, align, allow_overlap)
	**/
	public function _get_aligned_spans(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example._links_to_dict(self)
	**/
	public function _links_to_dict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _x_sig : Dynamic;
	public var _y_sig : Dynamic;
	public var alignment : Dynamic;
	/**
		Example.copy(self)
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example.from_dict(type cls, Doc predicted, dict example_dict)
	**/
	public function from_dict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example.get_aligned(self, field, as_string=False)
		Return an aligned array for a token attribute.
	**/
	public function get_aligned(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example.get_aligned_ents_and_ner(self)
	**/
	public function get_aligned_ents_and_ner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example.get_aligned_ner(self)
	**/
	public function get_aligned_ner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example.get_aligned_parse(self, projectivize=True)
	**/
	public function get_aligned_parse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example.get_aligned_sent_starts(self)
		Get list of SENT_START attributes aligned to the predicted tokenization.
		        If the reference has not sentence starts, return a list of None values.
		        
	**/
	public function get_aligned_sent_starts(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example.get_aligned_spans_x2y(self, x_spans, allow_overlap=False)
	**/
	public function get_aligned_spans_x2y(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Example.get_aligned_spans_y2x(self, y_spans, allow_overlap=False)
	**/
	public function get_aligned_spans_y2x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var predicted : Dynamic;
	public var reference : Dynamic;
	/**
		Example.split_sents(self)
		Split the token annotations into multiple Examples based on
		       sent_starts and return a list of the new Examples
	**/
	public function split_sents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var text : Dynamic;
	/**
		Example.to_dict(self)
	**/
	public function to_dict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var x : Dynamic;
	public var y : Dynamic;
}