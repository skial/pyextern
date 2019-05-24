/* This file is generated, do not edit! */
package scipy.sparse.csgraph._traversal;
@:pythonImport("scipy.sparse.csgraph._traversal") extern class _Traversal_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		breadth_first_order(csgraph, i_start, directed=True, return_predecessors=True)
		
		Return a breadth-first ordering starting with specified node.
		
		Note that a breadth-first order is not unique, but the tree which it
		generates is unique.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N compressed sparse graph.  The input csgraph will be
		    converted to csr format for the calculation.
		i_start : int
		    The index of starting node.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		return_predecessors : bool, optional
		    If True (default), then return the predecesor array (see below).
		
		Returns
		-------
		node_array : ndarray, one dimension
		    The breadth-first list of nodes, starting with specified node.  The
		    length of node_array is the number of nodes reachable from the
		    specified node.
		predecessors : ndarray, one dimension
		    Returned only if return_predecessors is True.
		    The length-N list of predecessors of each node in a breadth-first
		    tree.  If node i is in the tree, then its parent is given by
		    predecessors[i]. If node i is not in the tree (and for the parent
		    node) then predecessors[i] = -9999.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import breadth_first_order
		
		>>> graph = [
		... [0, 1 , 2, 0],
		... [0, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		
		>>> breadth_first_order(graph,0)
		(array([0, 1, 2, 3], dtype=int32), array([-9999,     0,     0,     1], dtype=int32))
	**/
	static public function breadth_first_order(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		breadth_first_tree(csgraph, i_start, directed=True)
		
		Return the tree generated by a breadth-first search
		
		Note that a breadth-first tree from a specified node is unique.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N matrix representing the compressed sparse graph.  The input
		    csgraph will be converted to csr format for the calculation.
		i_start : int
		    The index of starting node.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		
		Returns
		-------
		cstree : csr matrix
		    The N x N directed compressed-sparse representation of the breadth-
		    first tree drawn from csgraph, starting at the specified node.
		
		Examples
		--------
		The following example shows the computation of a depth-first tree
		over a simple four-component graph, starting at node 0::
		
		     input graph          breadth first tree from (0)
		
		         (0)                         (0)
		        /   \                       /   \
		       3     8                     3     8
		      /       \                   /       \
		    (3)---5---(1)               (3)       (1)
		      \       /                           /
		       6     2                           2
		        \   /                           /
		         (2)                         (2)
		
		In compressed sparse representation, the solution looks like this:
		
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import breadth_first_tree
		>>> X = csr_matrix([[0, 8, 0, 3],
		...                 [0, 0, 2, 5],
		...                 [0, 0, 0, 6],
		...                 [0, 0, 0, 0]])
		>>> Tcsr = breadth_first_tree(X, 0, directed=False)
		>>> Tcsr.toarray().astype(int)
		array([[0, 8, 0, 3],
		       [0, 0, 2, 0],
		       [0, 0, 0, 0],
		       [0, 0, 0, 0]])
		
		Note that the resulting graph is a Directed Acyclic Graph which spans
		the graph.  A breadth-first tree from a given node is unique.
	**/
	static public function breadth_first_tree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		connected_components(csgraph, directed=True, connection='weak',
		                     return_labels=True)
		
		Analyze the connected components of a sparse graph
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N matrix representing the compressed sparse graph.  The input
		    csgraph will be converted to csr format for the calculation.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		connection : str, optional
		    ['weak'|'strong'].  For directed graphs, the type of connection to
		    use.  Nodes i and j are strongly connected if a path exists both
		    from i to j and from j to i.  Nodes i and j are weakly connected if
		    only one of these paths exists.  If directed == False, this keyword
		    is not referenced.
		return_labels : bool, optional
		    If True (default), then return the labels for each of the connected
		    components.
		
		Returns
		-------
		n_components: int
		    The number of connected components.
		labels: ndarray
		    The length-N array of labels of the connected components.
		
		References
		----------
		.. [1] D. J. Pearce, "An Improved Algorithm for Finding the Strongly
		       Connected Components of a Directed Graph", Technical Report, 2005
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import connected_components
		
		>>> graph = [
		... [ 0, 1 , 1, 0 , 0 ],
		... [ 0, 0 , 1 , 0 ,0 ],
		... [ 0, 0, 0, 0, 0],
		... [0, 0 , 0, 0, 1],
		... [0, 0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    1
		  (1, 2)    1
		  (3, 4)    1
		
		>>> n_components, labels = connected_components(csgraph=graph, directed=False, return_labels=True)
		>>> n_components
		2
		>>> labels
		array([0, 0, 0, 1, 1], dtype=int32)
	**/
	static public function connected_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		depth_first_order(csgraph, i_start, directed=True, return_predecessors=True)
		
		Return a depth-first ordering starting with specified node.
		
		Note that a depth-first order is not unique.  Furthermore, for graphs
		with cycles, the tree generated by a depth-first search is not
		unique either.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N compressed sparse graph.  The input csgraph will be
		    converted to csr format for the calculation.
		i_start : int
		    The index of starting node.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		return_predecessors : bool, optional
		    If True (default), then return the predecesor array (see below).
		
		Returns
		-------
		node_array : ndarray, one dimension
		    The depth-first list of nodes, starting with specified node.  The
		    length of node_array is the number of nodes reachable from the
		    specified node.
		predecessors : ndarray, one dimension
		    Returned only if return_predecessors is True.
		    The length-N list of predecessors of each node in a depth-first
		    tree.  If node i is in the tree, then its parent is given by
		    predecessors[i]. If node i is not in the tree (and for the parent
		    node) then predecessors[i] = -9999.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import depth_first_order
		
		>>> graph = [
		... [0, 1 , 2, 0],
		... [0, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		
		>>> depth_first_order(graph,0)
		(array([0, 1, 3, 2], dtype=int32), array([-9999,     0,     0,     1], dtype=int32))
	**/
	static public function depth_first_order(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		depth_first_tree(csgraph, i_start, directed=True)
		
		Return a tree generated by a depth-first search.
		
		Note that a tree generated by a depth-first search is not unique:
		it depends on the order that the children of each node are searched.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N matrix representing the compressed sparse graph.  The input
		    csgraph will be converted to csr format for the calculation.
		i_start : int
		    The index of starting node.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		
		Returns
		-------
		cstree : csr matrix
		    The N x N directed compressed-sparse representation of the depth-
		    first tree drawn from csgraph, starting at the specified node.
		
		Examples
		--------
		The following example shows the computation of a depth-first tree
		over a simple four-component graph, starting at node 0::
		
		     input graph           depth first tree from (0)
		
		         (0)                         (0)
		        /   \                           \
		       3     8                           8
		      /       \                           \
		    (3)---5---(1)               (3)       (1)
		      \       /                   \       /
		       6     2                     6     2
		        \   /                       \   /
		         (2)                         (2)
		
		In compressed sparse representation, the solution looks like this:
		
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import depth_first_tree
		>>> X = csr_matrix([[0, 8, 0, 3],
		...                 [0, 0, 2, 5],
		...                 [0, 0, 0, 6],
		...                 [0, 0, 0, 0]])
		>>> Tcsr = depth_first_tree(X, 0, directed=False)
		>>> Tcsr.toarray().astype(int)
		array([[0, 8, 0, 0],
		       [0, 0, 2, 0],
		       [0, 0, 0, 6],
		       [0, 0, 0, 0]])
		
		Note that the resulting graph is a Directed Acyclic Graph which spans
		the graph.  Unlike a breadth-first tree, a depth-first tree of a given
		graph is not unique if the graph contains cycles.  If the above solution
		had begun with the edge connecting nodes 0 and 3, the result would have
		been different.
	**/
	static public function depth_first_tree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function isspmatrix(x:Dynamic):Dynamic;
	/**
		Is x of csc_matrix type?
		
		Parameters
		----------
		x
		    object to check for being a csc matrix
		
		Returns
		-------
		bool
		    True if x is a csc matrix, False otherwise
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix, isspmatrix_csc
		>>> isspmatrix_csc(csc_matrix([[5]]))
		True
		
		>>> from scipy.sparse import csc_matrix, csr_matrix, isspmatrix_csc
		>>> isspmatrix_csc(csr_matrix([[5]]))
		False
	**/
	static public function isspmatrix_csc(x:Dynamic):Dynamic;
	/**
		Is x of csr_matrix type?
		
		Parameters
		----------
		x
		    object to check for being a csr matrix
		
		Returns
		-------
		bool
		    True if x is a csr matrix, False otherwise
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix_csr
		>>> isspmatrix_csr(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import csc_matrix, csr_matrix, isspmatrix_csc
		>>> isspmatrix_csr(csc_matrix([[5]]))
		False
	**/
	static public function isspmatrix_csr(x:Dynamic):Dynamic;
	/**
		reconstruct_path(csgraph, predecessors, directed=True)
		
		Construct a tree from a graph and a predecessor list.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N matrix representing the directed or undirected graph
		    from which the predecessors are drawn.
		predecessors : array_like, one dimension
		    The length-N array of indices of predecessors for the tree.  The
		    index of the parent of node i is given by predecessors[i].
		directed : bool, optional
		    If True (default), then operate on a directed graph: only move from
		    point i to point j along paths csgraph[i, j].
		    If False, then operate on an undirected graph: the algorithm can
		    progress from point i to j along csgraph[i, j] or csgraph[j, i].
		
		Returns
		-------
		cstree : csr matrix
		    The N x N directed compressed-sparse representation of the tree drawn
		    from csgraph which is encoded by the predecessor list.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import reconstruct_path
		
		>>> graph = [
		... [0, 1 , 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 3)    3
		
		>>> pred = np.array([-9999, 0, 0, 1], dtype=np.int32)
		
		>>> cstree = reconstruct_path(csgraph=graph, predecessors=pred, directed=False)
		>>> cstree.todense()
		matrix([[ 0.,  1.,  2.,  0.],
		        [ 0.,  0.,  0.,  1.],
		        [ 0.,  0.,  0.,  0.],
		        [ 0.,  0.,  0.,  0.]])
	**/
	static public function reconstruct_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Routine for validation and conversion of csgraph inputs
	**/
	static public function validate_graph(csgraph:Dynamic, directed:Dynamic, ?dtype:Dynamic, ?csr_output:Dynamic, ?dense_output:Dynamic, ?copy_if_dense:Dynamic, ?copy_if_sparse:Dynamic, ?null_value_in:Dynamic, ?null_value_out:Dynamic, ?infinity_null:Dynamic, ?nan_null:Dynamic):Dynamic;
}