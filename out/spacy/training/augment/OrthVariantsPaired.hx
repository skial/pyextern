/* This file is generated, do not edit! */
package spacy.training.augment;
@:pythonImport("spacy.training.augment", "OrthVariantsPaired") extern class OrthVariantsPaired {
	static public function Config():Dynamic;
	static public var __abstractmethods__ : Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __class_vars__ : Dynamic;
	static public function __config__():Dynamic;
	static public var __custom_root_type__ : Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
	static public var __fields__ : Dynamic;
	public var __fields_set__ : Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	static public function __get_validators__():Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Create a new model by parsing and validating input data from keyword arguments.
		
		Raises ValidationError if the input data cannot be parsed to form a valid model.
	**/
	@:native("__init__")
	public function ___init__(?data:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new model by parsing and validating input data from keyword arguments.
		
		Raises ValidationError if the input data cannot be parsed to form a valid model.
	**/
	public function new(?data:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		so `dict(model)` works
	**/
	public function __iter__():Dynamic;
	static public function __json_encoder__(obj:Dynamic):Dynamic;
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
	static public var __post_root_validators__ : Dynamic;
	static public var __pre_root_validators__ : Dynamic;
	/**
		Used by devtools (https://python-devtools.helpmanual.io/) to provide a human readable representations of objects
	**/
	public function __pretty__(fmt:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __private_attributes__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	public function __repr__():Dynamic;
	public function __repr_args__():Dynamic;
	/**
		Name of the instance's class, used in __repr__.
	**/
	public function __repr_name__():Dynamic;
	public function __repr_str__(join_str:Dynamic):Dynamic;
	static public var __schema_cache__ : Dynamic;
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	static public var __signature__ : Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __validators__ : Dynamic;
	static public var _abc_impl : Dynamic;
	public function _calculate_keys(include:Dynamic, exclude:Dynamic, exclude_unset:Dynamic, ?update:Dynamic):Dynamic;
	static public function _decompose_class(obj:Dynamic):Dynamic;
	static public function _enforce_dict_if_root(obj:Dynamic):Dynamic;
	static public function _get_value(v:Dynamic, to_dict:Dynamic, by_alias:Dynamic, include:Dynamic, exclude:Dynamic, exclude_unset:Dynamic, exclude_defaults:Dynamic, exclude_none:Dynamic):Dynamic;
	public function _init_private_attributes():Dynamic;
	public function _iter(?to_dict:Dynamic, ?by_alias:Dynamic, ?include:Dynamic, ?exclude:Dynamic, ?exclude_unset:Dynamic, ?exclude_defaults:Dynamic, ?exclude_none:Dynamic):Dynamic;
	/**
		Creates a new model setting __dict__ and __fields_set__ from trusted or pre-validated data.
		Default values are respected, but no other validation is performed.
		Behaves as if `Config.extra = 'allow'` was set since it adds all passed values
	**/
	static public function construct(?_fields_set:Dynamic, ?values:python.KwArgs<Dynamic>):Dynamic;
	/**
		Duplicate a model, optionally choose which fields to include, exclude and change.
		
		:param include: fields to include in new model
		:param exclude: fields to exclude from new model, as with values this takes precedence over include
		:param update: values to change/add in the new model. Note: the data is not validated before creating
		    the new model: you should trust this data
		:param deep: set to `True` to make a deep copy of the model
		:return: new model instance
	**/
	public function copy(?include:Dynamic, ?exclude:Dynamic, ?update:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		Generate a dictionary representation of the model, optionally specifying which fields to include or exclude.
	**/
	public function dict(?include:Dynamic, ?exclude:Dynamic, ?by_alias:Dynamic, ?skip_defaults:Dynamic, ?exclude_unset:Dynamic, ?exclude_defaults:Dynamic, ?exclude_none:Dynamic):Dynamic;
	static public function from_orm(obj:Dynamic):Dynamic;
	/**
		Generate a JSON representation of the model, `include` and `exclude` arguments as per `dict()`.
		
		`encoder` is an optional function to supply as `default` to json.dumps(), other arguments as per `json.dumps()`.
	**/
	public function json(?include:Dynamic, ?exclude:Dynamic, ?by_alias:Dynamic, ?skip_defaults:Dynamic, ?exclude_unset:Dynamic, ?exclude_defaults:Dynamic, ?exclude_none:Dynamic, ?encoder:Dynamic, ?dumps_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function parse_file(path:Dynamic, ?content_type:Dynamic, ?encoding:Dynamic, ?proto:Dynamic, ?allow_pickle:Dynamic):Dynamic;
	static public function parse_obj(obj:Dynamic):Dynamic;
	static public function parse_raw(b:Dynamic, ?content_type:Dynamic, ?encoding:Dynamic, ?proto:Dynamic, ?allow_pickle:Dynamic):Dynamic;
	static public function schema(?by_alias:Dynamic, ?ref_template:Dynamic):Dynamic;
	static public function schema_json(?by_alias:Dynamic, ?ref_template:Dynamic, ?dumps_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Try to update ForwardRefs on fields based on this Model, globalns and localns.
	**/
	static public function update_forward_refs(?localns:python.KwArgs<Dynamic>):Dynamic;
	static public function validate(value:Dynamic):Dynamic;
}