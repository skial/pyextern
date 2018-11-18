/* This file is generated, do not edit! */
package scipy.interpolate.fitpack;
@:pythonImport("scipy.interpolate.fitpack") extern class Fitpack_Module {
	static public var __all__ : Dynamic;
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
		Evaluate a bivariate B-spline and its derivatives.
		
		Return a rank-2 array of spline function values (or spline derivative
		values) at points given by the cross-product of the rank-1 arrays `x` and
		`y`.  In special cases, return an array or just a float if either `x` or
		`y` or both are floats.  Based on BISPEV from FITPACK.
		
		Parameters
		----------
		x, y : ndarray
		    Rank-1 arrays specifying the domain over which to evaluate the
		    spline or its derivative.
		tck : tuple
		    A sequence of length 5 returned by `bisplrep` containing the knot
		    locations, the coefficients, and the degree of the spline:
		    [tx, ty, c, kx, ky].
		dx, dy : int, optional
		    The orders of the partial derivatives in `x` and `y` respectively.
		
		Returns
		-------
		vals : ndarray
		    The B-spline or its derivative evaluated over the set formed by
		    the cross-product of `x` and `y`.
		
		See Also
		--------
		splprep, splrep, splint, sproot, splev
		UnivariateSpline, BivariateSpline
		
		Notes
		-----
		    See `bisplrep` to generate the `tck` representation.
		
		References
		----------
		.. [1] Dierckx P. : An algorithm for surface fitting
		   with spline functions
		   Ima J. Numer. Anal. 1 (1981) 267-283.
		.. [2] Dierckx P. : An algorithm for surface fitting
		   with spline functions
		   report tw50, Dept. Computer Science,K.U.Leuven, 1980.
		.. [3] Dierckx P. : Curve and surface fitting with splines,
		   Monographs on Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function bisplev(x:Dynamic, y:Dynamic, tck:Dynamic, ?dx:Dynamic, ?dy:Dynamic):Dynamic;
	/**
		Find a bivariate B-spline representation of a surface.
		
		Given a set of data points (x[i], y[i], z[i]) representing a surface
		z=f(x,y), compute a B-spline representation of the surface. Based on
		the routine SURFIT from FITPACK.
		
		Parameters
		----------
		x, y, z : ndarray
		    Rank-1 arrays of data points.
		w : ndarray, optional
		    Rank-1 array of weights. By default ``w=np.ones(len(x))``.
		xb, xe : float, optional
		    End points of approximation interval in `x`.
		    By default ``xb = x.min(), xe=x.max()``.
		yb, ye : float, optional
		    End points of approximation interval in `y`.
		    By default ``yb=y.min(), ye = y.max()``.
		kx, ky : int, optional
		    The degrees of the spline (1 <= kx, ky <= 5).
		    Third order (kx=ky=3) is recommended.
		task : int, optional
		    If task=0, find knots in x and y and coefficients for a given
		    smoothing factor, s.
		    If task=1, find knots and coefficients for another value of the
		    smoothing factor, s.  bisplrep must have been previously called
		    with task=0 or task=1.
		    If task=-1, find coefficients for a given set of knots tx, ty.
		s : float, optional
		    A non-negative smoothing factor.  If weights correspond
		    to the inverse of the standard-deviation of the errors in z,
		    then a good s-value should be found in the range
		    ``(m-sqrt(2*m),m+sqrt(2*m))`` where m=len(x).
		eps : float, optional
		    A threshold for determining the effective rank of an
		    over-determined linear system of equations (0 < eps < 1).
		    `eps` is not likely to need changing.
		tx, ty : ndarray, optional
		    Rank-1 arrays of the knots of the spline for task=-1
		full_output : int, optional
		    Non-zero to return optional outputs.
		nxest, nyest : int, optional
		    Over-estimates of the total number of knots. If None then
		    ``nxest = max(kx+sqrt(m/2),2*kx+3)``,
		    ``nyest = max(ky+sqrt(m/2),2*ky+3)``.
		quiet : int, optional
		    Non-zero to suppress printing of messages.
		    This parameter is deprecated; use standard Python warning filters
		    instead.
		
		Returns
		-------
		tck : array_like
		    A list [tx, ty, c, kx, ky] containing the knots (tx, ty) and
		    coefficients (c) of the bivariate B-spline representation of the
		    surface along with the degree of the spline.
		fp : ndarray
		    The weighted sum of squared residuals of the spline approximation.
		ier : int
		    An integer flag about splrep success.  Success is indicated if
		    ier<=0. If ier in [1,2,3] an error occurred but was not raised.
		    Otherwise an error is raised.
		msg : str
		    A message corresponding to the integer flag, ier.
		
		See Also
		--------
		splprep, splrep, splint, sproot, splev
		UnivariateSpline, BivariateSpline
		
		Notes
		-----
		See `bisplev` to evaluate the value of the B-spline given its tck
		representation.
		
		References
		----------
		.. [1] Dierckx P.:An algorithm for surface fitting with spline functions
		   Ima J. Numer. Anal. 1 (1981) 267-283.
		.. [2] Dierckx P.:An algorithm for surface fitting with spline functions
		   report tw50, Dept. Computer Science,K.U.Leuven, 1980.
		.. [3] Dierckx P.:Curve and surface fitting with splines, Monographs on
		   Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function bisplrep(x:Dynamic, y:Dynamic, z:Dynamic, ?w:Dynamic, ?xb:Dynamic, ?xe:Dynamic, ?yb:Dynamic, ?ye:Dynamic, ?kx:Dynamic, ?ky:Dynamic, ?task:Dynamic, ?s:Dynamic, ?eps:Dynamic, ?tx:Dynamic, ?ty:Dynamic, ?full_output:Dynamic, ?nxest:Dynamic, ?nyest:Dynamic, ?quiet:Dynamic):Dynamic;
	/**
		Evaluate the integral of a spline over area [xa,xb] x [ya,yb].
		
		Parameters
		----------
		xa, xb : float
		    The end-points of the x integration interval.
		ya, yb : float
		    The end-points of the y integration interval.
		tck : list [tx, ty, c, kx, ky]
		    A sequence of length 5 returned by bisplrep containing the knot
		    locations tx, ty, the coefficients c, and the degrees kx, ky
		    of the spline.
		
		Returns
		-------
		integ : float
		    The value of the resulting integral.
	**/
	static public function dblint(xa:Dynamic, xb:Dynamic, ya:Dynamic, yb:Dynamic, tck:Dynamic):Float;
	static public var division : Dynamic;
	/**
		Insert knots into a B-spline.
		
		Given the knots and coefficients of a B-spline representation, create a
		new B-spline with a knot inserted `m` times at point `x`.
		This is a wrapper around the FORTRAN routine insert of FITPACK.
		
		Parameters
		----------
		x (u) : array_like
		    A 1-D point at which to insert a new knot(s).  If `tck` was returned
		    from ``splprep``, then the parameter values, u should be given.
		tck : a `BSpline` instance or a tuple
		    If tuple, then it is expected to be a tuple (t,c,k) containing
		    the vector of knots, the B-spline coefficients, and the degree of
		    the spline.
		m : int, optional
		    The number of times to insert the given knot (its multiplicity).
		    Default is 1.
		per : int, optional
		    If non-zero, the input spline is considered periodic.
		
		Returns
		-------
		BSpline instance or a tuple
		    A new B-spline with knots t, coefficients c, and degree k.
		    ``t(k+1) <= x <= t(n-k)``, where k is the degree of the spline.
		    In case of a periodic spline (``per != 0``) there must be
		    either at least k interior knots t(j) satisfying ``t(k+1)<t(j)<=x``
		    or at least k interior knots t(j) satisfying ``x<=t(j)<t(n-k)``.
		    A tuple is returned iff the input argument `tck` is a tuple, otherwise
		    a BSpline object is constructed and returned.
		
		Notes
		-----
		Based on algorithms from [1]_ and [2]_.
		
		Manipulating the tck-tuples directly is not recommended. In new code,
		prefer using the `BSpline` objects.
		
		References
		----------
		.. [1] W. Boehm, "Inserting new knots into b-spline curves.",
		    Computer Aided Design, 12, p.199-201, 1980.
		.. [2] P. Dierckx, "Curve and surface fitting with splines, Monographs on
		    Numerical Analysis", Oxford University Press, 1993.
	**/
	static public function insert(x:Dynamic, tck:Dynamic, ?m:Dynamic, ?per:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Evaluate all derivatives of a B-spline.
		
		Given the knots and coefficients of a cubic B-spline compute all
		derivatives up to order k at a point (or set of points).
		
		Parameters
		----------
		x : array_like
		    A point or a set of points at which to evaluate the derivatives.
		    Note that ``t(k) <= x <= t(n-k+1)`` must hold for each `x`.
		tck : tuple
		    A tuple ``(t, c, k)``, containing the vector of knots, the B-spline
		    coefficients, and the degree of the spline (see `splev`).
		
		Returns
		-------
		results : {ndarray, list of ndarrays}
		    An array (or a list of arrays) containing all derivatives
		    up to order k inclusive for each point `x`.
		
		See Also
		--------
		splprep, splrep, splint, sproot, splev, bisplrep, bisplev,
		BSpline
		
		References
		----------
		.. [1] C. de Boor: On calculating with b-splines, J. Approximation Theory
		   6 (1972) 50-62.
		.. [2] M. G. Cox : The numerical evaluation of b-splines, J. Inst. Maths
		   applics 10 (1972) 134-149.
		.. [3] P. Dierckx : Curve and surface fitting with splines, Monographs on
		   Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function spalde(x:Dynamic, tck:Dynamic):Dynamic;
	/**
		Compute the spline for the antiderivative (integral) of a given spline.
		
		Parameters
		----------
		tck : BSpline instance or a tuple of (t, c, k)
		    Spline whose antiderivative to compute
		n : int, optional
		    Order of antiderivative to evaluate. Default: 1
		
		Returns
		-------
		BSpline instance or a tuple of (t2, c2, k2)
		    Spline of order k2=k+n representing the antiderivative of the input
		    spline.
		    A tuple is returned iff the input argument `tck` is a tuple, otherwise
		    a BSpline object is constructed and returned.
		
		See Also
		--------
		splder, splev, spalde
		BSpline
		
		Notes
		-----
		The `splder` function is the inverse operation of this function.
		Namely, ``splder(splantider(tck))`` is identical to `tck`, modulo
		rounding error.
		
		.. versionadded:: 0.13.0
		
		Examples
		--------
		>>> from scipy.interpolate import splrep, splder, splantider, splev
		>>> x = np.linspace(0, np.pi/2, 70)
		>>> y = 1 / np.sqrt(1 - 0.8*np.sin(x)**2)
		>>> spl = splrep(x, y)
		
		The derivative is the inverse operation of the antiderivative,
		although some floating point error accumulates:
		
		>>> splev(1.7, spl), splev(1.7, splder(splantider(spl)))
		(array(2.1565429877197317), array(2.1565429877201865))
		
		Antiderivative can be used to evaluate definite integrals:
		
		>>> ispl = splantider(spl)
		>>> splev(np.pi/2, ispl) - splev(0, ispl)
		2.2572053588768486
		
		This is indeed an approximation to the complete elliptic integral
		:math:`K(m) = \int_0^{\pi/2} [1 - m\sin^2 x]^{-1/2} dx`:
		
		>>> from scipy.special import ellipk
		>>> ellipk(0.8)
		2.2572053268208538
	**/
	static public function splantider(tck:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Compute the spline representation of the derivative of a given spline
		
		Parameters
		----------
		tck : BSpline instance or a tuple of (t, c, k)
		    Spline whose derivative to compute
		n : int, optional
		    Order of derivative to evaluate. Default: 1
		
		Returns
		-------
		`BSpline` instance or tuple
		    Spline of order k2=k-n representing the derivative
		    of the input spline.
		    A tuple is returned iff the input argument `tck` is a tuple, otherwise
		    a BSpline object is constructed and returned.
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
		
		See Also
		--------
		splantider, splev, spalde
		BSpline
		
		Examples
		--------
		This can be used for finding maxima of a curve:
		
		>>> from scipy.interpolate import splrep, splder, sproot
		>>> x = np.linspace(0, 10, 70)
		>>> y = np.sin(x)
		>>> spl = splrep(x, y, k=4)
		
		Now, differentiate the spline and find the zeros of the
		derivative. (NB: `sproot` only works for order 3 splines, so we
		fit an order 4 spline):
		
		>>> dspl = splder(spl)
		>>> sproot(dspl) / np.pi
		array([ 0.50000001,  1.5       ,  2.49999998])
		
		This agrees well with roots :math:`\pi/2 + n\pi` of
		:math:`\cos(x) = \sin'(x)`.
	**/
	static public function splder(tck:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Evaluate a B-spline or its derivatives.
		
		Given the knots and coefficients of a B-spline representation, evaluate
		the value of the smoothing polynomial and its derivatives.  This is a
		wrapper around the FORTRAN routines splev and splder of FITPACK.
		
		Parameters
		----------
		x : array_like
		    An array of points at which to return the value of the smoothed
		    spline or its derivatives.  If `tck` was returned from `splprep`,
		    then the parameter values, u should be given.
		tck : 3-tuple or a BSpline object
		    If a tuple, then it should be a sequence of length 3 returned by
		    `splrep` or `splprep` containing the knots, coefficients, and degree
		    of the spline. (Also see Notes.)
		der : int, optional
		    The order of derivative of the spline to compute (must be less than
		    or equal to k).
		ext : int, optional
		    Controls the value returned for elements of ``x`` not in the
		    interval defined by the knot sequence.
		
		    * if ext=0, return the extrapolated value.
		    * if ext=1, return 0
		    * if ext=2, raise a ValueError
		    * if ext=3, return the boundary value.
		
		    The default value is 0.
		
		Returns
		-------
		y : ndarray or list of ndarrays
		    An array of values representing the spline function evaluated at
		    the points in `x`.  If `tck` was returned from `splprep`, then this
		    is a list of arrays representing the curve in N-dimensional space.
		
		Notes
		-----
		Manipulating the tck-tuples directly is not recommended. In new code,
		prefer using `BSpline` objects.
		
		See Also
		--------
		splprep, splrep, sproot, spalde, splint
		bisplrep, bisplev
		BSpline
		
		References
		----------
		.. [1] C. de Boor, "On calculating with b-splines", J. Approximation
		    Theory, 6, p.50-62, 1972.
		.. [2] M. G. Cox, "The numerical evaluation of b-splines", J. Inst. Maths
		    Applics, 10, p.134-149, 1972.
		.. [3] P. Dierckx, "Curve and surface fitting with splines", Monographs
		    on Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function splev(x:Dynamic, tck:Dynamic, ?der:Dynamic, ?ext:Dynamic):Dynamic;
	/**
		Evaluate the definite integral of a B-spline between two given points.
		
		Parameters
		----------
		a, b : float
		    The end-points of the integration interval.
		tck : tuple or a BSpline instance
		    If a tuple, then it should be a sequence of length 3, containing the
		    vector of knots, the B-spline coefficients, and the degree of the
		    spline (see `splev`).
		full_output : int, optional
		    Non-zero to return optional output.
		
		Returns
		-------
		integral : float
		    The resulting integral.
		wrk : ndarray
		    An array containing the integrals of the normalized B-splines
		    defined on the set of knots.
		    (Only returned if `full_output` is non-zero)
		
		Notes
		-----
		`splint` silently assumes that the spline function is zero outside the data
		interval (`a`, `b`).
		
		Manipulating the tck-tuples directly is not recommended. In new code,
		prefer using the `BSpline` objects.
		
		See Also
		--------
		splprep, splrep, sproot, spalde, splev
		bisplrep, bisplev
		BSpline
		
		References
		----------
		.. [1] P.W. Gaffney, The calculation of indefinite integrals of b-splines",
		    J. Inst. Maths Applics, 17, p.37-41, 1976.
		.. [2] P. Dierckx, "Curve and surface fitting with splines", Monographs
		    on Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function splint(a:Dynamic, b:Dynamic, tck:Dynamic, ?full_output:Dynamic):Float;
	/**
		Find the B-spline representation of an N-dimensional curve.
		
		Given a list of N rank-1 arrays, `x`, which represent a curve in
		N-dimensional space parametrized by `u`, find a smooth approximating
		spline curve g(`u`). Uses the FORTRAN routine parcur from FITPACK.
		
		Parameters
		----------
		x : array_like
		    A list of sample vector arrays representing the curve.
		w : array_like, optional
		    Strictly positive rank-1 array of weights the same length as `x[0]`.
		    The weights are used in computing the weighted least-squares spline
		    fit. If the errors in the `x` values have standard-deviation given by
		    the vector d, then `w` should be 1/d. Default is ``ones(len(x[0]))``.
		u : array_like, optional
		    An array of parameter values. If not given, these values are
		    calculated automatically as ``M = len(x[0])``, where
		
		        v[0] = 0
		
		        v[i] = v[i-1] + distance(`x[i]`, `x[i-1]`)
		
		        u[i] = v[i] / v[M-1]
		
		ub, ue : int, optional
		    The end-points of the parameters interval.  Defaults to
		    u[0] and u[-1].
		k : int, optional
		    Degree of the spline. Cubic splines are recommended.
		    Even values of `k` should be avoided especially with a small s-value.
		    ``1 <= k <= 5``, default is 3.
		task : int, optional
		    If task==0 (default), find t and c for a given smoothing factor, s.
		    If task==1, find t and c for another value of the smoothing factor, s.
		    There must have been a previous call with task=0 or task=1
		    for the same set of data.
		    If task=-1 find the weighted least square spline for a given set of
		    knots, t.
		s : float, optional
		    A smoothing condition.  The amount of smoothness is determined by
		    satisfying the conditions: ``sum((w * (y - g))**2,axis=0) <= s``,
		    where g(x) is the smoothed interpolation of (x,y).  The user can
		    use `s` to control the trade-off between closeness and smoothness
		    of fit.  Larger `s` means more smoothing while smaller values of `s`
		    indicate less smoothing. Recommended values of `s` depend on the
		    weights, w.  If the weights represent the inverse of the
		    standard-deviation of y, then a good `s` value should be found in
		    the range ``(m-sqrt(2*m),m+sqrt(2*m))``, where m is the number of
		    data points in x, y, and w.
		t : int, optional
		    The knots needed for task=-1.
		full_output : int, optional
		    If non-zero, then return optional outputs.
		nest : int, optional
		    An over-estimate of the total number of knots of the spline to
		    help in determining the storage space.  By default nest=m/2.
		    Always large enough is nest=m+k+1.
		per : int, optional
		   If non-zero, data points are considered periodic with period
		   ``x[m-1] - x[0]`` and a smooth periodic spline approximation is
		   returned.  Values of ``y[m-1]`` and ``w[m-1]`` are not used.
		quiet : int, optional
		     Non-zero to suppress messages.
		     This parameter is deprecated; use standard Python warning filters
		     instead.
		
		Returns
		-------
		tck : tuple
		    (t,c,k) a tuple containing the vector of knots, the B-spline
		    coefficients, and the degree of the spline.
		u : array
		    An array of the values of the parameter.
		fp : float
		    The weighted sum of squared residuals of the spline approximation.
		ier : int
		    An integer flag about splrep success.  Success is indicated
		    if ier<=0. If ier in [1,2,3] an error occurred but was not raised.
		    Otherwise an error is raised.
		msg : str
		    A message corresponding to the integer flag, ier.
		
		See Also
		--------
		splrep, splev, sproot, spalde, splint,
		bisplrep, bisplev
		UnivariateSpline, BivariateSpline
		BSpline
		make_interp_spline
		
		Notes
		-----
		See `splev` for evaluation of the spline and its derivatives.
		The number of dimensions N must be smaller than 11.
		
		The number of coefficients in the `c` array is ``k+1`` less then the number
		of knots, ``len(t)``. This is in contrast with `splrep`, which zero-pads
		the array of coefficients to have the same length as the array of knots.
		These additional coefficients are ignored by evaluation routines, `splev`
		and `BSpline`.
		
		References
		----------
		.. [1] P. Dierckx, "Algorithms for smoothing data with periodic and
		    parametric splines, Computer Graphics and Image Processing",
		    20 (1982) 171-184.
		.. [2] P. Dierckx, "Algorithms for smoothing data with periodic and
		    parametric splines", report tw55, Dept. Computer Science,
		    K.U.Leuven, 1981.
		.. [3] P. Dierckx, "Curve and surface fitting with splines", Monographs on
		    Numerical Analysis, Oxford University Press, 1993.
		
		Examples
		--------
		Generate a discretization of a limacon curve in the polar coordinates:
		
		>>> phi = np.linspace(0, 2.*np.pi, 40)
		>>> r = 0.5 + np.cos(phi)         # polar coords
		>>> x, y = r * np.cos(phi), r * np.sin(phi)    # convert to cartesian
		
		And interpolate:
		
		>>> from scipy.interpolate import splprep, splev
		>>> tck, u = splprep([x, y], s=0)
		>>> new_points = splev(u, tck)
		
		Notice that (i) we force interpolation by using `s=0`,
		(ii) the parameterization, ``u``, is generated automatically.
		Now plot the result:
		
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots()
		>>> ax.plot(x, y, 'ro')
		>>> ax.plot(new_points[0], new_points[1], 'r-')
		>>> plt.show()
	**/
	static public function splprep(x:Dynamic, ?w:Dynamic, ?u:Dynamic, ?ub:Dynamic, ?ue:Dynamic, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic, ?t:Dynamic, ?full_output:Dynamic, ?nest:Dynamic, ?per:Dynamic, ?quiet:Dynamic):python.Tuple<Dynamic>;
	/**
		Find the B-spline representation of 1-D curve.
		
		Given the set of data points ``(x[i], y[i])`` determine a smooth spline
		approximation of degree k on the interval ``xb <= x <= xe``.
		
		Parameters
		----------
		x, y : array_like
		    The data points defining a curve y = f(x).
		w : array_like, optional
		    Strictly positive rank-1 array of weights the same length as x and y.
		    The weights are used in computing the weighted least-squares spline
		    fit. If the errors in the y values have standard-deviation given by the
		    vector d, then w should be 1/d. Default is ones(len(x)).
		xb, xe : float, optional
		    The interval to fit.  If None, these default to x[0] and x[-1]
		    respectively.
		k : int, optional
		    The degree of the spline fit. It is recommended to use cubic splines.
		    Even values of k should be avoided especially with small s values.
		    1 <= k <= 5
		task : {1, 0, -1}, optional
		    If task==0 find t and c for a given smoothing factor, s.
		
		    If task==1 find t and c for another value of the smoothing factor, s.
		    There must have been a previous call with task=0 or task=1 for the same
		    set of data (t will be stored an used internally)
		
		    If task=-1 find the weighted least square spline for a given set of
		    knots, t. These should be interior knots as knots on the ends will be
		    added automatically.
		s : float, optional
		    A smoothing condition. The amount of smoothness is determined by
		    satisfying the conditions: sum((w * (y - g))**2,axis=0) <= s where g(x)
		    is the smoothed interpolation of (x,y). The user can use s to control
		    the tradeoff between closeness and smoothness of fit. Larger s means
		    more smoothing while smaller values of s indicate less smoothing.
		    Recommended values of s depend on the weights, w. If the weights
		    represent the inverse of the standard-deviation of y, then a good s
		    value should be found in the range (m-sqrt(2*m),m+sqrt(2*m)) where m is
		    the number of datapoints in x, y, and w. default : s=m-sqrt(2*m) if
		    weights are supplied. s = 0.0 (interpolating) if no weights are
		    supplied.
		t : array_like, optional
		    The knots needed for task=-1. If given then task is automatically set
		    to -1.
		full_output : bool, optional
		    If non-zero, then return optional outputs.
		per : bool, optional
		    If non-zero, data points are considered periodic with period x[m-1] -
		    x[0] and a smooth periodic spline approximation is returned. Values of
		    y[m-1] and w[m-1] are not used.
		quiet : bool, optional
		    Non-zero to suppress messages.
		    This parameter is deprecated; use standard Python warning filters
		    instead.
		
		Returns
		-------
		tck : tuple
		    A tuple (t,c,k) containing the vector of knots, the B-spline
		    coefficients, and the degree of the spline.
		fp : array, optional
		    The weighted sum of squared residuals of the spline approximation.
		ier : int, optional
		    An integer flag about splrep success. Success is indicated if ier<=0.
		    If ier in [1,2,3] an error occurred but was not raised. Otherwise an
		    error is raised.
		msg : str, optional
		    A message corresponding to the integer flag, ier.
		
		See Also
		--------
		UnivariateSpline, BivariateSpline
		splprep, splev, sproot, spalde, splint
		bisplrep, bisplev
		BSpline
		make_interp_spline
		
		Notes
		-----
		See `splev` for evaluation of the spline and its derivatives. Uses the
		FORTRAN routine ``curfit`` from FITPACK.
		
		The user is responsible for assuring that the values of `x` are unique.
		Otherwise, `splrep` will not return sensible results.
		
		If provided, knots `t` must satisfy the Schoenberg-Whitney conditions,
		i.e., there must be a subset of data points ``x[j]`` such that
		``t[j] < x[j] < t[j+k+1]``, for ``j=0, 1,...,n-k-2``.
		
		This routine zero-pads the coefficients array ``c`` to have the same length
		as the array of knots ``t`` (the trailing ``k + 1`` coefficients are ignored
		by the evaluation routines, `splev` and `BSpline`.) This is in contrast with
		`splprep`, which does not zero-pad the coefficients.
		
		References
		----------
		Based on algorithms described in [1]_, [2]_, [3]_, and [4]_:
		
		.. [1] P. Dierckx, "An algorithm for smoothing, differentiation and
		   integration of experimental data using spline functions",
		   J.Comp.Appl.Maths 1 (1975) 165-184.
		.. [2] P. Dierckx, "A fast algorithm for smoothing data on a rectangular
		   grid while using spline functions", SIAM J.Numer.Anal. 19 (1982)
		   1286-1304.
		.. [3] P. Dierckx, "An improved algorithm for curve fitting with spline
		   functions", report tw54, Dept. Computer Science,K.U. Leuven, 1981.
		.. [4] P. Dierckx, "Curve and surface fitting with splines", Monographs on
		   Numerical Analysis, Oxford University Press, 1993.
		
		Examples
		--------
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.interpolate import splev, splrep
		>>> x = np.linspace(0, 10, 10)
		>>> y = np.sin(x)
		>>> spl = splrep(x, y)
		>>> x2 = np.linspace(0, 10, 200)
		>>> y2 = splev(x2, spl)
		>>> plt.plot(x, y, 'o', x2, y2)
		>>> plt.show()
	**/
	static public function splrep(x:Dynamic, y:Dynamic, ?w:Dynamic, ?xb:Dynamic, ?xe:Dynamic, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic, ?t:Dynamic, ?full_output:Dynamic, ?per:Dynamic, ?quiet:Dynamic):python.Tuple<Dynamic>;
	/**
		Find the roots of a cubic B-spline.
		
		Given the knots (>=8) and coefficients of a cubic B-spline return the
		roots of the spline.
		
		Parameters
		----------
		tck : tuple or a BSpline object
		    If a tuple, then it should be a sequence of length 3, containing the
		    vector of knots, the B-spline coefficients, and the degree of the
		    spline.
		    The number of knots must be >= 8, and the degree must be 3.
		    The knots must be a montonically increasing sequence.
		mest : int, optional
		    An estimate of the number of zeros (Default is 10).
		
		Returns
		-------
		zeros : ndarray
		    An array giving the roots of the spline.
		
		Notes
		-----
		Manipulating the tck-tuples directly is not recommended. In new code,
		prefer using the `BSpline` objects.
		
		See also
		--------
		splprep, splrep, splint, spalde, splev
		bisplrep, bisplev
		BSpline
		
		
		References
		----------
		.. [1] C. de Boor, "On calculating with b-splines", J. Approximation
		    Theory, 6, p.50-62, 1972.
		.. [2] M. G. Cox, "The numerical evaluation of b-splines", J. Inst. Maths
		    Applics, 10, p.134-149, 1972.
		.. [3] P. Dierckx, "Curve and surface fitting with splines", Monographs
		    on Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function sproot(tck:Dynamic, ?mest:Dynamic):Dynamic;
}