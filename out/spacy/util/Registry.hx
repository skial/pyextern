/* This file is generated, do not edit! */
package spacy.util;
@:pythonImport("spacy.util", "registry") extern class Registry {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public function _entry_point_factories(name:Dynamic, ?func:Dynamic):Dynamic;
	/**
		Build three representations of the config:
		1. All promises are preserved (just like config user would provide).
		2. Promises are replaced by their return values. This is the validation
		   copy and will be parsed by pydantic. It lets us include hacks to
		   work around problems (e.g. handling of generators).
		3. Final copy with promises replaced by their return values.
	**/
	static public function _fill(config:Dynamic, ?schema:Dynamic, ?validate:Dynamic, ?resolve:Dynamic, ?parent:Dynamic, ?overrides:Dynamic):Dynamic;
	/**
		Check whether a nested config property like "section.subsection.key"
		is in a given config.
	**/
	static public function _is_in_config(prop:Dynamic, config:Dynamic):Dynamic;
	/**
		Unpack a config dictionary and create two versions of the config:
		a resolved version with objects from the registry created recursively,
		and a filled version with all references to registry functions left
		intact, but filled with all values and defaults based on the type
		annotations. If validate=True, the config will be validated against the
		type annotations of the registered functions referenced in the config
		(if available) and/or the schema (if available).
	**/
	static public function _make(config:Dynamic, ?schema:Dynamic, ?overrides:Dynamic, ?resolve:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Update the final result with the parsed config like converted
		values recursively.
	**/
	static public function _update_from_parsed(validation:Dynamic, filled:Dynamic, _final:Dynamic):Dynamic;
	/**
		Validate overrides against a filled config to make sure there are
		no references to properties that don't exist and weren't used.
	**/
	static public function _validate_overrides(filled:Dynamic, overrides:Dynamic):Dynamic;
	static public function architectures(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function augmenters(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function batchers(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function callbacks(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function cli(name:Dynamic, ?func:Dynamic):Dynamic;
	/**
		Create a new custom registry.
	**/
	static public function create(registry_name:Dynamic, ?entry_points:Dynamic):Dynamic;
	static public function datasets(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function displacy_colors(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function factories(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function fill(config:Dynamic, ?schema:Dynamic, ?overrides:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Get info about a registered function from the registry.
	**/
	static public function find(registry_name:Dynamic, func_name:Dynamic):Dynamic;
	/**
		Get a registered function from the registry.
	**/
	static public function get(registry_name:Dynamic, func_name:Dynamic):Dynamic;
	static public function get_constructor(obj:Dynamic):Dynamic;
	/**
		List all available registries.
	**/
	static public function get_registry_names():Dynamic;
	/**
		Check whether a function is available in a registry.
	**/
	static public function has(registry_name:Dynamic, func_name:Dynamic):Dynamic;
	static public function initializers(name:Dynamic, ?func:Dynamic):Dynamic;
	/**
		Check whether an object is a "promise", i.e. contains a reference
		to a registered function (via a key starting with `"@"`.
	**/
	static public function is_promise(obj:Dynamic):Dynamic;
	static public function languages(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function layers(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function lemmatizers(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function loggers(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function lookups(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function losses(name:Dynamic, ?func:Dynamic):Dynamic;
	/**
		Create a schema for a promise dict (referencing a registry function)
		by inspecting the function signature.
	**/
	static public function make_promise_schema(obj:Dynamic, ?resolve:Dynamic):Dynamic;
	static public function misc(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function models(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function ops(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function optimizers(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function parse_args(obj:Dynamic):Dynamic;
	static public function readers(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function resolve(config:Dynamic, ?schema:Dynamic, ?overrides:Dynamic, ?validate:Dynamic):Dynamic;
	static public function schedules(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function scorers(name:Dynamic, ?func:Dynamic):Dynamic;
	static public function tokenizers(name:Dynamic, ?func:Dynamic):Dynamic;
}