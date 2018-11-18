/* This file is generated, do not edit! */
package theano.tensor.nnet.opt;
@:pythonImport("theano.tensor.nnet.opt") extern class Opt_Module {
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
		Deprecated, old conv2d interface.
		This function will build the symbolic graph for convolving a stack of
		input images with a set of filters. The implementation is modelled after
		Convolutional Neural Networks (CNN). It is simply a wrapper to the ConvOp
		but provides a much cleaner interface.
		
		Parameters
		----------
		input : symbolic 4D tensor
		    Mini-batch of feature map stacks, of shape
		    (batch size, stack size, nb row, nb col)
		    see the optional parameter image_shape
		filters: symbolic 4D tensor
		    Set of filters used in CNN layer of shape
		    (nb filters, stack size, nb row, nb col)
		    see the optional parameter filter_shape
		border_mode : {'valid', 'full'}
		   'valid'only apply filter to complete patches of the image. Generates
		   output of shape: image_shape - filter_shape + 1.
		   'full' zero-pads image to multiple of filter shape to generate output
		   of shape: image_shape + filter_shape - 1.
		subsample: tuple of len 2
		    Factor by which to subsample the output. Also called strides elsewhere.
		image_shape: None, tuple/list of len 4 of int, None or Constant variable
		    The shape of the input parameter.
		    Optional, used for optimization like loop unrolling
		    You can put None for any element of the list to tell that this element
		    is not constant.
		filter_shape : None, tuple/list of len 4 of int, None or Constant variable
		    Optional, used for optimization like loop unrolling
		    You can put None for any element of the list
		    to tell that this element is not constant.
		kwargs
		    Kwargs are passed onto ConvOp. Can be used to set the following:
		    unroll_batch, unroll_kern, unroll_patch, openmp (see ConvOp doc).
		
		    openmp: By default have the same value as
		            config.openmp. For small image, filter,
		            batch size, nkern and stack size, it can be
		            faster to disable manually openmp. A fast and
		            incomplete test show that with image size
		            6x6, filter size 4x4, batch size==1,
		            n kern==1 and stack size==1, it is faster
		            to disable it in valid mode. But if we
		            grow the batch size to 10, it is faster
		            with openmp on a core 2 duo.
		
		Returns
		-------
		symbolic 4D tensor
		    Set of feature maps generated by convolutional layer. Tensor is
		    of shape (batch size, nb filters, output row, output col).
	**/
	static public function conv2d(input:Dynamic, filters:Dynamic, ?image_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?kargs:python.KwArgs<Dynamic>):Dynamic;
	static public var conv_groupopt : Dynamic;
	/**
		Copies the stack trace from one or more tensor variables to
		one or more tensor variables and returns the destination variables.
		
		Parameters
		----------
		from_var
		    Tensor variable or list of tensor variables to copy stack traces from.
		to_var
		    Tensor variable or list of tensor variables to copy stack traces to.
		
		Notes
		-----
		The stacktrace is assumed to be of the form of a list of lists
		of tuples. Each tuple contains the filename, line number, function name
		and so on. Each list of tuples contains the truples belonging to a
		particular variable.
	**/
	static public function copy_stack_trace(from_var:Dynamic, to_var:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		This function compute the output shape of convolution operation.
		
		Parameters
		----------
		image_shape: tuple of int (symbolic or numeric) corresponding to the input
		    image shape. Its four (or five) element must correspond respectively
		    to: batch size, number of input channels, height and width (and
		    possibly depth) of the image. None where undefined.
		kernel_shape: tuple of int (symbolic or numeric) corresponding to the
		    kernel shape. For a normal convolution, its four (for 2D convolution)
		    or five (for 3D convolution) elements must correspond respectively to :
		    number of output channels, number of input channels, height and width
		    (and possibly depth) of the kernel.
		    For an unshared 2D convolution, its six channels must correspond to :
		    number of output channels, height and width of the output, number of
		    input channels, height and width of the kernel.
		    None where undefined.
		border_mode: string, int (symbolic or numeric) or tuple of int (symbolic
		    or numeric) or pairs of ints. If it is a string, it must be 'valid',
		    'half' or 'full'. If it is a tuple, its two (or three) elements respectively
		    correspond to the padding on height and width (and possibly depth)
		    axis. For asymmetric padding, provide a pair of ints for each dimension.
		subsample: tuple of int (symbolic or numeric). Its two or three elements
		    espectively correspond to the subsampling on height and width (and
		    possibly depth) axis.
		filter_dilation: tuple of int (symbolic or numeric). Its two or three
		    elements correspond respectively to the dilation on height and width axis.
		Note - The shape of the convolution output does not depend on the 'unshared'
		    or the 'num_groups' parameters.
		
		Returns
		-------
		output_shape: tuple of int corresponding to the output image shape. Its
		    four element must correspond respectively to: batch size, number of
		    output channels, height and width of the image. None where undefined.
	**/
	static public function get_conv_output_shape(image_shape:Dynamic, kernel_shape:Dynamic, border_mode:Dynamic, subsample:Dynamic, ?filter_dilation:Dynamic):Dynamic;
	static public var local_abstractconv3d_gemm : Dynamic;
	static public var local_abstractconv3d_gradinputs_gemm : Dynamic;
	static public var local_abstractconv3d_gradweight_gemm : Dynamic;
	static public var local_abstractconv_check : Dynamic;
	static public var local_abstractconv_gemm : Dynamic;
	static public var local_abstractconv_gradinputs_gemm : Dynamic;
	static public var local_abstractconv_gradweight_gemm : Dynamic;
	static public var local_conv2d_cpu : Dynamic;
	static public var local_conv2d_gradinputs_cpu : Dynamic;
	static public var local_conv2d_gradweight_cpu : Dynamic;
	static public var local_inplace_sparse_block_gemv : Dynamic;
	static public var local_inplace_sparse_block_outer : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var optdb : Dynamic;
	static public var print_function : Dynamic;
	static public function register_specialize_device(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sparse_block_gemv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sparse_block_outer_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}