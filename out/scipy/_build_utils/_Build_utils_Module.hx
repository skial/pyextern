/* This file is generated, do not edit! */
package scipy._build_utils;
@:pythonImport("scipy._build_utils") extern class _Build_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns file names of source files containing Fortran ABI wrapper
		routines.
	**/
	static public function get_g77_abi_wrappers(info:Dynamic):Dynamic;
	/**
		Returns source file needed to correct SGEMV 
	**/
	static public function get_sgemv_fix(info:Dynamic):Dynamic;
	/**
		Returns True if g77 ABI wrapper must be used.
	**/
	static public function needs_g77_abi_wrapper(info:Dynamic):Dynamic;
	/**
		Returns True if SGEMV must be fixed.
	**/
	static public function needs_sgemv_fix(info:Dynamic):Dynamic;
	static public var numpy_nodepr_api : Dynamic;
	/**
		Split each file in `source_dir` into separate files per subroutine.
		
		Parameters
		----------
		source_dir : str
		    Full path to directory in which sources to be split are located.
		subroutines : list of str, optional
		    Subroutines to split. (Default: all)
		
		Returns
		-------
		fnames : list of str
		    List of file names (not including any path) that were created
		    in `source_dir`.
		
		Notes
		-----
		This function is useful for code that can't be compiled with g77 because of
		type casting errors which do work with gfortran.
		
		Created files are named: ``original_name + '_subr_i' + '.f'``, with ``i``
		starting at zero and ending at ``num_subroutines_in_file - 1``.
	**/
	static public function split_fortran_files(source_dir:Dynamic, ?subroutines:Dynamic):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : None, str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of being shown once during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(Warning,)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		    The default is to use the class initialization value.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
}