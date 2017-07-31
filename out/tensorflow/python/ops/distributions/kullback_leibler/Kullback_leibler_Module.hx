/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.kullback_leibler;
@:pythonImport("tensorflow.python.ops.distributions.kullback_leibler") extern class Kullback_leibler_Module {
	static public var _DIVERGENCES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get the KL function registered for classes a and b.
	**/
	static public function _registered_kl(type_a:Dynamic, type_b:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get the KL-divergence KL(distribution_a || distribution_b).
		
		If there is no KL method registered specifically for `type(distribution_a)`
		and `type(distribution_b)`, then the class hierarchies of these types are
		searched.
		
		If one KL method is registered between any pairs of classes in these two
		parent hierarchies, it is used.
		
		If more than one such registered method exists, the method whose registered
		classes have the shortest sum MRO paths to the input types is used.
		
		If more than one such shortest path exists, the first method
		identified in the search is used (favoring a shorter MRO distance to
		`type(distribution_a)`).
		
		Args:
		  distribution_a: The first distribution.
		  distribution_b: The second distribution.
		  allow_nan_stats: Python `bool`, default `True`. When `True`,
		    statistics (e.g., mean, mode, variance) use the value "`NaN`" to
		    indicate the result is undefined. When `False`, an exception is raised
		    if one or more of the statistic's batch members are undefined.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  A Tensor with the batchwise KL-divergence between `distribution_a`
		  and `distribution_b`.
		
		Raises:
		  NotImplementedError: If no KL method is defined for distribution types
		    of `distribution_a` and `distribution_b`.
	**/
	static public function kl_divergence(distribution_a:Dynamic, distribution_b:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}