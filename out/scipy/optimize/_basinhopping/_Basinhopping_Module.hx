/* This file is generated, do not edit! */
package scipy.optimize._basinhopping;
@:pythonImport("scipy.optimize._basinhopping") extern class _Basinhopping_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _test_func2d(x:Dynamic):Dynamic;
	static public function _test_func2d_nograd(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Find the global minimum of a function using the basin-hopping algorithm
		
		Basin-hopping is a two-phase method that combines a global stepping
		algorithm with local minimization at each step.  Designed to mimic
		the natural process of energy minimization of clusters of atoms, it works
		well for similar problems with "funnel-like, but rugged" energy landscapes
		[5]_.
		
		As the step-taking, step acceptance, and minimization methods are all
		customizable, this function can also be used to implement other two-phase
		methods.
		
		Parameters
		----------
		func : callable ``f(x, *args)``
		    Function to be optimized.  ``args`` can be passed as an optional item
		    in the dict ``minimizer_kwargs``
		x0 : array_like
		    Initial guess.
		niter : integer, optional
		    The number of basin-hopping iterations
		T : float, optional
		    The "temperature" parameter for the accept or reject criterion.  Higher
		    "temperatures" mean that larger jumps in function value will be
		    accepted.  For best results ``T`` should be comparable to the
		    separation (in function value) between local minima.
		stepsize : float, optional
		    Maximum step size for use in the random displacement.
		minimizer_kwargs : dict, optional
		    Extra keyword arguments to be passed to the local minimizer
		    ``scipy.optimize.minimize()`` Some important options could be:
		
		        method : str
		            The minimization method (e.g. ``"L-BFGS-B"``)
		        args : tuple
		            Extra arguments passed to the objective function (``func``) and
		            its derivatives (Jacobian, Hessian).
		
		take_step : callable ``take_step(x)``, optional
		    Replace the default step-taking routine with this routine.  The default
		    step-taking routine is a random displacement of the coordinates, but
		    other step-taking algorithms may be better for some systems.
		    ``take_step`` can optionally have the attribute ``take_step.stepsize``.
		    If this attribute exists, then ``basinhopping`` will adjust
		    ``take_step.stepsize`` in order to try to optimize the global minimum
		    search.
		accept_test : callable, ``accept_test(f_new=f_new, x_new=x_new, f_old=fold, x_old=x_old)``, optional
		    Define a test which will be used to judge whether or not to accept the
		    step.  This will be used in addition to the Metropolis test based on
		    "temperature" ``T``.  The acceptable return values are True,
		    False, or ``"force accept"``. If any of the tests return False
		    then the step is rejected. If the latter, then this will override any
		    other tests in order to accept the step. This can be used, for example,
		    to forcefully escape from a local minimum that ``basinhopping`` is
		    trapped in.
		callback : callable, ``callback(x, f, accept)``, optional
		    A callback function which will be called for all minima found.  ``x``
		    and ``f`` are the coordinates and function value of the trial minimum,
		    and ``accept`` is whether or not that minimum was accepted.  This can
		    be used, for example, to save the lowest N minima found.  Also,
		    ``callback`` can be used to specify a user defined stop criterion by
		    optionally returning True to stop the ``basinhopping`` routine.
		interval : integer, optional
		    interval for how often to update the ``stepsize``
		disp : bool, optional
		    Set to True to print status messages
		niter_success : integer, optional
		    Stop the run if the global minimum candidate remains the same for this
		    number of iterations.
		seed : int or `np.random.RandomState`, optional
		    If `seed` is not specified the `np.RandomState` singleton is used.
		    If `seed` is an int, a new `np.random.RandomState` instance is used,
		    seeded with seed.
		    If `seed` is already a `np.random.RandomState instance`, then that
		    `np.random.RandomState` instance is used.
		    Specify `seed` for repeatable minimizations. The random numbers
		    generated with this seed only affect the default Metropolis
		    `accept_test` and the default `take_step`. If you supply your own
		    `take_step` and `accept_test`, and these functions use random
		    number generation, then those functions are responsible for the state
		    of their random number generator.
		
		Returns
		-------
		res : OptimizeResult
		    The optimization result represented as a ``OptimizeResult`` object.
		    Important attributes are: ``x`` the solution array, ``fun`` the value
		    of the function at the solution, and ``message`` which describes the
		    cause of the termination. The ``OptimizeResult`` object returned by the
		    selected minimizer at the lowest minimum is also contained within this
		    object and can be accessed through the ``lowest_optimization_result``
		    attribute.  See `OptimizeResult` for a description of other attributes.
		
		See Also
		--------
		minimize :
		    The local minimization function called once for each basinhopping step.
		    ``minimizer_kwargs`` is passed to this routine.
		
		Notes
		-----
		Basin-hopping is a stochastic algorithm which attempts to find the global
		minimum of a smooth scalar function of one or more variables [1]_ [2]_ [3]_
		[4]_.  The algorithm in its current form was described by David Wales and
		Jonathan Doye [2]_ http://www-wales.ch.cam.ac.uk/.
		
		The algorithm is iterative with each cycle composed of the following
		features
		
		1) random perturbation of the coordinates
		
		2) local minimization
		
		3) accept or reject the new coordinates based on the minimized function
		   value
		
		The acceptance test used here is the Metropolis criterion of standard Monte
		Carlo algorithms, although there are many other possibilities [3]_.
		
		This global minimization method has been shown to be extremely efficient
		for a wide variety of problems in physics and chemistry.  It is
		particularly useful when the function has many minima separated by large
		barriers. See the Cambridge Cluster Database
		http://www-wales.ch.cam.ac.uk/CCD.html for databases of molecular systems
		that have been optimized primarily using basin-hopping.  This database
		includes minimization problems exceeding 300 degrees of freedom.
		
		See the free software program GMIN (http://www-wales.ch.cam.ac.uk/GMIN) for
		a Fortran implementation of basin-hopping.  This implementation has many
		different variations of the procedure described above, including more
		advanced step taking algorithms and alternate acceptance criterion.
		
		For stochastic global optimization there is no way to determine if the true
		global minimum has actually been found. Instead, as a consistency check,
		the algorithm can be run from a number of different random starting points
		to ensure the lowest minimum found in each example has converged to the
		global minimum.  For this reason ``basinhopping`` will by default simply
		run for the number of iterations ``niter`` and return the lowest minimum
		found.  It is left to the user to ensure that this is in fact the global
		minimum.
		
		Choosing ``stepsize``:  This is a crucial parameter in ``basinhopping`` and
		depends on the problem being solved.  The step is chosen uniformly in the
		region from x0-stepsize to x0+stepsize, in each dimension.  Ideally it
		should be comparable to the typical separation (in argument values) between
		local minima of the function being optimized.  ``basinhopping`` will, by
		default, adjust ``stepsize`` to find an optimal value, but this may take
		many iterations.  You will get quicker results if you set a sensible
		initial value for ``stepsize``.
		
		Choosing ``T``: The parameter ``T`` is the "temperature" used in the
		Metropolis criterion.  Basinhopping steps are always accepted if
		``func(xnew) < func(xold)``.  Otherwise, they are accepted with
		probability::
		
		    exp( -(func(xnew) - func(xold)) / T )
		
		So, for best results, ``T`` should to be comparable to the typical
		difference (in function values) between local minima.  (The height of
		"walls" between local minima is irrelevant.)
		
		If ``T`` is 0, the algorithm becomes Monotonic Basin-Hopping, in which all
		steps that increase energy are rejected.
		
		.. versionadded:: 0.12.0
		
		References
		----------
		.. [1] Wales, David J. 2003, Energy Landscapes, Cambridge University Press,
		    Cambridge, UK.
		.. [2] Wales, D J, and Doye J P K, Global Optimization by Basin-Hopping and
		    the Lowest Energy Structures of Lennard-Jones Clusters Containing up to
		    110 Atoms.  Journal of Physical Chemistry A, 1997, 101, 5111.
		.. [3] Li, Z. and Scheraga, H. A., Monte Carlo-minimization approach to the
		    multiple-minima problem in protein folding, Proc. Natl. Acad. Sci. USA,
		    1987, 84, 6611.
		.. [4] Wales, D. J. and Scheraga, H. A., Global optimization of clusters,
		    crystals, and biomolecules, Science, 1999, 285, 1368.
		.. [5] Olson, B., Hashmi, I., Molloy, K., and Shehu1, A., Basin Hopping as
		    a General and Versatile Optimization Framework for the Characterization
		    of Biological Macromolecules, Advances in Artificial Intelligence,
		    Volume 2012 (2012), Article ID 674832, :doi:`10.1155/2012/674832`
		
		Examples
		--------
		The following example is a one-dimensional minimization problem,  with many
		local minima superimposed on a parabola.
		
		>>> from scipy.optimize import basinhopping
		>>> func = lambda x: np.cos(14.5 * x - 0.3) + (x + 0.2) * x
		>>> x0=[1.]
		
		Basinhopping, internally, uses a local minimization algorithm.  We will use
		the parameter ``minimizer_kwargs`` to tell basinhopping which algorithm to
		use and how to set up that minimizer.  This parameter will be passed to
		``scipy.optimize.minimize()``.
		
		>>> minimizer_kwargs = {"method": "BFGS"}
		>>> ret = basinhopping(func, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=200)
		>>> print("global minimum: x = %.4f, f(x0) = %.4f" % (ret.x, ret.fun))
		global minimum: x = -0.1951, f(x0) = -1.0009
		
		Next consider a two-dimensional minimization problem. Also, this time we
		will use gradient information to significantly speed up the search.
		
		>>> def func2d(x):
		...     f = np.cos(14.5 * x[0] - 0.3) + (x[1] + 0.2) * x[1] + (x[0] +
		...                                                            0.2) * x[0]
		...     df = np.zeros(2)
		...     df[0] = -14.5 * np.sin(14.5 * x[0] - 0.3) + 2. * x[0] + 0.2
		...     df[1] = 2. * x[1] + 0.2
		...     return f, df
		
		We'll also use a different local minimization algorithm.  Also we must tell
		the minimizer that our function returns both energy and gradient (jacobian)
		
		>>> minimizer_kwargs = {"method":"L-BFGS-B", "jac":True}
		>>> x0 = [1.0, 1.0]
		>>> ret = basinhopping(func2d, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=200)
		>>> print("global minimum: x = [%.4f, %.4f], f(x0) = %.4f" % (ret.x[0],
		...                                                           ret.x[1],
		...                                                           ret.fun))
		global minimum: x = [-0.1951, -0.1000], f(x0) = -1.0109
		
		
		Here is an example using a custom step-taking routine.  Imagine you want
		the first coordinate to take larger steps than the rest of the coordinates.
		This can be implemented like so:
		
		>>> class MyTakeStep(object):
		...    def __init__(self, stepsize=0.5):
		...        self.stepsize = stepsize
		...    def __call__(self, x):
		...        s = self.stepsize
		...        x[0] += np.random.uniform(-2.*s, 2.*s)
		...        x[1:] += np.random.uniform(-s, s, x[1:].shape)
		...        return x
		
		Since ``MyTakeStep.stepsize`` exists basinhopping will adjust the magnitude
		of ``stepsize`` to optimize the search.  We'll use the same 2-D function as
		before
		
		>>> mytakestep = MyTakeStep()
		>>> ret = basinhopping(func2d, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=200, take_step=mytakestep)
		>>> print("global minimum: x = [%.4f, %.4f], f(x0) = %.4f" % (ret.x[0],
		...                                                           ret.x[1],
		...                                                           ret.fun))
		global minimum: x = [-0.1951, -0.1000], f(x0) = -1.0109
		
		
		Now let's do an example using a custom callback function which prints the
		value of every minimum found
		
		>>> def print_fun(x, f, accepted):
		...         print("at minimum %.4f accepted %d" % (f, int(accepted)))
		
		We'll run it for only 10 basinhopping steps this time.
		
		>>> np.random.seed(1)
		>>> ret = basinhopping(func2d, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=10, callback=print_fun)
		at minimum 0.4159 accepted 1
		at minimum -0.9073 accepted 1
		at minimum -0.1021 accepted 1
		at minimum -0.1021 accepted 1
		at minimum 0.9102 accepted 1
		at minimum 0.9102 accepted 1
		at minimum 2.2945 accepted 0
		at minimum -0.1021 accepted 1
		at minimum -1.0109 accepted 1
		at minimum -1.0109 accepted 1
		
		
		The minimum at -1.0109 is actually the global minimum, found already on the
		8th iteration.
		
		Now let's implement bounds on the problem using a custom ``accept_test``:
		
		>>> class MyBounds(object):
		...     def __init__(self, xmax=[1.1,1.1], xmin=[-1.1,-1.1] ):
		...         self.xmax = np.array(xmax)
		...         self.xmin = np.array(xmin)
		...     def __call__(self, **kwargs):
		...         x = kwargs["x_new"]
		...         tmax = bool(np.all(x <= self.xmax))
		...         tmin = bool(np.all(x >= self.xmin))
		...         return tmax and tmin
		
		>>> mybounds = MyBounds()
		>>> ret = basinhopping(func2d, x0, minimizer_kwargs=minimizer_kwargs,
		...                    niter=10, accept_test=mybounds)
	**/
	static public function basinhopping(func:Dynamic, x0:Dynamic, ?niter:Dynamic, ?T:Dynamic, ?stepsize:Dynamic, ?minimizer_kwargs:Dynamic, ?take_step:Dynamic, ?accept_test:Dynamic, ?callback:Dynamic, ?interval:Dynamic, ?disp:Dynamic, ?niter_success:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Turn seed into a np.random.RandomState instance
		
		If seed is None (or np.random), return the RandomState singleton used
		by np.random.
		If seed is an int, return a new RandomState instance seeded with seed.
		If seed is already a RandomState instance, return it.
		Otherwise raise ValueError.
	**/
	static public function check_random_state(seed:Dynamic):Dynamic;
	/**
		cos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding cosine values.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> np.cos(np.array([0, np.pi/2, np.pi]))
		array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
		>>>
		>>> # Example of providing the optional output parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		sin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		arcsin, sinh, cos
		
		Notes
		-----
		The sine is one of the fundamental functions of trigonometry (the
		mathematical study of triangles).  Consider a circle of radius 1
		centered on the origin.  A ray comes in from the :math:`+x` axis, makes
		an angle at the origin (measured counter-clockwise from that axis), and
		departs from the origin.  The :math:`y` coordinate of the outgoing
		ray's intersection with the unit circle is the sine of that angle.  It
		ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
		function has zeroes where the angle is a multiple of :math:`\pi`.
		Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
		The numerous properties of the sine and related functions are included
		in any standard trigonometry text.
		
		Examples
		--------
		Print sine of one angle:
		
		>>> np.sin(np.pi/2.)
		1.0
		
		Print sines of an array of angles given in degrees:
		
		>>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
		array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
		
		Plot the sine function:
		
		>>> import matplotlib.pylab as plt
		>>> x = np.linspace(-np.pi, np.pi, 201)
		>>> plt.plot(x, np.sin(x))
		>>> plt.xlabel('Angle [rad]')
		>>> plt.ylabel('sin(x)')
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
}