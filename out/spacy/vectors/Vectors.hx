/* This file is generated, do not edit! */
package spacy.vectors;
@:pythonImport("spacy.vectors", "Vectors") extern class Vectors {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether a key has been mapped to a vector entry in the table.
		
		key (int): The key to check.
		RETURNS (bool): Whether the key has a vector entry.
		
		DOCS: https://spacy.io/api/vectors#contains
	**/
	public function __contains__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		Get a vector by key. If the key is not found, a KeyError is raised.
		
		key (str/int): The key to get the vector for.
		RETURNS (ndarray): The vector for the key.
		
		DOCS: https://spacy.io/api/vectors#getitem
	**/
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create a new vector store.
		
		strings (StringStore): The string store.
		shape (tuple): Size of the table, as (# entries, # columns)
		data (numpy.ndarray or cupy.ndarray): The vector data.
		keys (iterable): A sequence of keys, aligned with the data.
		name (str): A name to identify the vectors table.
		mode (str): Vectors mode: "default" or "floret" (default: "default").
		minn (int): The floret char ngram minn (default: 0).
		maxn (int): The floret char ngram maxn (default: 0).
		hash_count (int): The floret hash count (1-4, default: 1).
		hash_seed (int): The floret hash seed (default: 0).
		bow (str): The floret BOW string (default: "<").
		eow (str): The floret EOW string (default: ">").
		
		DOCS: https://spacy.io/api/vectors#init
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a new vector store.
		
		strings (StringStore): The string store.
		shape (tuple): Size of the table, as (# entries, # columns)
		data (numpy.ndarray or cupy.ndarray): The vector data.
		keys (iterable): A sequence of keys, aligned with the data.
		name (str): A name to identify the vectors table.
		mode (str): Vectors mode: "default" or "floret" (default: "default").
		minn (int): The floret char ngram minn (default: 0).
		maxn (int): The floret char ngram maxn (default: 0).
		hash_count (int): The floret hash count (1-4, default: 1).
		hash_seed (int): The floret hash seed (default: 0).
		bow (str): The floret BOW string (default: "<").
		eow (str): The floret EOW string (default: ">").
		
		DOCS: https://spacy.io/api/vectors#init
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Iterate over the keys in the table.
		
		YIELDS (int): A key in the table.
		
		DOCS: https://spacy.io/api/vectors#iter
	**/
	public function __iter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return the number of vectors in the table.
		
		RETURNS (int): The number of vectors in the data.
		
		DOCS: https://spacy.io/api/vectors#len
	**/
	public function __len__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Vectors.__reduce__(self)
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
		Set a vector for the given key.
		
		key (str/int): The key to set the vector for.
		vector (ndarray): The vector to set.
		
		DOCS: https://spacy.io/api/vectors#setitem
	**/
	public function __setitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Vectors._get_cfg(self)
	**/
	public function _get_cfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors._get_ngram_hashes(self, unicode s)
		Calculate up to 4 32-bit hash values with MurmurHash3_x64_128 using
		        the floret hash settings.
		        key (str): The string key.
		        RETURNS: A list of the integer hashes.
		        
	**/
	public function _get_ngram_hashes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors._get_ngrams(self, unicode key)
		Get all padded ngram strings using the ngram settings.
		        key (str): The string key.
		        RETURNS: A list of the ngram strings for the padded key.
		        
	**/
	public function _get_ngrams(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors._set_cfg(self, cfg)
	**/
	public function _set_cfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors._sync_unset(self)
	**/
	public function _sync_unset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors.add(self, key, *, vector=None, row=None)
		Add a key to the table. Keys can be mapped to an existing vector
		        by setting `row`, or a new vector can be added.
		
		        key (int): The key to add.
		        vector (ndarray / None): A vector to add for the key.
		        row (int / None): The row number of a vector to map the key to.
		        RETURNS (int): The row the vector was added to.
		
		        DOCS: https://spacy.io/api/vectors#add
		        
	**/
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var bow : Dynamic;
	/**
		Vectors.clear(self)
		Clear all entries in the vector table.
		
		        DOCS: https://spacy.io/api/vectors#clear
		        
	**/
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		data: object
	**/
	public var data : Dynamic;
	public var eow : Dynamic;
	/**
		Vectors.find(self, *, key=None, keys=None, row=None, rows=None)
		Look up one or more keys by row, or vice versa.
		
		        key (Union[int, str]): Find the row that the given key points to.
		            Returns int, -1 if missing.
		        keys (Iterable[Union[int, str]]): Find rows that the keys point to.
		            Returns ndarray.
		        row (int): Find the first key that points to the row.
		            Returns int.
		        rows (Iterable[int]): Find the keys that point to the rows.
		            Returns ndarray.
		        RETURNS: The requested key, keys, row or rows.
		        
	**/
	public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors.from_bytes(self, data, *, exclude=tuple())
		Load state from a binary string.
		
		        data (bytes): The data to load from.
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (Vectors): The `Vectors` object.
		
		        DOCS: https://spacy.io/api/vectors#from_bytes
		        
	**/
	public function from_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors.from_disk(self, path, *, exclude=tuple())
		Loads state from a directory. Modifies the object in place and
		        returns it.
		
		        path (str / Path): Directory path, string or Path-like object.
		        RETURNS (Vectors): The modified object.
		
		        DOCS: https://spacy.io/api/vectors#from_disk
		        
	**/
	public function from_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors.get_batch(self, keys)
		Get the vectors for the provided keys efficiently as a batch.
		        keys (Iterable[Union[int, str]]): The keys.
		        RETURNS: The requested vectors from the vector table.
		        
	**/
	public function get_batch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var hash_count : Dynamic;
	public var hash_seed : Dynamic;
	/**
		Whether the vectors table is full.
		
		RETURNS (bool): `True` if no slots are available for new keys.
		
		DOCS: https://spacy.io/api/vectors#is_full
	**/
	public var is_full : Dynamic;
	/**
		Vectors.items(self)
		Iterate over `(key, vector)` pairs.
		
		        YIELDS (tuple): A key/vector pair.
		
		        DOCS: https://spacy.io/api/vectors#items
		        
	**/
	public function items(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		key2row: object
	**/
	public var key2row : Dynamic;
	/**
		Vectors.keys(self)
		RETURNS (iterable): A sequence of keys in the table.
	**/
	public function keys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var maxn : Dynamic;
	public var minn : Dynamic;
	public var mode : Dynamic;
	/**
		Vectors.most_similar(self, queries, *, batch_size=1024, n=1, sort=True)
		For each of the given vectors, find the n most similar entries
		        to it, by cosine.
		
		        Queries are by vector. Results are returned as a `(keys, best_rows,
		        scores)` tuple. If `queries` is large, the calculations are performed in
		        chunks, to avoid consuming too much memory. You can set the `batch_size`
		        to control the size/space trade-off during the calculations.
		
		        queries (ndarray): An array with one or more vectors.
		        batch_size (int): The batch size to use.
		        n (int): The number of entries to return for each query.
		        sort (bool): Whether to sort the n entries returned by score.
		        RETURNS (tuple): The most similar entries as a `(keys, best_rows, scores)`
		            tuple.
		        
	**/
	public function most_similar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get the number of keys in the table. Note that this is the number
		of all keys, not just unique vectors.
		
		RETURNS (int): The number of keys in the table for default vectors.
		For floret vectors, return -1.
		
		DOCS: https://spacy.io/api/vectors#n_keys
	**/
	public var n_keys : Dynamic;
	/**
		name: object
	**/
	public var name : Dynamic;
	/**
		Vectors.resize(self, shape, inplace=False)
		Resize the underlying vectors array. If inplace=True, the memory
		        is reallocated. This may cause other references to the data to become
		        invalid, so only use inplace=True if you're sure that's what you want.
		
		        If the number of vectors is reduced, keys mapped to rows that have been
		        deleted are removed. These removed items are returned as a list of
		        `(key, row)` tuples.
		
		        shape (tuple): A `(rows, dims)` tuple.
		        inplace (bool): Reallocate the memory.
		        RETURNS (list): The removed items as a list of `(key, row)` tuples.
		
		        DOCS: https://spacy.io/api/vectors#resize
		        
	**/
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get `(rows, dims)` tuples of number of rows and number of dimensions
		in the vector table.
		
		RETURNS (tuple): A `(rows, dims)` pair.
		
		DOCS: https://spacy.io/api/vectors#shape
	**/
	public var shape : Dynamic;
	/**
		The vector size i,e. rows * dims.
		
		RETURNS (int): The vector size.
		
		DOCS: https://spacy.io/api/vectors#size
	**/
	public var size : Dynamic;
	/**
		strings: object
	**/
	public var strings : Dynamic;
	/**
		Vectors.to_bytes(self, *, exclude=tuple())
		Serialize the current state to a binary string.
		
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (bytes): The serialized form of the `Vectors` object.
		
		        DOCS: https://spacy.io/api/vectors#to_bytes
		        
	**/
	public function to_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors.to_disk(self, path, *, exclude=tuple())
		Save the current state to a directory.
		
		        path (str / Path): A path to a directory, which will be created if
		            it doesn't exists.
		
		        DOCS: https://spacy.io/api/vectors#to_disk
		        
	**/
	public function to_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors.to_ops(self, ops: Ops)
	**/
	public function to_ops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectors.values(self)
		Iterate over vectors that have been assigned to at least one key.
		
		        Note that some vectors may be unassigned, so the number of vectors
		        returned may be less than the length of the vectors table.
		
		        YIELDS (ndarray): A vector in the table.
		
		        DOCS: https://spacy.io/api/vectors#values
		        
	**/
	public function values(args:haxe.extern.Rest<Dynamic>):Dynamic;
}