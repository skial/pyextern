/* This file is generated, do not edit! */
package spacy.displacy.render;
@:pythonImport("spacy.displacy.render", "DependencyRenderer") extern class DependencyRenderer {
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
		Initialise dependency renderer.
		
		options (dict): Visualiser-specific options (compact, word_spacing,
		    arrow_spacing, arrow_width, arrow_stroke, distance, offset_x,
		    color, bg, font)
	**/
	@:native("__init__")
	public function ___init__(?options:Dynamic):Dynamic;
	/**
		Initialise dependency renderer.
		
		options (dict): Visualiser-specific options (compact, word_spacing,
		    arrow_spacing, arrow_width, arrow_stroke, distance, offset_x,
		    color, bg, font)
	**/
	public function new(?options:Dynamic):Void;
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
	/**
		Render individual arc.
		
		x_start (int): X-coordinate of arrow start point.
		y (int): Y-coordinate of arrow start and end point.
		y_curve (int): Y-corrdinate of Cubic Bézier y_curve point.
		x_end (int): X-coordinate of arrow end point.
		RETURNS (str): Definition of the arc path ('d' attribute).
	**/
	public function get_arc(x_start:Dynamic, y:Dynamic, y_curve:Dynamic, x_end:Dynamic):Dynamic;
	/**
		Render individual arrow head.
		
		direction (str): Arrow direction, 'left' or 'right'.
		x (int): X-coordinate of arrow start point.
		y (int): Y-coordinate of arrow start and end point.
		end (int): X-coordinate of arrow end point.
		RETURNS (str): Definition of the arrow head path ('d' attribute).
	**/
	public function get_arrowhead(direction:Dynamic, x:Dynamic, y:Dynamic, end:Dynamic):Dynamic;
	/**
		Calculate available arc height "levels".
		Used to calculate arrow heights dynamically and without wasting space.
		
		args (list): Individual arcs and their start, end, direction and label.
		RETURNS (list): Arc levels sorted from lowest to highest.
	**/
	public function get_levels(arcs:Dynamic):Dynamic;
	/**
		Render complete markup.
		
		parsed (list): Dependency parses to render.
		page (bool): Render parses wrapped as full HTML page.
		minify (bool): Minify HTML markup.
		RETURNS (str): Rendered SVG or HTML markup.
	**/
	public function render(parsed:Dynamic, ?page:Dynamic, ?minify:Dynamic):Dynamic;
	/**
		Render individual arrow.
		
		label (str): Dependency label.
		start (int): Index of start word.
		end (int): Index of end word.
		direction (str): Arrow direction, 'left' or 'right'.
		i (int): Unique ID, typically arrow index.
		RETURNS (str): Rendered SVG markup.
	**/
	public function render_arrow(label:Dynamic, start:Dynamic, end:Dynamic, direction:Dynamic, i:Dynamic):Dynamic;
	/**
		Render SVG.
		
		render_id (Union[int, str]): Unique ID, typically index of document.
		words (list): Individual words and their tags.
		arcs (list): Individual arcs and their start, end, direction and label.
		RETURNS (str): Rendered SVG markup.
	**/
	public function render_svg(render_id:Dynamic, words:Dynamic, arcs:Dynamic):Dynamic;
	/**
		Render individual word.
		
		text (str): Word text.
		tag (str): Part-of-speech tag.
		i (int): Unique ID, typically word index.
		RETURNS (str): Rendered SVG markup.
	**/
	public function render_word(text:Dynamic, tag:Dynamic, lemma:Dynamic, i:Dynamic):Dynamic;
	static public var style : Dynamic;
}