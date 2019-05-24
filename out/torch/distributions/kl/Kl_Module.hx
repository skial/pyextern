/* This file is generated, do not edit! */
package torch.distributions.kl;
@:pythonImport("torch.distributions.kl") extern class Kl_Module {
	static public var _KL_MEMOIZE : Dynamic;
	static public var _KL_REGISTRY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the diagonals of a batch of square matrices.
	**/
	static public function _batch_diag(bmat:Dynamic):Dynamic;
	/**
		Uses "matrix determinant lemma"::
		    log|W @ W.T + D| = log|C| + log|D|,
		where :math:`C` is the capacitance matrix :math:`I + W.T @ inv(D) @ W`, to compute
		the log determinant.
	**/
	static public function _batch_lowrank_logdet(W:Dynamic, D:Dynamic, capacitance_tril:Dynamic):Dynamic;
	/**
		Uses "Woodbury matrix identity"::
		    inv(W @ W.T + D) = inv(D) - inv(D) @ W @ inv(C) @ W.T @ inv(D),
		where :math:`C` is the capacitance matrix :math:`I + W.T @ inv(D) @ W`, to compute the squared
		Mahalanobis distance :math:`x.T @ inv(W @ W.T + D) @ x`.
	**/
	static public function _batch_lowrank_mahalanobis(W:Dynamic, D:Dynamic, x:Dynamic, capacitance_tril:Dynamic):Dynamic;
	/**
		Computes the squared Mahalanobis distance :math:`\mathbf{x}^\top\mathbf{M}^{-1}\mathbf{x}`
		for a factored :math:`\mathbf{M} = \mathbf{L}\mathbf{L}^\top`.
		
		Accepts batches for both bL and bx. They are not necessarily assumed to have the same batch
		shape, but `bL` one should be able to broadcasted to `bx` one.
	**/
	static public function _batch_mahalanobis(bL:Dynamic, bx:Dynamic):Dynamic;
	/**
		Utility function for calculating the trace of XX^{T} with X having arbitrary trailing batch dimensions
	**/
	static public function _batch_trace_XXT(bmat:Dynamic):Dynamic;
	/**
		Applies `torch.trtrs` for batches of matrices. `bb` and `bA` should have
		the same batch shape.
	**/
	static public function _batch_trtrs_lower(bb:Dynamic, bA:Dynamic):Dynamic;
	/**
		Returns the diagonal matrices of a batch of vectors.
	**/
	static public function _batch_vector_diag(bvec:Dynamic):Dynamic;
	/**
		Find the most specific approximate match, assuming single inheritance.
	**/
	static public function _dispatch_kl(type_p:Dynamic, type_q:Dynamic):Dynamic;
	static public var _euler_gamma : Dynamic;
	/**
		Helper function for obtaining infinite KL Divergence throughout
	**/
	static public function _infinite_like(tensor:Dynamic):Dynamic;
	static public function _kl_bernoulli_bernoulli(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_bernoulli_poisson(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_beta_beta(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_beta_exponential(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_beta_gamma(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_beta_infinity(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_beta_normal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_beta_uniform(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_binomial_binomial(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_categorical_categorical(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_dirichlet_dirichlet(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_expfamily_expfamily(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_exponential_exponential(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_exponential_gamma(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_exponential_gumbel(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_exponential_infinity(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_exponential_normal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_gamma_exponential(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_gamma_gamma(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_gamma_gumbel(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_gamma_infinity(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_gamma_normal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_geometric_geometric(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_gumbel_gumbel(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_gumbel_infinity(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_gumbel_normal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_halfnormal_halfnormal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_laplace_infinity(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_laplace_laplace(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_laplace_normal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_lowrankmultivariatenormal_lowrankmultivariatenormal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_lowrankmultivariatenormal_multivariatenormal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_multivariatenormal_lowrankmultivariatenormal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_multivariatenormal_multivariatenormal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_normal_gumbel(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_normal_infinity(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_normal_normal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_onehotcategorical_onehotcategorical(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_pareto_exponential(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_pareto_gamma(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_pareto_infinity(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_pareto_normal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_pareto_pareto(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_poisson_infinity(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_poisson_poisson(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_transformed_transformed(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_uniform_beta(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_uniform_exponetial(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_uniform_gamma(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_uniform_gumbel(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_uniform_normal(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_uniform_pareto(p:Dynamic, q:Dynamic):Dynamic;
	static public function _kl_uniform_uniform(p:Dynamic, q:Dynamic):Dynamic;
	/**
		Sum out ``dim`` many rightmost dimensions of a given tensor.
		
		Args:
		    value (Tensor): A tensor of ``.dim()`` at least ``dim``.
		    dim (int): The number of rightmost dims to sum out.
	**/
	static public function _sum_rightmost(value:Dynamic, dim:Dynamic):Dynamic;
	/**
		Utility function for calculating x log x
	**/
	static public function _x_log_x(tensor:Dynamic):Dynamic;
	static public var inf : Dynamic;
	/**
		Compute Kullback-Leibler divergence :math:`KL(p \| q)` between two distributions.
		
		.. math::
		
		    KL(p \| q) = \int p(x) \log\frac {p(x)} {q(x)} \,dx
		
		Args:
		    p (Distribution): A :class:`~torch.distributions.Distribution` object.
		    q (Distribution): A :class:`~torch.distributions.Distribution` object.
		
		Returns:
		    Tensor: A batch of KL divergences of shape `batch_shape`.
		
		Raises:
		    NotImplementedError: If the distribution types have not been registered via
		        :meth:`register_kl`.
	**/
	static public function kl_divergence(p:Dynamic, q:Dynamic):Dynamic;
	/**
		Decorator to register a pairwise function with :meth:`kl_divergence`.
		Usage::
		
		    @register_kl(Normal, Normal)
		    def kl_normal_normal(p, q):
		        # insert implementation here
		
		Lookup returns the most specific (type,type) match ordered by subclass. If
		the match is ambiguous, a `RuntimeWarning` is raised. For example to
		resolve the ambiguous situation::
		
		    @register_kl(BaseP, DerivedQ)
		    def kl_version1(p, q): ...
		    @register_kl(DerivedP, BaseQ)
		    def kl_version2(p, q): ...
		
		you should register a third most-specific implementation, e.g.::
		
		    register_kl(DerivedP, DerivedQ)(kl_version1)  # Break the tie.
		
		Args:
		    type_p (type): A subclass of :class:`~torch.distributions.Distribution`.
		    type_q (type): A subclass of :class:`~torch.distributions.Distribution`.
	**/
	static public function register_kl(type_p:Dynamic, type_q:Dynamic):Dynamic;
	/**
		Class decorator that fills in missing ordering methods
	**/
	static public function total_ordering(cls:Dynamic):Dynamic;
}