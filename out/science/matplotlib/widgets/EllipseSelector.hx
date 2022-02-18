/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "EllipseSelector") extern class EllipseSelector {
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
	public function ___init__(ax:Dynamic, onselect:Dynamic, ?drawtype:Dynamic, ?minspanx:Dynamic, ?minspany:Dynamic, ?useblit:Dynamic, ?lineprops:Dynamic, ?props:Dynamic, ?spancoords:Dynamic, ?button:Dynamic, ?grab_range:Dynamic, ?handle_props:Dynamic, ?interactive:Dynamic, ?state_modifier_keys:Dynamic, ?drag_from_anywhere:Dynamic, ?ignore_event_outside:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(ax:Dynamic, onselect:Dynamic, ?drawtype:Dynamic, ?minspanx:Dynamic, ?minspany:Dynamic, ?useblit:Dynamic, ?lineprops:Dynamic, ?props:Dynamic, ?spancoords:Dynamic, ?button:Dynamic, ?grab_range:Dynamic, ?handle_props:Dynamic, ?interactive:Dynamic, ?state_modifier_keys:Dynamic, ?drag_from_anywhere:Dynamic, ?ignore_event_outside:Dynamic):Void;
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
	static public var _active : Dynamic;
	/**
		Preprocess an event:
		
		- Replace *event* by the previous event if *event* has no ``xdata``.
		- Clip ``xdata`` and ``ydata`` to the axes limits.
		- Update the previous event.
	**/
	public function _clean_event(event:Dynamic):Dynamic;
	/**
		Return True if event is within the patch.
	**/
	public function _contains(event:Dynamic):Dynamic;
	public function _draw_shape(extents:Dynamic):Dynamic;
	/**
		Get the xdata and ydata for event, with limits.
	**/
	public function _get_data(event:Dynamic):Dynamic;
	public var _handles_artists : Dynamic;
	/**
		Key press event handler - for widget-specific key press actions.
	**/
	public function _on_key_press(event:Dynamic):Dynamic;
	/**
		Key release event handler.
	**/
	public function _on_key_release(event:Dynamic):Dynamic;
	/**
		Mouse scroll event handler.
	**/
	public function _on_scroll(event:Dynamic):Dynamic;
	/**
		Motion notify event handler.
	**/
	public function _onmove(event:Dynamic):Dynamic;
	/**
		Button press event handler.
	**/
	public function _press(event:Dynamic):Dynamic;
	public var _rect_bbox : Dynamic;
	/**
		Button release event handler.
	**/
	public function _release(event:Dynamic):Dynamic;
	/**
		Set active handle based on the location of the mouse event.
	**/
	public function _set_active_handle(event:Dynamic):Dynamic;
	/**
		A scale-free ellipse.
	**/
	static public function _shape_klass(xy:Dynamic, width:Dynamic, height:Dynamic, ?angle:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Is the widget active?
	**/
	public var active : Dynamic;
	public var active_handle : Dynamic;
	/**
		Tuple of the artists of the selector.
	**/
	public var artists : Dynamic;
	/**
		Center of rectangle.
	**/
	public var center : Dynamic;
	public var cids : Dynamic;
	/**
		Clear the selection and set the selector ready to make a new one.
	**/
	public function clear():Dynamic;
	/**
		Connect the major canvas events to methods.
	**/
	public function connect_default_events():Dynamic;
	/**
		Connect a callback function with an event.
		
		This should be used in lieu of ``figure.canvas.mpl_connect`` since this
		function stores callback ids for later clean up.
	**/
	public function connect_event(event:Dynamic, callback:Dynamic):Dynamic;
	/**
		Corners of rectangle from lower left, moving clockwise.
	**/
	public var corners : Dynamic;
	/**
		Disconnect all events created by this widget.
	**/
	public function disconnect_events():Dynamic;
	public var draw_shape : Dynamic;
	static public var drawon : Dynamic;
	public var drawtype : Dynamic;
	/**
		Midpoint of rectangle edges from left, moving anti-clockwise.
	**/
	public var edge_centers : Dynamic;
	public var eventpress : Dynamic;
	public var eventrelease : Dynamic;
	static public var eventson : Dynamic;
	/**
		Return (xmin, xmax, ymin, ymax).
	**/
	public var extents : Dynamic;
	/**
		Return an array of shape (2, 5) containing the
		x (``RectangleSelector.geometry[1, :]``) and
		y (``RectangleSelector.geometry[0, :]``) coordinates
		of the four corners of the rectangle starting and ending
		in the top left corner.
	**/
	public var geometry : Dynamic;
	/**
		Get whether the widget is active.
	**/
	public function get_active():Dynamic;
	/**
		Return whether *event* should be ignored.
		
		This method should be called at the beginning of any event callback.
	**/
	public function ignore(event:Dynamic):Dynamic;
	public var interactive : Dynamic;
	public var maxdist : Dynamic;
	/**
		Key press event handler and validator for all selection widgets.
	**/
	public function on_key_press(event:Dynamic):Dynamic;
	/**
		Key release event handler and validator.
	**/
	public function on_key_release(event:Dynamic):Dynamic;
	/**
		Mouse scroll event handler and validator.
	**/
	public function on_scroll(event:Dynamic):Dynamic;
	/**
		Cursor move event handler and validator.
	**/
	public function onmove(event:Dynamic):Dynamic;
	/**
		Button press handler and validator.
	**/
	public function press(event:Dynamic):Dynamic;
	/**
		Button release event handler and validator.
	**/
	public function release(event:Dynamic):Dynamic;
	/**
		Set whether the widget is active.
	**/
	public function set_active(active:Dynamic):Dynamic;
	/**
		Set the properties of the handles selector artist. See the
		`handle_props` argument in the selector docstring to know which
		properties are supported.
	**/
	public function set_handle_props(?handle_props:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the properties of the selector artist. See the `props` argument
		in the selector docstring to know which properties are supported.
	**/
	public function set_props(?props:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the visibility of our artists.
	**/
	public function set_visible(visible:Dynamic):Dynamic;
	public var state : Dynamic;
	public var to_draw : Dynamic;
	/**
		Draw using blit() or draw_idle(), depending on ``self.useblit``.
	**/
	public function update():Dynamic;
	/**
		Force an update of the background.
	**/
	public function update_background(event:Dynamic):Dynamic;
}