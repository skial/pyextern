/* This file is generated, do not edit! */
package matplotlib.quiver;
@:pythonImport("matplotlib.quiver", "QuiverKey") extern class QuiverKey {
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
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		Add a key to a quiver plot.
		
		Call signature::
		
		  quiverkey(Q, X, Y, U, label, **kw)
		
		Arguments:
		
		  *Q*:
		    The Quiver instance returned by a call to quiver.
		
		  *X*, *Y*:
		    The location of the key; additional explanation follows.
		
		  *U*:
		    The length of the key
		
		  *label*:
		    A string with the length and units of the key
		
		Keyword arguments:
		
		  *angle* = 0
		    The angle of the key arrow. Measured in degrees anti-clockwise from the
		    x-axis.
		
		  *coordinates* = [ 'axes' | 'figure' | 'data' | 'inches' ]
		    Coordinate system and units for *X*, *Y*: 'axes' and 'figure' are
		    normalized coordinate systems with 0,0 in the lower left and 1,1
		    in the upper right; 'data' are the axes data coordinates (used for
		    the locations of the vectors in the quiver plot itself); 'inches'
		    is position in the figure in inches, with 0,0 at the lower left
		    corner.
		
		  *color*:
		    overrides face and edge colors from *Q*.
		
		  *labelpos* = [ 'N' | 'S' | 'E' | 'W' ]
		    Position the label above, below, to the right, to the left of the
		    arrow, respectively.
		
		  *labelsep*:
		    Distance in inches between the arrow and the label.  Default is
		    0.1
		
		  *labelcolor*:
		    defaults to default :class:`~matplotlib.text.Text` color.
		
		  *fontproperties*:
		    A dictionary with keyword arguments accepted by the
		    :class:`~matplotlib.font_manager.FontProperties` initializer:
		    *family*, *style*, *variant*, *size*, *weight*
		
		Any additional keyword arguments are used to override vector
		properties taken from *Q*.
		
		The positioning of the key depends on *X*, *Y*, *coordinates*, and
		*labelpos*.  If *labelpos* is 'N' or 'S', *X*, *Y* give the position
		of the middle of the key arrow.  If *labelpos* is 'E', *X*, *Y*
		positions the head, and if *labelpos* is 'W', *X*, *Y* positions the
		tail; in either of these two cases, *X*, *Y* is somewhere in the
		middle of the arrow+label key object.
	**/
	@:native("__init__")
	public function ___init__(Q:Dynamic, X:Dynamic, Y:Dynamic, U:Dynamic, label:Dynamic, ?angle:Dynamic, ?coordinates:Dynamic, ?color:Dynamic, ?labelsep:Dynamic, ?labelpos:Dynamic, ?labelcolor:Dynamic, ?fontproperties:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a key to a quiver plot.
		
		Call signature::
		
		  quiverkey(Q, X, Y, U, label, **kw)
		
		Arguments:
		
		  *Q*:
		    The Quiver instance returned by a call to quiver.
		
		  *X*, *Y*:
		    The location of the key; additional explanation follows.
		
		  *U*:
		    The length of the key
		
		  *label*:
		    A string with the length and units of the key
		
		Keyword arguments:
		
		  *angle* = 0
		    The angle of the key arrow. Measured in degrees anti-clockwise from the
		    x-axis.
		
		  *coordinates* = [ 'axes' | 'figure' | 'data' | 'inches' ]
		    Coordinate system and units for *X*, *Y*: 'axes' and 'figure' are
		    normalized coordinate systems with 0,0 in the lower left and 1,1
		    in the upper right; 'data' are the axes data coordinates (used for
		    the locations of the vectors in the quiver plot itself); 'inches'
		    is position in the figure in inches, with 0,0 at the lower left
		    corner.
		
		  *color*:
		    overrides face and edge colors from *Q*.
		
		  *labelpos* = [ 'N' | 'S' | 'E' | 'W' ]
		    Position the label above, below, to the right, to the left of the
		    arrow, respectively.
		
		  *labelsep*:
		    Distance in inches between the arrow and the label.  Default is
		    0.1
		
		  *labelcolor*:
		    defaults to default :class:`~matplotlib.text.Text` color.
		
		  *fontproperties*:
		    A dictionary with keyword arguments accepted by the
		    :class:`~matplotlib.font_manager.FontProperties` initializer:
		    *family*, *style*, *variant*, *size*, *weight*
		
		Any additional keyword arguments are used to override vector
		properties taken from *Q*.
		
		The positioning of the key depends on *X*, *Y*, *coordinates*, and
		*labelpos*.  If *labelpos* is 'N' or 'S', *X*, *Y* give the position
		of the middle of the key arrow.  If *labelpos* is 'E', *X*, *Y*
		positions the head, and if *labelpos* is 'W', *X*, *Y* positions the
		tail; in either of these two cases, *X*, *Y* is somewhere in the
		middle of the arrow+label key object.
	**/
	public function new(Q:Dynamic, X:Dynamic, Y:Dynamic, U:Dynamic, label:Dynamic, ?angle:Dynamic, ?coordinates:Dynamic, ?color:Dynamic, ?labelsep:Dynamic, ?labelpos:Dynamic, ?labelcolor:Dynamic, ?fontproperties:Dynamic, ?kw:python.KwArgs<Dynamic>):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _init():Dynamic;
	static public var _prop_order : Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _set_transform():Dynamic;
	public function _text_x(x:Dynamic):Dynamic;
	public function _text_y(y:Dynamic):Dynamic;
	/**
		Add a callback function that will be called whenever one of the
		`.Artist`'s properties changes.
		
		Parameters
		----------
		func : callable
		    The callback function. It must have the signature::
		
		        def func(artist: Artist) -> Any
		
		    where *artist* is the calling `.Artist`. Return values may exist
		    but are ignored.
		
		Returns
		-------
		oid : int
		    The observer id associated with the callback. This id can be
		    used for removing the callback with `.remove_callback` later.
		
		See Also
		--------
		remove_callback
	**/
	public function add_callback(func:Dynamic):Int;
	public var aname : Dynamic;
	/**
		The `~.axes.Axes` instance the artist resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Test whether the artist contains the mouse event.
		
		Parameters
		----------
		mouseevent : `matplotlib.backend_bases.MouseEvent`
		
		Returns
		-------
		contains : bool
		    Whether any values are within the radius.
		details : dict
		    An artist-specific dictionary of details of the event context,
		    such as which points are contained in the pick radius. See the
		    individual Artist subclasses for details.
		
		See Also
		--------
		set_contains, get_contains
	**/
	public function contains(mouseevent:Dynamic):Bool;
	/**
		Convert *x* using the unit type of the xaxis.
		
		If the artist is not in contained in an Axes or if the xaxis does not
		have units, *x* itself is returned.
	**/
	public function convert_xunits(x:Dynamic):Dynamic;
	/**
		Convert *y* using the unit type of the yaxis.
		
		If the artist is not in contained in an Axes or if the yaxis does not
		have units, *y* itself is returned.
	**/
	public function convert_yunits(y:Dynamic):Dynamic;
	/**
		Draw the Artist using the given renderer.
		
		This method will be overridden in the Artist subclasses. Typically,
		it is implemented to not have any effect if the Artist is not visible
		(`.Artist.get_visible` is *False*).
		
		Parameters
		----------
		renderer : `.RendererBase` subclass.
	**/
	public function draw(renderer:Dynamic):Dynamic;
	/**
		Find artist objects.
		
		Recursively find all `.Artist` instances contained in the artist.
		
		Parameters
		----------
		match
		    A filter criterion for the matches. This can be
		
		    - *None*: Return all objects contained in artist.
		    - A function with signature ``def match(artist: Artist) -> bool``.
		      The result will only contain artists for which the function
		      returns *True*.
		    - A class instance: e.g., `.Line2D`. The result will only contain
		      artists of this class or its subclasses (``isinstance`` check).
		
		include_self : bool
		    Include *self* in the list to be checked for a match.
		
		Returns
		-------
		artists : list of `.Artist`
	**/
	public function findobj(?match:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Return a string representation of *data*.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		The default implementation converts ints and floats and arrays of ints
		and floats into a comma-separated string enclosed in square brackets.
		
		See Also
		--------
		get_cursor_data
	**/
	public function format_cursor_data(data:Dynamic):Dynamic;
	/**
		Return filter function to be used for agg filter.
	**/
	public function get_agg_filter():Dynamic;
	/**
		Return the alpha value used for blending - not supported on all
		backends
	**/
	public function get_alpha():Dynamic;
	/**
		Return the animated state.
	**/
	public function get_animated():Dynamic;
	/**
		Return a list of the child `.Artist`\s of this `.Artist`.
	**/
	public function get_children():Dynamic;
	/**
		Return the clipbox.
	**/
	public function get_clip_box():Dynamic;
	/**
		Return whether the artist uses clipping.
	**/
	public function get_clip_on():Dynamic;
	/**
		Return the clip path.
	**/
	public function get_clip_path():Dynamic;
	/**
		Return the custom contains function of the artist if set, or *None*.
		
		See Also
		--------
		set_contains
	**/
	public function get_contains():Dynamic;
	/**
		Return the cursor data for a given event.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		Cursor data can be used by Artists to provide additional context
		information for a given event. The default implementation just returns
		*None*.
		
		Subclasses can override the method and return arbitrary data. However,
		when doing so, they must ensure that `.format_cursor_data` can convert
		the data to a string representation.
		
		The only current use case is displaying the z-value of an `.AxesImage`
		in the status bar of a plot window, while moving the mouse.
		
		Parameters
		----------
		event : `matplotlib.backend_bases.MouseEvent`
		
		See Also
		--------
		format_cursor_data
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	/**
		Return the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picking behavior of the artist.
		
		The possible values are described in `.set_picker`.
		
		See Also
		--------
		set_picker, pickable, pick
	**/
	public function get_picker():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	/**
		Returns the sketch parameters for the artist.
		
		Returns
		-------
		sketch_params : tuple or None
		
		    A 3-tuple with the following elements:
		
		    - *scale*: The amplitude of the wiggle perpendicular to the
		      source line.
		    - *length*: The length of the wiggle along the line.
		    - *randomness*: The scale factor by which the length is
		      shrunken or expanded.
		
		    Returns *None* if no sketch parameters were set.
	**/
	public function get_sketch_params():Dynamic;
	/**
		Returns the snap setting.
		
		See `.set_snap` for details.
	**/
	public function get_snap():Dynamic;
	/**
		Like `Artist.get_window_extent`, but includes any clipping.
		
		Parameters
		----------
		renderer : `.RendererBase` instance
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		Returns
		-------
		bbox : `.BBox`
		    The enclosing bounding box (in figure pixel co-ordinates).
	**/
	public function get_tightbbox(renderer:Dynamic):Dynamic;
	/**
		Return the `.Transform` instance used by this artist.
	**/
	public function get_transform():Dynamic;
	/**
		Return the clip path with the non-affine part of its
		transformation applied, and the remaining affine part of its
		transformation.
	**/
	public function get_transformed_clip_path_and_affine():Dynamic;
	/**
		Return the url.
	**/
	public function get_url():Dynamic;
	/**
		Return the visibility.
	**/
	public function get_visible():Dynamic;
	/**
		Get the axes bounding box in display space.
		
		The bounding box' width and height are nonnegative.
		
		Subclasses should override for inclusion in the bounding box
		"tight" calculation. Default is to return an empty bounding
		box at 0, 0.
		
		Be careful when using this function, the results will not update
		if the artist window extent of the artist changes.  The extent
		can change due to any changes in the transform stack, such as
		changing the axes limits, the figure size, or the canvas used
		(as is done when saving a figure).  This can lead to unexpected
		behavior where interactive figures will look fine on the screen,
		but will save incorrectly.
	**/
	public function get_window_extent(renderer:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	static public var halign : Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes.
	**/
	public function have_units():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	public var mouseover : Dynamic;
	/**
		Call all of the registered callbacks.
		
		This function is triggered internally when a property is changed.
		
		See Also
		--------
		add_callback
		remove_callback
	**/
	public function pchanged():Dynamic;
	/**
		Process a pick event.
		
		Each child artist will fire a pick event if *mouseevent* is over
		the artist and the artist has picker set.
		
		See Also
		--------
		set_picker, get_picker, pickable
	**/
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		Return whether the artist is pickable.
		
		See Also
		--------
		set_picker, get_picker, pick
	**/
	public function pickable():Dynamic;
	static public var pivot : Dynamic;
	/**
		Return a dictionary of all the properties of the artist.
	**/
	public function properties():Dynamic;
	static public var quiverkey_doc : Dynamic;
	/**
		Overload the remove method
	**/
	public function remove():Dynamic;
	/**
		Remove a callback based on its observer id.
		
		See Also
		--------
		add_callback
	**/
	public function remove_callback(oid:Dynamic):Dynamic;
	/**
		A property batch setter.  Pass *kwargs* to set properties.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the agg filter.
		
		Parameters
		----------
		filter_func : callable
		    A filter function, which takes a (m, n, 3) float array and a dpi
		    value, and returns a (m, n, 3) array.
		
		    .. ACCEPTS: a filter function, which takes a (m, n, 3) float array
		        and a dpi value, and returns a (m, n, 3) array
	**/
	public function set_agg_filter(filter_func:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : float
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		Parameters
		----------
		b : bool
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Set the artist's clip `.Bbox`.
		
		Parameters
		----------
		clipbox : `.Bbox`
	**/
	public function set_clip_box(clipbox:Dynamic):Dynamic;
	/**
		Set whether the artist uses clipping.
		
		When False artists will be visible out side of the axes which
		can lead to unexpected results.
		
		Parameters
		----------
		b : bool
	**/
	public function set_clip_on(b:Dynamic):Dynamic;
	/**
		Set the artist's clip path, which may be:
		
		- a :class:`~matplotlib.patches.Patch` (or subclass) instance; or
		- a :class:`~matplotlib.path.Path` instance, in which case a
		  :class:`~matplotlib.transforms.Transform` instance, which will be
		  applied to the path before using it for clipping, must be provided;
		  or
		- ``None``, to remove a previously set clipping path.
		
		For efficiency, if the path happens to be an axis-aligned rectangle,
		this method will set the clipping box to the corresponding rectangle
		and set the clipping path to ``None``.
		
		ACCEPTS: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
	**/
	public function set_clip_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Define a custom contains test for the artist.
		
		The provided callable replaces the default `.contains` method
		of the artist.
		
		Parameters
		----------
		picker : callable
		    A custom picker function to evaluate if an event is within the
		    artist. The function must have the signature::
		
		        def contains(artist: Artist, event: MouseEvent) -> bool, dict
		
		    that returns:
		
		    - a bool indicating if the event is within the artist
		    - a dict of additional information. The dict should at least
		      return the same information as the default ``contains()``
		      implementation of the respective artist, but may provide
		      additional information.
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		Set if artist is to be included in layout calculations,
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
		
		Parameters
		----------
		in_layout : bool
	**/
	public function set_in_layout(in_layout:Dynamic):Dynamic;
	/**
		Set a label that will be displayed in the legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
	/**
		Define the picking behavior of the artist.
		
		Parameters
		----------
		picker : None or bool or float or callable
		    This can be one of the following:
		
		    - *None*: Picking is disabled for this artist (default).
		
		    - A boolean: If *True* then picking will be enabled and the
		      artist will fire a pick event if the mouse event is over
		      the artist.
		
		    - A float: If picker is a number it is interpreted as an
		      epsilon tolerance in points and the artist will fire
		      off an event if it's data is within epsilon of the mouse
		      event.  For some artists like lines and patch collections,
		      the artist may provide additional data to the pick event
		      that is generated, e.g., the indices of the data within
		      epsilon of the pick event
		
		    - A function: If picker is callable, it is a user supplied
		      function which determines whether the artist is hit by the
		      mouse event::
		
		        hit, props = picker(artist, mouseevent)
		
		      to determine the hit test.  if the mouse event is over the
		      artist, return *hit=True* and props is a dictionary of
		      properties you want added to the PickEvent attributes.
	**/
	public function set_picker(picker:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior.
		
		Parameters
		----------
		rasterized : bool or None
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Sets the sketch parameters.
		
		Parameters
		----------
		
		scale : float, optional
		    The amplitude of the wiggle perpendicular to the source
		    line, in pixels.  If scale is `None`, or not provided, no
		    sketch filter will be provided.
		
		length : float, optional
		     The length of the wiggle along the line, in pixels
		     (default 128.0)
		
		randomness : float, optional
		    The scale factor by which the length is shrunken or
		    expanded (default 16.0)
		
		    .. ACCEPTS: (scale: float, length: float, randomness: float)
	**/
	public function set_sketch_params(?scale:Dynamic, ?length:Dynamic, ?randomness:Dynamic):Dynamic;
	/**
		Set the snapping behavior.
		
		Snapping aligns positions with the pixel grid, which results in
		clearer images. For example, if a black line of 1px width was
		defined at a position in between two pixels, the resulting image
		would contain the interpolated value of that line in the pixel grid,
		which would be a grey value on both adjacent pixel positions. In
		contrast, snapping will move the line to the nearest integer pixel
		value, so that the resulting image will really contain a 1px wide
		black line.
		
		Snapping is currently only supported by the Agg and MacOSX backends.
		
		Parameters
		----------
		snap : bool or None
		    Possible values:
		
		    - *True*: Snap vertices to the nearest pixel center.
		    - *False*: Do not modify vertex positions.
		    - *None*: (auto) If the path contains only rectilinear line
		      segments, round to the nearest pixel center.
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Set the artist transform.
		
		Parameters
		----------
		t : `.Transform`
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		Set the url for the artist.
		
		Parameters
		----------
		url : str
	**/
	public function set_url(url:Dynamic):Dynamic;
	/**
		Set the artist's visibility.
		
		Parameters
		----------
		b : bool
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		Parameters
		----------
		level : float
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		Whether the artist is 'stale' and needs to be re-drawn for the output
		to match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		``x`` and ``y`` sticky edge lists for autoscaling.
		
		When performing autoscaling, if a data limit coincides with a value in
		the corresponding sticky_edges list, then no margin will be added--the
		view limit "sticks" to the edge. A typical use case is histograms,
		where one usually expects no margin on the bottom edge (0) of the
		histogram.
		
		This attribute cannot be assigned to; however, the ``x`` and ``y``
		lists can be modified in place as needed.
		
		Examples
		--------
		
		>>> artist.sticky_edges.x[:] = (xmin, xmax)
		>>> artist.sticky_edges.y[:] = (ymin, ymax)
	**/
	public var sticky_edges : Dynamic;
	/**
		Update this artist's properties from the dictionary *props*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var valign : Dynamic;
	static public var zorder : Dynamic;
}