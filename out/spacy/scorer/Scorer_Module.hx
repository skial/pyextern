/* This file is generated, do not edit! */
package spacy.scorer;
@:pythonImport("spacy.scorer") extern class Scorer_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_PIPELINE : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MISSING_VALUES : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compute Area Under the Curve (AUC) using the trapezoidal rule
		
		This is a general function, given points on a curve.  For computing the
		area under the ROC-curve, see :func:`roc_auc_score`.
		
		Parameters
		----------
		x : array, shape = [n]
		    x coordinates. These must be either monotonic increasing or monotonic
		    decreasing.
		y : array, shape = [n]
		    y coordinates.
		
		Returns
		-------
		auc : float
	**/
	static public function _auc(x:Dynamic, y:Dynamic):Float;
	/**
		Calculate true and false positives per binary classification threshold.
		
		Parameters
		----------
		y_true : array, shape = [n_samples]
		    True targets of binary classification
		
		y_score : array, shape = [n_samples]
		    Estimated probabilities or decision function
		
		Returns
		-------
		fps : array, shape = [n_thresholds]
		    A count of false positives, at index i being the number of negative
		    samples assigned a score >= thresholds[i]. The total number of
		    negative samples is equal to fps[-1] (thus true negatives are given by
		    fps[-1] - fps).
		
		tps : array, shape = [n_thresholds <= len(np.unique(y_score))]
		    An increasing count of true positives, at index i being the number
		    of positive samples assigned a score >= thresholds[i]. The total
		    number of positive samples is equal to tps[-1] (thus false negatives
		    are given by tps[-1] - tps).
		
		thresholds : array, shape = [n_thresholds]
		    Decreasing score values.
	**/
	static public function _binary_clf_curve(y_true:Dynamic, y_score:Dynamic):Dynamic;
	/**
		Compute Area Under the Receiver Operating Characteristic Curve (ROC AUC)
		from prediction scores.
		
		Note: this implementation is restricted to the binary classification task
		
		Parameters
		----------
		y_true : array, shape = [n_samples] or [n_samples, n_classes]
		    True binary labels or binary label indicators.
		    The multiclass case expects shape = [n_samples] and labels
		    with values in ``range(n_classes)``.
		
		y_score : array, shape = [n_samples] or [n_samples, n_classes]
		    Target scores, can either be probability estimates of the positive
		    class, confidence values, or non-thresholded measure of decisions
		    (as returned by "decision_function" on some classifiers). For binary
		    y_true, y_score is supposed to be the score of the class with greater
		    label. The multiclass case expects shape = [n_samples, n_classes]
		    where the scores correspond to probability estimates.
		
		Returns
		-------
		auc : float
		
		References
		----------
		.. [1] `Wikipedia entry for the Receiver operating characteristic
		        <https://en.wikipedia.org/wiki/Receiver_operating_characteristic>`_
		
		.. [2] Fawcett T. An introduction to ROC analysis[J]. Pattern Recognition
		       Letters, 2006, 27(8):861-874.
		
		.. [3] `Analyzing a portion of the ROC curve. McClish, 1989
		        <https://www.ncbi.nlm.nih.gov/pubmed/2668680>`_
	**/
	static public function _roc_auc_score(y_true:Dynamic, y_score:Dynamic):Float;
	/**
		Compute Receiver operating characteristic (ROC)
		
		Note: this implementation is restricted to the binary classification task.
		
		Parameters
		----------
		
		y_true : array, shape = [n_samples]
		    True binary labels. If labels are not either {-1, 1} or {0, 1}, then
		    pos_label should be explicitly given.
		
		y_score : array, shape = [n_samples]
		    Target scores, can either be probability estimates of the positive
		    class, confidence values, or non-thresholded measure of decisions
		    (as returned by "decision_function" on some classifiers).
		
		Returns
		-------
		fpr : array, shape = [>2]
		    Increasing false positive rates such that element i is the false
		    positive rate of predictions with score >= thresholds[i].
		
		tpr : array, shape = [>2]
		    Increasing true positive rates such that element i is the true
		    positive rate of predictions with score >= thresholds[i].
		
		thresholds : array, shape = [n_thresholds]
		    Decreasing thresholds on the decision function used to compute
		    fpr and tpr. `thresholds[0]` represents no instances being predicted
		    and is arbitrarily set to `max(y_score) + 1`.
		
		Notes
		-----
		Since the thresholds are sorted from low to high values, they
		are reversed upon returning them to ensure they correspond to both ``fpr``
		and ``tpr``, which are sorted in reversed order during their calculation.
		
		References
		----------
		.. [1] `Wikipedia entry for the Receiver operating characteristic
		        <https://en.wikipedia.org/wiki/Receiver_operating_characteristic>`_
		
		.. [2] Fawcett T. An introduction to ROC analysis[J]. Pattern Recognition
		       Letters, 2006, 27(8):861-874.
	**/
	static public function _roc_curve(y_true:Dynamic, y_score:Dynamic):Dynamic;
	/**
		Use high precision for cumsum and check that final value matches sum
		
		Parameters
		----------
		arr : array-like
		    To be cumulatively summed as flat
		axis : int, optional
		    Axis along which the cumulative sum is computed.
		    The default (None) is to compute the cumsum over the flattened array.
		rtol : float
		    Relative tolerance, see ``np.allclose``
		atol : float
		    Absolute tolerance, see ``np.allclose``
	**/
	static public function _stable_cumsum(arr:Dynamic, ?axis:Dynamic, ?rtol:Dynamic, ?atol:Dynamic):Dynamic;
	/**
		Import and load a Language class.
		
		lang (str): IETF language code, such as 'en'.
		RETURNS (Language): Language class.
	**/
	static public function get_lang_class(lang:Dynamic):Dynamic;
	/**
		Compute micro-PRF and per-entity PRF scores for a sequence of examples.
	**/
	static public function get_ner_prf(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}