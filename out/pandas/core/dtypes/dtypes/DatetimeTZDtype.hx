/* This file is generated, do not edit! */
package pandas.core.dtypes.dtypes;
@:pythonImport("pandas.core.dtypes.dtypes", "DatetimeTZDtype") extern class DatetimeTZDtype {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Check whether 'other' is equal to self.
		
		By default, 'other' is considered equal if either
		
		* it's a string matching 'self.name'.
		* it's an instance of this type and all of the
		  the attributes in ``self._metadata`` are equal between
		  `self` and `other`.
		
		Parameters
		----------
		other : Any
		
		Returns
		-------
		bool
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		An ExtensionDtype for timezone-aware datetime data.
		
		Parameters
		----------
		unit : str, default "ns"
		    The precision of the datetime data. Currently limited
		    to ``"ns"``.
		tz : str, int, or datetime.tzinfo
		    The timezone.
		
		Raises
		------
		pytz.UnknownTimeZoneError
		    When the requested timezone cannot be found.
		
		Examples
		--------
		>>> pd.core.dtypes.dtypes.DatetimeTZDtype(tz='UTC')
		datetime64[ns, UTC]
		
		>>> pd.core.dtypes.dtypes.DatetimeTZDtype(tz='dateutil/US/Central')
		datetime64[ns, tzfile('/usr/share/zoneinfo/US/Central')]
	**/
	@:native("__init__")
	public function ___init__(?unit:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		An ExtensionDtype for timezone-aware datetime data.
		
		Parameters
		----------
		unit : str, default "ns"
		    The precision of the datetime data. Currently limited
		    to ``"ns"``.
		tz : str, int, or datetime.tzinfo
		    The timezone.
		
		Raises
		------
		pytz.UnknownTimeZoneError
		    When the requested timezone cannot be found.
		
		Examples
		--------
		>>> pd.core.dtypes.dtypes.DatetimeTZDtype(tz='UTC')
		datetime64[ns, UTC]
		
		>>> pd.core.dtypes.dtypes.DatetimeTZDtype(tz='dateutil/US/Central')
		datetime64[ns, tzfile('/usr/share/zoneinfo/US/Central')]
	**/
	public function new(?unit:Dynamic, ?tz:Dynamic):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
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
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _cache : Dynamic;
	/**
		Whether this dtype should be considered boolean.
		
		By default, ExtensionDtypes are assumed to be non-numeric.
		Setting this to True will affect the behavior of several places,
		e.g.
		
		* is_bool
		* boolean indexing
		
		Returns
		-------
		bool
	**/
	public var _is_boolean : Dynamic;
	/**
		Whether columns with this dtype should be considered numeric.
		
		By default ExtensionDtypes are assumed to be non-numeric.
		They'll be excluded from operations that exclude non-numeric
		columns, like (groupby) reductions, plotting, etc.
	**/
	public var _is_numeric : Dynamic;
	static public var _match : Dynamic;
	static public var _metadata : Dynamic;
	static public var base : Dynamic;
	/**
		Return the array type associated with this dtype
		
		Returns
		-------
		type
	**/
	static public function construct_array_type():Dynamic;
	/**
		Construct a DatetimeTZDtype from a string.
		
		Parameters
		----------
		string : str
		    The string alias for this DatetimeTZDtype.
		    Should be formatted like ``datetime64[ns, <tz>]``,
		    where ``<tz>`` is the timezone name.
		
		Examples
		--------
		>>> DatetimeTZDtype.construct_from_string('datetime64[ns, UTC]')
		datetime64[ns, UTC]
	**/
	static public function construct_from_string(string:Dynamic):Dynamic;
	/**
		Check if we match 'dtype'.
		
		Parameters
		----------
		dtype : object
		    The object to check.
		
		Returns
		-------
		is_dtype : bool
		
		Notes
		-----
		The default implementation is True if
		
		1. ``cls.construct_from_string(dtype)`` is an instance
		   of ``cls``.
		2. ``dtype`` is an object and is an instance of ``cls``
		3. ``dtype`` has a ``dtype`` attribute, and any of the above
		   conditions is true for ``dtype.dtype``.
	**/
	static public function is_dtype(dtype:Dynamic):Dynamic;
	static public var isbuiltin : Dynamic;
	static public var isnative : Dynamic;
	static public var itemsize : Dynamic;
	static public var kind : Dynamic;
	static public var na_value : Dynamic;
	/**
		A string representation of the dtype.
	**/
	public var name : Dynamic;
	/**
		Ordered list of field names, or None if there are no fields.
		
		This is for compatibility with NumPy arrays, and may be removed in the
		future.
	**/
	public var names : Dynamic;
	static public var num : Dynamic;
	/**
		clear the cache 
	**/
	static public function reset_cache():Dynamic;
	static public var shape : Dynamic;
	static public var str : Dynamic;
	static public var subdtype : Dynamic;
	/**
		Pandas replacement for datetime.datetime
		
		Timestamp is the pandas equivalent of python's Datetime
		and is interchangeable with it in most cases. It's the type used
		for the entries that make up a DatetimeIndex, and other timeseries
		oriented data structures in pandas.
		
		Parameters
		----------
		ts_input : datetime-like, str, int, float
		    Value to be converted to Timestamp
		freq : str, DateOffset
		    Offset which Timestamp will have
		tz : str, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time which Timestamp will have.
		unit : str
		    Unit used for conversion if ts_input is of type int or float. The
		    valid values are 'D', 'h', 'm', 's', 'ms', 'us', and 'ns'. For
		    example, 's' means seconds and 'ms' means milliseconds.
		year, month, day : int
		    .. versionadded:: 0.19.0
		hour, minute, second, microsecond : int, optional, default 0
		    .. versionadded:: 0.19.0
		nanosecond : int, optional, default 0
		    .. versionadded:: 0.23.0
		tzinfo : datetime.tzinfo, optional, default None
		    .. versionadded:: 0.19.0
		
		Notes
		-----
		There are essentially three calling conventions for the constructor. The
		primary form accepts four parameters. They can be passed by position or
		keyword.
		
		The other two forms mimic the parameters from ``datetime.datetime``. They
		can be passed by either position or keyword, but not both mixed together.
		
		Examples
		--------
		Using the primary calling convention:
		
		This converts a datetime-like string
		>>> pd.Timestamp('2017-01-01T12')
		Timestamp('2017-01-01 12:00:00')
		
		This converts a float representing a Unix epoch in units of seconds
		>>> pd.Timestamp(1513393355.5, unit='s')
		Timestamp('2017-12-16 03:02:35.500000')
		
		This converts an int representing a Unix-epoch in units of seconds
		and for a particular timezone
		>>> pd.Timestamp(1513393355, unit='s', tz='US/Pacific')
		Timestamp('2017-12-15 19:02:35-0800', tz='US/Pacific')
		
		Using the other two forms that mimic the API for ``datetime.datetime``:
		
		>>> pd.Timestamp(2017, 1, 1, 12)
		Timestamp('2017-01-01 12:00:00')
		
		>>> pd.Timestamp(year=2017, month=1, day=1, hour=12)
		Timestamp('2017-01-01 12:00:00')
	**/
	static public function type(?ts_input:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?unit:Dynamic, ?year:Dynamic, ?month:Dynamic, ?day:Dynamic, ?hour:Dynamic, ?minute:Dynamic, ?second:Dynamic, ?microsecond:Dynamic, ?nanosecond:Dynamic, ?tzinfo:Dynamic):Dynamic;
	/**
		The timezone.
	**/
	public var tz : Dynamic;
	/**
		The precision of the datetime data.
	**/
	public var unit : Dynamic;
}