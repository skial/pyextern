/* This file is generated, do not edit! */
package spacy.morphology;
@:pythonImport("spacy.morphology", "Morphology") extern class Morphology {
	static public var EMPTY_MORPH : Dynamic;
	static public var FEATURE_SEP : Dynamic;
	static public var FIELD_SEP : Dynamic;
	static public var VALUE_SEP : Dynamic;
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
	static public var __pyx_vtable__ : Dynamic;
	/**
		Morphology.__reduce__(self)
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
	/**
		Morphology.add(self, features)
		Insert a morphological analysis in the morphology table, if not
		        already present. The morphological analysis may be provided in the UD
		        FEATS format as a string or in the tag map dict format.
		        Returns the hash of the new analysis.
		        
	**/
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Morphology.dict_to_feats(feats_dict)
	**/
	static public function dict_to_feats(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Morphology.feats_to_dict(feats)
	**/
	static public function feats_to_dict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Morphology.get(self, hash_t morph)
	**/
	public function get(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var mem : Dynamic;
	/**
		Morphology.normalize_attrs(self, attrs)
		Convert attrs dict so that POS is always by ID, other features are
		        by string. Values separated by VALUE_SEP are sorted.
		        
	**/
	public function normalize_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Morphology.normalize_features(self, features)
		Create a normalized FEATS string from a features string or dict.
		
		        features (Union[dict, str]): Features as dict or UFEATS string.
		        RETURNS (str): Features as normalized UFEATS string.
		        
	**/
	public function normalize_features(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var strings : Dynamic;
}