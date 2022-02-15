/* This file is generated, do not edit! */
package spacy.kb;
@:pythonImport("spacy.kb", "KnowledgeBase") extern class KnowledgeBase {
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
		Create a KnowledgeBase.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a KnowledgeBase.
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
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
	static public var __pyx_vtable__ : Dynamic;
	/**
		KnowledgeBase.__reduce_cython__(self)
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
		KnowledgeBase.__setstate_cython__(self, __pyx_state)
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
	/**
		KnowledgeBase.add_alias(self, str alias, entities, probabilities)
		
		For a given alias, add its potential entities and prior probabilies to the KB.
		Return the alias_hash at the end
	**/
	public function add_alias(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.add_entity(self, str entity, float freq, vector[float] entity_vector)
		
		Add an entity to the KB, optionally specifying its log probability based on corpus frequency
		Return the hash of the entity ID/name at the end.
	**/
	public function add_entity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.append_alias(self, str alias, str entity, float prior_prob, ignore_warnings=False)
		
		For an alias already existing in the KB, extend its potential entities with one more.
		Throw a warning if either the alias or the entity is unknown,
		or when the combination is already previously recorded.
		Throw an error if this entity+prior prob would exceed the sum of 1.
		For efficiency, it's best to use the method `add_alias` as much as possible instead of this one.
	**/
	public function append_alias(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.contains_alias(self, str alias)
	**/
	public function contains_alias(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.contains_entity(self, str entity)
	**/
	public function contains_entity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RETURNS (uint64): length of the entity vectors
	**/
	public var entity_vector_length : Dynamic;
	/**
		KnowledgeBase.from_bytes(self, bytes_data, *, exclude=tuple())
		Load state from a binary string.
		        
	**/
	public function from_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.from_disk(self, path, exclude: Iterable[str] = SimpleFrozenList())
	**/
	public function from_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.get_alias_candidates(self, str alias) -> Iterator[Candidate]
		
		Return candidate entities for an alias. Each candidate defines the entity, the original alias,
		and the prior probability of that alias resolving to that entity.
		If the alias is not known in the KB, and empty list is returned.
	**/
	public function get_alias_candidates(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.get_alias_strings(self)
	**/
	public function get_alias_strings(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.get_entity_strings(self)
	**/
	public function get_entity_strings(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.get_prior_prob(self, str entity, str alias)
		Return the prior probability of a given alias being linked to a given entity,
		       or return 0.0 when this combination is not known in the knowledge base
	**/
	public function get_prior_prob(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.get_size_aliases(self)
	**/
	public function get_size_aliases(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.get_size_entities(self)
	**/
	public function get_size_entities(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.get_vector(self, str entity)
	**/
	public function get_vector(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.initialize_aliases(self, int64_t nr_aliases)
	**/
	public function initialize_aliases(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.initialize_entities(self, int64_t nr_entities)
	**/
	public function initialize_entities(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.initialize_vectors(self, int64_t nr_entities)
	**/
	public function initialize_vectors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.read_contents(self, file_path)
	**/
	public function read_contents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.set_entities(self, entity_list, freq_list, vector_list)
	**/
	public function set_entities(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.to_bytes(self, **kwargs)
		Serialize the current state to a binary string.
		        
	**/
	public function to_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		KnowledgeBase.to_disk(self, path, exclude: Iterable[str] = SimpleFrozenList())
	**/
	public function to_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var vocab : Dynamic;
	/**
		KnowledgeBase.write_contents(self, file_path)
	**/
	public function write_contents(args:haxe.extern.Rest<Dynamic>):Dynamic;
}