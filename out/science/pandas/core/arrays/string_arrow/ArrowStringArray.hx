/* This file is generated, do not edit! */
package pandas.core.arrays.string_arrow;
@:pythonImport("pandas.core.arrays.string_arrow", "ArrowStringArray") extern class ArrowStringArray {
	public var T : Dynamic;
	static public var __abstractmethods__ : Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Correctly construct numpy arrays when passed to `np.asarray()`.
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
	public function __array_ufunc__(ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert myself to a pyarrow Array or ChunkedArray.
	**/
	public function __arrow_array__(?type:Dynamic):Dynamic;
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
	/**
		Return for `item in self`.
	**/
	public function __contains__(item:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	public function __divmod__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Select a subset of self.
		
		Parameters
		----------
		item : int, slice, or ndarray
		    * int: The position in 'self' to get.
		    * slice: A slice object, where 'start', 'stop', and 'step' are
		      integers or None
		    * ndarray: A 1-d boolean NumPy ndarray the same length as 'self'
		
		Returns
		-------
		item : scalar or ExtensionArray
		
		Notes
		-----
		For scalar ``item``, return a scalar value suitable for the array's
		type. This should be an instance of ``self.dtype.type``.
		For slice ``key``, return an instance of ``ExtensionArray``, even
		if the slice is length 0 or 1.
		For a boolean mask, return an instance of ``ExtensionArray``, filtered
		to the values where ``item`` is True.
	**/
	public function __getitem__(item:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(values:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Iterate over elements of the array.
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Length of this array.
		
		Returns
		-------
		length : int
	**/
	public function __len__():Int;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rand__(other:Dynamic):Dynamic;
	public function __rdivmod__(other:Dynamic):Dynamic;
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
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __ror__(other:Dynamic):Dynamic;
	public function __rpow__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	public function __rxor__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set one or more values inplace.
		
		Parameters
		----------
		key : int, ndarray, or slice
		    When called from, e.g. ``Series.__setitem__``, ``key`` will be
		    one of
		
		    * scalar int
		    * ndarray of integers.
		    * boolean ndarray
		    * slice object
		
		value : ExtensionDtype.type, Sequence[ExtensionDtype.type], or object
		    value or values to be set of ``key``.
		
		Returns
		-------
		None
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(other:Dynamic):Dynamic;
	static public var _abc_impl : Dynamic;
	public function _arith_method(other:Dynamic, op:Dynamic):Dynamic;
	public function _as_pandas_scalar(arrow_scalar:Dynamic):Dynamic;
	public var _can_hold_na : Dynamic;
	public function _cmp_method(other:Dynamic, op:Dynamic):Dynamic;
	/**
		Concatenate multiple ArrowStringArray.
		
		Parameters
		----------
		to_concat : sequence of ArrowStringArray
		
		Returns
		-------
		ArrowStringArray
	**/
	static public function _concat_same_type(to_concat:Dynamic):Dynamic;
	/**
		Create an ExtensionArray with the given shape and dtype.
		
		See also
		--------
		ExtensionDtype.empty
		    ExtensionDtype.empty is the 'official' public version of this API.
	**/
	static public function _empty(shape:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Replace values in locations specified by 'mask' using pad or backfill.
		
		See also
		--------
		ExtensionArray.fillna
	**/
	public function _fill_mask_inplace(method:Dynamic, limit:Dynamic, mask:Dynamic):Dynamic;
	/**
		Formatting function for scalar values.
		
		This is used in the default '__repr__'. The returned formatting
		function receives instances of your scalar type.
		
		Parameters
		----------
		boxed : bool, default False
		    An indicated for whether or not your array is being printed
		    within a Series, DataFrame, or Index (True), or just by
		    itself (False). This may be useful if you want scalar values
		    to appear differently within a Series versus on its own (e.g.
		    quoted or not).
		
		Returns
		-------
		Callable[[Any], str]
		    A callable that gets instances of the scalar type and
		    returns a string. By default, :func:`repr` is used
		    when ``boxed=False`` and :func:`str` is used when
		    ``boxed=True``.
	**/
	public function _formatter(?boxed:Dynamic):Dynamic;
	/**
		Reconstruct an ExtensionArray after factorization.
		
		Parameters
		----------
		values : ndarray
		    An integer ndarray with the factorized values.
		original : ExtensionArray
		    The original ExtensionArray that factorize was called on.
		
		See Also
		--------
		factorize : Top-level factorize method that dispatches here.
		ExtensionArray.factorize : Encode the extension array as an enumerated type.
	**/
	static public function _from_factorized(values:Dynamic, original:Dynamic):Dynamic;
	/**
		Construct a new ExtensionArray from a sequence of scalars.
		
		Parameters
		----------
		scalars : Sequence
		    Each element will be an instance of the scalar type for this
		    array, ``cls.dtype.type`` or be converted into this type in this method.
		dtype : dtype, optional
		    Construct for this particular dtype. This should be a Dtype
		    compatible with the ExtensionArray.
		copy : bool, default False
		    If True, copy the underlying data.
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _from_sequence(scalars:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Construct a new ExtensionArray from a sequence of strings.
		
		Parameters
		----------
		strings : Sequence
		    Each element will be an instance of the scalar type for this
		    array, ``cls.dtype.type``.
		dtype : dtype, optional
		    Construct for this particular dtype. This should be a Dtype
		    compatible with the ExtensionArray.
		copy : bool, default False
		    If True, copy the underlying data.
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _from_sequence_of_strings(strings:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Equivalent to `self.isna().any()`.
		
		Some ExtensionArray subclasses may be able to optimize this check.
	**/
	public var _hasna : Dynamic;
	public function _logical_method(other:Dynamic, op:Dynamic):Dynamic;
	/**
		Returns the mode(s) of the ExtensionArray.
		
		Always returns `ExtensionArray` even if only one value.
		
		Parameters
		----------
		dropna : bool, default True
		    Don't consider counts of NA values.
		
		Returns
		-------
		same type as self
		    Sorted, if possible.
	**/
	public function _mode(?dropna:Dynamic):Dynamic;
	/**
		Analogue to np.putmask(self, mask, value)
		
		Parameters
		----------
		mask : np.ndarray[bool]
		value : scalar or listlike
		    If listlike, must be arraylike with same length as self.
		
		Returns
		-------
		None
		
		Notes
		-----
		Unlike np.putmask, we do not repeat listlike values with mismatched length.
		'value' should either be a scalar or an arraylike with the same length
		as self.
	**/
	public function _putmask(mask:Dynamic, value:Dynamic):Dynamic;
	/**
		Compute the quantiles of self for each quantile in `qs`.
		
		Parameters
		----------
		qs : np.ndarray[float64]
		interpolation: str
		
		Returns
		-------
		same type as self
	**/
	public function _quantile(qs:Dynamic, interpolation:Dynamic):Dynamic;
	/**
		See Series.rank.__doc__.
	**/
	public function _rank(?axis:Dynamic, ?method:Dynamic, ?na_option:Dynamic, ?ascending:Dynamic, ?pct:Dynamic):Dynamic;
	/**
		Return a scalar result of performing the reduction operation.
		
		Parameters
		----------
		name : str
		    Name of the function, supported values are:
		    { any, all, min, max, sum, mean, median, prod,
		    std, var, sem, kurt, skew }.
		skipna : bool, default True
		    If True, skip NaN values.
		**kwargs
		    Additional keyword arguments passed to the reduction function.
		    Currently, `ddof` is the only supported kwarg.
		
		Returns
		-------
		scalar
		
		Raises
		------
		TypeError : subclass does not define reductions
	**/
	public function _reduce(name:Dynamic, ?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _repr_2d():Dynamic;
	public function _str_capitalize():Dynamic;
	public function _str_casefold():Dynamic;
	public function _str_contains(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?regex:Dynamic):Dynamic;
	public function _str_count(pat:Dynamic, ?flags:Dynamic):Dynamic;
	public function _str_encode(encoding:Dynamic, ?errors:Dynamic):Dynamic;
	public function _str_endswith(pat:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_extract(pat:Dynamic, ?flags:Dynamic, ?expand:Dynamic):Dynamic;
	public function _str_find(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_find_(sub:Dynamic, start:Dynamic, end:Dynamic, side:Dynamic):Dynamic;
	public function _str_findall(pat:Dynamic, ?flags:Dynamic):Dynamic;
	public function _str_fullmatch(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_get(i:Dynamic):Dynamic;
	public function _str_get_dummies(?sep:Dynamic):Dynamic;
	public function _str_getitem(key:Dynamic):Dynamic;
	public function _str_index(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_isalnum():Dynamic;
	public function _str_isalpha():Dynamic;
	public function _str_isdecimal():Dynamic;
	public function _str_isdigit():Dynamic;
	public function _str_islower():Dynamic;
	public function _str_isnumeric():Dynamic;
	public function _str_isspace():Dynamic;
	public function _str_istitle():Dynamic;
	public function _str_isupper():Dynamic;
	public function _str_join(sep:Dynamic):Dynamic;
	public function _str_len():Dynamic;
	public function _str_lower():Dynamic;
	public function _str_lstrip(?to_strip:Dynamic):Dynamic;
	/**
		Map a callable over valid elements of the array.
		
		Parameters
		----------
		f : Callable
		    A function to call on each non-NA element.
		na_value : Scalar, optional
		    The value to set for NA values. Might also be used for the
		    fill value if the callable `f` raises an exception.
		    This defaults to ``self._str_na_value`` which is ``np.nan``
		    for object-dtype and Categorical and ``pd.NA`` for StringArray.
		dtype : Dtype, optional
		    The dtype of the result array.
		convert : bool, default True
		    Whether to call `maybe_convert_objects` on the resulting ndarray
	**/
	public function _str_map(f:Dynamic, ?na_value:Dynamic, ?dtype:Dynamic, ?convert:Dynamic):Dynamic;
	public function _str_match(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic):Dynamic;
	static public var _str_na_value : Dynamic;
	public function _str_normalize(form:Dynamic):Dynamic;
	public function _str_pad(width:Dynamic, ?side:Dynamic, ?fillchar:Dynamic):Dynamic;
	public function _str_partition(sep:Dynamic, expand:Dynamic):Dynamic;
	public function _str_removeprefix(prefix:Dynamic):Dynamic;
	public function _str_removesuffix(suffix:Dynamic):Dynamic;
	public function _str_repeat(repeats:Dynamic):Dynamic;
	public function _str_replace(pat:Dynamic, repl:Dynamic, ?n:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?regex:Dynamic):Dynamic;
	public function _str_rfind(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_rindex(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_rpartition(sep:Dynamic, expand:Dynamic):Dynamic;
	public function _str_rsplit(?pat:Dynamic, ?n:Dynamic):Dynamic;
	public function _str_rstrip(?to_strip:Dynamic):Dynamic;
	public function _str_slice(?start:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
	public function _str_slice_replace(?start:Dynamic, ?stop:Dynamic, ?repl:Dynamic):Dynamic;
	public function _str_split(?pat:Dynamic, ?n:Dynamic, ?expand:Dynamic, ?regex:Dynamic):Dynamic;
	public function _str_startswith(pat:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_strip(?to_strip:Dynamic):Dynamic;
	public function _str_swapcase():Dynamic;
	public function _str_title():Dynamic;
	public function _str_translate(table:Dynamic):Dynamic;
	public function _str_upper():Dynamic;
	public function _str_wrap(width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _typ : Dynamic;
	/**
		Return values for sorting.
		
		Returns
		-------
		ndarray
		    The transformed values should maintain the ordering between values
		    within the array.
		
		See Also
		--------
		ExtensionArray.argsort : Return the indices that would sort this array.
	**/
	public function _values_for_argsort():Dynamic;
	/**
		Return an array and missing value suitable for factorization.
		
		Returns
		-------
		values : ndarray
		
		    An array suitable for factorization. This should maintain order
		    and be a supported dtype (Float64, Int64, UInt64, String, Object).
		    By default, the extension array is cast to object dtype.
		na_value : object
		    The value in `values` to consider missing. This will be treated
		    as NA in the factorization routines, so it will be coded as
		    `na_sentinel` and not included in `uniques`. By default,
		    ``np.nan`` is used.
		
		Notes
		-----
		The values returned by this method are also used in
		:func:`pandas.util.hash_pandas_object`.
	**/
	public function _values_for_factorize():Dynamic;
	/**
		Analogue to np.where(mask, self, value)
		
		Parameters
		----------
		mask : np.ndarray[bool]
		value : scalar or listlike
		
		Returns
		-------
		same type as self
	**/
	public function _where(mask:Dynamic, value:Dynamic):Dynamic;
	/**
		Return the index of maximum value.
		
		In case of multiple occurrences of the maximum value, the index
		corresponding to the first occurrence is returned.
		
		Parameters
		----------
		skipna : bool, default True
		
		Returns
		-------
		int
		
		See Also
		--------
		ExtensionArray.argmin
	**/
	public function argmax(?skipna:Dynamic):Dynamic;
	/**
		Return the index of minimum value.
		
		In case of multiple occurrences of the minimum value, the index
		corresponding to the first occurrence is returned.
		
		Parameters
		----------
		skipna : bool, default True
		
		Returns
		-------
		int
		
		See Also
		--------
		ExtensionArray.argmax
	**/
	public function argmin(?skipna:Dynamic):Dynamic;
	/**
		Return the indices that would sort this array.
		
		Parameters
		----------
		ascending : bool, default True
		    Whether the indices should result in an ascending
		    or descending sort.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    Sorting algorithm.
		*args, **kwargs:
		    Passed through to :func:`numpy.argsort`.
		
		Returns
		-------
		np.ndarray[np.intp]
		    Array of indices that sort ``self``. If NaN values are contained,
		    NaN values are placed at the end.
		
		See Also
		--------
		numpy.argsort : Sorting implementation used internally.
	**/
	public function argsort(?ascending:Dynamic, ?kind:Dynamic, ?na_position:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cast to a NumPy array or ExtensionArray with 'dtype'.
		
		Parameters
		----------
		dtype : str or dtype
		    Typecode or data-type to which the array is cast.
		copy : bool, default True
		    Whether to copy the data, even if not necessary. If False,
		    a copy is made only if the old dtype does not match the
		    new dtype.
		
		Returns
		-------
		array : np.ndarray or ExtensionArray
		    An ExtensionArray if dtype is ExtensionDtype,
		    Otherwise a NumPy ndarray with 'dtype' for its dtype.
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return a shallow copy of the array.
		
		Underlying ChunkedArray is immutable, so a deep copy is unnecessary.
		
		Returns
		-------
		ArrowStringArray
	**/
	public function copy():Dynamic;
	public function delete(loc:Dynamic):Dynamic;
	/**
		Return ExtensionArray without NA values.
		
		Returns
		-------
		valid : ExtensionArray
	**/
	public function dropna():Dynamic;
	/**
		An instance of 'string[pyarrow]'.
	**/
	public var dtype : Dynamic;
	/**
		Return if another array is equivalent to this array.
		
		Equivalent means that both arrays have the same shape and dtype, and
		all values compare equal. Missing values in the same location are
		considered equal (in contrast with normal equality).
		
		Parameters
		----------
		other : ExtensionArray
		    Array to compare to this Array.
		
		Returns
		-------
		boolean
		    Whether the arrays are equivalent.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Encode the extension array as an enumerated type.
		
		Parameters
		----------
		na_sentinel : int, default -1
		    Value to use in the `codes` array to indicate missing values.
		
		Returns
		-------
		codes : ndarray
		    An integer NumPy array that's an indexer into the original
		    ExtensionArray.
		uniques : ExtensionArray
		    An ExtensionArray containing the unique values of `self`.
		
		    .. note::
		
		       uniques will *not* contain an entry for the NA value of
		       the ExtensionArray if there are any missing values present
		       in `self`.
		
		See Also
		--------
		factorize : Top-level factorize method that dispatches here.
		
		Notes
		-----
		:meth:`pandas.factorize` offers a `sort` keyword as well.
	**/
	public function factorize(?na_sentinel:Dynamic):numpy.Ndarray;
	/**
		Fill NA/NaN values using the specified method.
		
		Parameters
		----------
		value : scalar, array-like
		    If a scalar value is passed it is used to fill all missing values.
		    Alternatively, an array-like 'value' can be given. It's expected
		    that the array-like have the same length as 'self'.
		method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		    Method to use for filling holes in reindexed Series
		    pad / ffill: propagate last valid observation forward to next valid
		    backfill / bfill: use NEXT valid observation to fill gap.
		limit : int, default None
		    If method is specified, this is the maximum number of consecutive
		    NaN values to forward/backward fill. In other words, if there is
		    a gap with more than this number of consecutive NaNs, it will only
		    be partially filled. If method is not specified, this is the
		    maximum number of entries along the entire axis where NaNs will be
		    filled.
		
		Returns
		-------
		ExtensionArray
		    With NA/NaN filled.
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Insert an item at the given position.
		
		Parameters
		----------
		loc : int
		item : scalar-like
		
		Returns
		-------
		same type as self
		
		Notes
		-----
		This method should be both type and dtype-preserving.  If the item
		cannot be held in an array of this type/dtype, either ValueError or
		TypeError should be raised.
		
		The default implementation relies on _from_sequence to raise on invalid
		items.
	**/
	public function insert(loc:Dynamic, item:Dynamic):Dynamic;
	/**
		Pointwise comparison for set containment in the given values.
		
		Roughly equivalent to `np.array([x in values for x in self])`
		
		Parameters
		----------
		values : Sequence
		
		Returns
		-------
		np.ndarray[bool]
	**/
	public function isin(values:Dynamic):Dynamic;
	/**
		Boolean NumPy array indicating if each value is missing.
		
		This should return a 1-D array the same length as 'self'.
	**/
	public function isna():Dynamic;
	/**
		The number of bytes needed to store this object in memory.
	**/
	public var nbytes : Dynamic;
	/**
		Extension Arrays are only allowed to be 1-dimensional.
	**/
	public var ndim : Dynamic;
	/**
		Return a flattened view on this array.
		
		Parameters
		----------
		order : {None, 'C', 'F', 'A', 'K'}, default 'C'
		
		Returns
		-------
		ExtensionArray
		
		Notes
		-----
		- Because ExtensionArrays are 1D-only, this is a no-op.
		- The "order" argument is ignored, is for compatibility with NumPy.
	**/
	public function ravel(?order:Dynamic):Dynamic;
	/**
		Repeat elements of a ExtensionArray.
		
		Returns a new ExtensionArray where each element of the current ExtensionArray
		is repeated consecutively a given number of times.
		
		Parameters
		----------
		repeats : int or array of ints
		    The number of repetitions for each element. This should be a
		    non-negative integer. Repeating 0 times will return an empty
		    ExtensionArray.
		axis : None
		    Must be ``None``. Has no effect but is accepted for compatibility
		    with numpy.
		
		Returns
		-------
		repeated_array : ExtensionArray
		    Newly created ExtensionArray with repeated elements.
		
		See Also
		--------
		Series.repeat : Equivalent function for Series.
		Index.repeat : Equivalent function for Index.
		numpy.repeat : Similar method for :class:`numpy.ndarray`.
		ExtensionArray.take : Take arbitrary positions.
		
		Examples
		--------
		>>> cat = pd.Categorical(['a', 'b', 'c'])
		>>> cat
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		>>> cat.repeat(2)
		['a', 'a', 'b', 'b', 'c', 'c']
		Categories (3, object): ['a', 'b', 'c']
		>>> cat.repeat([1, 2, 3])
		['a', 'b', 'b', 'c', 'c', 'c']
		Categories (3, object): ['a', 'b', 'c']
	**/
	public function repeat(repeats:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted array `self` (a) such that, if the
		corresponding elements in `value` were inserted before the indices,
		the order of `self` would be preserved.
		
		Assuming that `self` is sorted:
		
		======  ================================
		`side`  returned index `i` satisfies
		======  ================================
		left    ``self[i-1] < value <= self[i]``
		right   ``self[i-1] <= value < self[i]``
		======  ================================
		
		Parameters
		----------
		value : array-like, list or scalar
		    Value(s) to insert into `self`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `self`).
		sorter : 1-D array-like, optional
		    Optional array of integer indices that sort array a into ascending
		    order. They are typically the result of argsort.
		
		Returns
		-------
		array of ints or int
		    If value is array-like, array of insertion points.
		    If value is scalar, a single integer.
		
		See Also
		--------
		numpy.searchsorted : Similar method from NumPy.
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Return a tuple of the array dimensions.
	**/
	public var shape : Dynamic;
	/**
		Shift values by desired number.
		
		Newly introduced missing values are filled with
		``self.dtype.na_value``.
		
		Parameters
		----------
		periods : int, default 1
		    The number of periods to shift. Negative values are allowed
		    for shifting backwards.
		
		fill_value : object, optional
		    The scalar value to use for newly introduced missing values.
		    The default is ``self.dtype.na_value``.
		
		Returns
		-------
		ExtensionArray
		    Shifted.
		
		Notes
		-----
		If ``self`` is empty or ``periods`` is 0, a copy of ``self`` is
		returned.
		
		If ``periods > len(self)``, then an array of size
		len(self) is returned, with all values filled with
		``self.dtype.na_value``.
	**/
	public function shift(?periods:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		The number of elements in the array.
	**/
	public var size : Dynamic;
	/**
		Take elements from an array.
		
		Parameters
		----------
		indices : sequence of int or one-dimensional np.ndarray of int
		    Indices to be taken.
		allow_fill : bool, default False
		    How to handle negative values in `indices`.
		
		    * False: negative values in `indices` indicate positional indices
		      from the right (the default). This is similar to
		      :func:`numpy.take`.
		
		    * True: negative values in `indices` indicate
		      missing values. These values are set to `fill_value`. Any other
		      other negative values raise a ``ValueError``.
		
		fill_value : any, optional
		    Fill value to use for NA-indices when `allow_fill` is True.
		    This may be ``None``, in which case the default NA value for
		    the type, ``self.dtype.na_value``, is used.
		
		    For many ExtensionArrays, there will be two representations of
		    `fill_value`: a user-facing "boxed" scalar, and a low-level
		    physical NA value. `fill_value` should be the user-facing version,
		    and the implementation should handle translating that to the
		    physical version for processing the take if necessary.
		
		Returns
		-------
		ExtensionArray
		
		Raises
		------
		IndexError
		    When the indices are out of bounds for the array.
		ValueError
		    When `indices` contains negative values other than ``-1``
		    and `allow_fill` is True.
		
		See Also
		--------
		numpy.take
		api.extensions.take
		
		Notes
		-----
		ExtensionArray.take is called by ``Series.__getitem__``, ``.loc``,
		``iloc``, when `indices` is a sequence of values. Additionally,
		it's called by :meth:`Series.reindex`, or any other method
		that causes realignment, with a `fill_value`.
	**/
	public function take(indices:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Convert to a NumPy ndarray.
	**/
	public function to_numpy(?dtype:Dynamic, ?copy:Dynamic, ?na_value:Dynamic):Dynamic;
	/**
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		Returns
		-------
		list
	**/
	public function tolist():Dynamic;
	/**
		Return a transposed view on this array.
		
		Because ExtensionArrays are always 1D, this is a no-op.  It is included
		for compatibility with np.ndarray.
	**/
	public function transpose(?axes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Compute the ExtensionArray of unique values.
		
		Returns
		-------
		uniques : ExtensionArray
	**/
	public function unique():Dynamic;
	/**
		Return a Series containing counts of each unique value.
		
		Parameters
		----------
		dropna : bool, default True
		    Don't include counts of missing values.
		
		Returns
		-------
		counts : Series
		
		See Also
		--------
		Series.value_counts
	**/
	public function value_counts(?dropna:Dynamic):pandas.Series;
	/**
		Return a view on the array.
		
		Parameters
		----------
		dtype : str, np.dtype, or ExtensionDtype, optional
		    Default None.
		
		Returns
		-------
		ExtensionArray or np.ndarray
		    A view on the :class:`ExtensionArray`'s data.
	**/
	public function view(?dtype:Dynamic):Dynamic;
}