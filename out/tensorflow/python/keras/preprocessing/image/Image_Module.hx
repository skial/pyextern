/* This file is generated, do not edit! */
package tensorflow.python.keras.preprocessing.image;
@:pythonImport("tensorflow.python.keras.preprocessing.image") extern class Image_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Applies an affine transformation specified by the parameters given.
		
		# Arguments
		    x: 2D numpy array, single image.
		    theta: Rotation angle in degrees.
		    tx: Width shift.
		    ty: Heigh shift.
		    shear: Shear angle in degrees.
		    zx: Zoom in x direction.
		    zy: Zoom in y direction
		    row_axis: Index of axis for rows in the input image.
		    col_axis: Index of axis for columns in the input image.
		    channel_axis: Index of axis for channels in the input image.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    order int: order of interpolation
		
		# Returns
		    The transformed version of the input.
	**/
	static public function apply_affine_transform(x:Dynamic, ?theta:Dynamic, ?tx:Dynamic, ?ty:Dynamic, ?shear:Dynamic, ?zx:Dynamic, ?zy:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Performs a brightness shift.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    brightness: Float. The new brightness value.
		    channel_axis: Index of axis for channels in the input tensor.
		
		# Returns
		    Numpy image tensor.
		
		# Raises
		    ValueError if `brightness_range` isn't a tuple.
	**/
	static public function apply_brightness_shift(x:Dynamic, brightness:Dynamic):Dynamic;
	/**
		Performs a channel shift.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    intensity: Transformation intensity.
		    channel_axis: Index of axis for channels in the input tensor.
		
		# Returns
		    Numpy image tensor.
	**/
	static public function apply_channel_shift(x:Dynamic, intensity:Dynamic, ?channel_axis:Dynamic):Dynamic;
	/**
		Converts a 3D Numpy array to a PIL Image instance.
		
		Arguments:
		    x: Input Numpy array.
		    data_format: Image data format.
		        either "channels_first" or "channels_last".
		    scale: Whether to rescale image values
		        to be within `[0, 255]`.
		    dtype: Dtype to use.
		
		Returns:
		    A PIL Image instance.
		
		Raises:
		    ImportError: if PIL is not available.
		    ValueError: if invalid `x` or `data_format` is passed.
	**/
	static public function array_to_img(x:Dynamic, ?data_format:Dynamic, ?scale:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Converts a PIL Image instance to a Numpy array.
		
		Arguments:
		    img: PIL Image instance.
		    data_format: Image data format,
		        either "channels_first" or "channels_last".
		    dtype: Dtype to use for the returned array.
		
		Returns:
		    A 3D Numpy array.
		
		Raises:
		    ValueError: if invalid `img` or `data_format` is passed.
	**/
	static public function img_to_array(img:Dynamic, ?data_format:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Loads an image into PIL format.
		
		# Arguments
		    path: Path to image file.
		    color_mode: One of "grayscale", "rgb", "rgba". Default: "rgb".
		        The desired image format.
		    target_size: Either `None` (default to original size)
		        or tuple of ints `(img_height, img_width)`.
		    interpolation: Interpolation method used to resample the image if the
		        target size is different from that of the loaded image.
		        Supported methods are "nearest", "bilinear", and "bicubic".
		        If PIL version 1.1.3 or newer is installed, "lanczos" is also
		        supported. If PIL version 3.4.0 or newer is installed, "box" and
		        "hamming" are also supported. By default, "nearest" is used.
		
		# Returns
		    A PIL Image instance.
		
		# Raises
		    ImportError: if PIL is not available.
		    ValueError: if interpolation method is not supported.
	**/
	static public function load_img(path:Dynamic, ?grayscale:Dynamic, ?color_mode:Dynamic, ?target_size:Dynamic, ?interpolation:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Performs a random brightness shift.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    brightness_range: Tuple of floats; brightness range.
		    channel_axis: Index of axis for channels in the input tensor.
		
		# Returns
		    Numpy image tensor.
		
		# Raises
		    ValueError if `brightness_range` isn't a tuple.
	**/
	static public function random_brightness(x:Dynamic, brightness_range:Dynamic):Dynamic;
	/**
		Performs a random channel shift.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    intensity_range: Transformation intensity.
		    channel_axis: Index of axis for channels in the input tensor.
		
		# Returns
		    Numpy image tensor.
	**/
	static public function random_channel_shift(x:Dynamic, intensity_range:Dynamic, ?channel_axis:Dynamic):Dynamic;
	/**
		Performs a random rotation of a Numpy image tensor.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    rg: Rotation range, in degrees.
		    row_axis: Index of axis for rows in the input tensor.
		    col_axis: Index of axis for columns in the input tensor.
		    channel_axis: Index of axis for channels in the input tensor.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    interpolation_order int: order of spline interpolation.
		        see `ndimage.interpolation.affine_transform`
		# Returns
		    Rotated Numpy image tensor.
	**/
	static public function random_rotation(x:Dynamic, rg:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?interpolation_order:Dynamic):Dynamic;
	/**
		Performs a random spatial shear of a Numpy image tensor.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    intensity: Transformation intensity in degrees.
		    row_axis: Index of axis for rows in the input tensor.
		    col_axis: Index of axis for columns in the input tensor.
		    channel_axis: Index of axis for channels in the input tensor.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    interpolation_order int: order of spline interpolation.
		        see `ndimage.interpolation.affine_transform`
		# Returns
		    Sheared Numpy image tensor.
	**/
	static public function random_shear(x:Dynamic, intensity:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?interpolation_order:Dynamic):Dynamic;
	/**
		Performs a random spatial shift of a Numpy image tensor.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    wrg: Width shift range, as a float fraction of the width.
		    hrg: Height shift range, as a float fraction of the height.
		    row_axis: Index of axis for rows in the input tensor.
		    col_axis: Index of axis for columns in the input tensor.
		    channel_axis: Index of axis for channels in the input tensor.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    interpolation_order int: order of spline interpolation.
		        see `ndimage.interpolation.affine_transform`
		# Returns
		    Shifted Numpy image tensor.
	**/
	static public function random_shift(x:Dynamic, wrg:Dynamic, hrg:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?interpolation_order:Dynamic):Dynamic;
	/**
		Performs a random spatial zoom of a Numpy image tensor.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    zoom_range: Tuple of floats; zoom range for width and height.
		    row_axis: Index of axis for rows in the input tensor.
		    col_axis: Index of axis for columns in the input tensor.
		    channel_axis: Index of axis for channels in the input tensor.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    interpolation_order int: order of spline interpolation.
		        see `ndimage.interpolation.affine_transform`
		
		# Returns
		    Zoomed Numpy image tensor.
		
		# Raises
		    ValueError: if `zoom_range` isn't a tuple.
	**/
	static public function random_zoom(x:Dynamic, zoom_range:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?interpolation_order:Dynamic):Dynamic;
	/**
		Saves an image stored as a Numpy array to a path or file object.
		
		Arguments:
		    path: Path or file object.
		    x: Numpy array.
		    data_format: Image data format,
		        either "channels_first" or "channels_last".
		    file_format: Optional file format override. If omitted, the
		        format to use is determined from the filename extension.
		        If a file object was used instead of a filename, this
		        parameter should always be used.
		    scale: Whether to rescale image values to be within `[0, 255]`.
		    **kwargs: Additional keyword arguments passed to `PIL.Image.save()`.
	**/
	static public function save_img(path:Dynamic, x:Dynamic, ?data_format:Dynamic, ?file_format:Dynamic, ?scale:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}