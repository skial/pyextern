/* This file is generated, do not edit! */
package spacy.scorer;
@:pythonImport("spacy.scorer", "Scorer") extern class Scorer {
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
		Initialize the Scorer.
		
		DOCS: https://spacy.io/api/scorer#init
	**/
	@:native("__init__")
	public function ___init__(?nlp:Dynamic, ?default_lang:Dynamic, ?default_pipeline:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize the Scorer.
		
		DOCS: https://spacy.io/api/scorer#init
	**/
	public function new(?nlp:Dynamic, ?default_lang:Dynamic, ?default_pipeline:Dynamic, ?cfg:python.KwArgs<Dynamic>):Void;
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
		Evaluate a list of Examples.
		
		examples (Iterable[Example]): The predicted annotations + correct annotations.
		RETURNS (Dict): A dictionary of scores.
		
		DOCS: https://spacy.io/api/scorer#score
	**/
	public function score(examples:Dynamic):Dynamic;
	/**
		Returns PRF and ROC AUC scores for a doc-level attribute with a
		dict with scores for each label like Doc.cats. The reported overall
		score depends on the scorer settings.
		
		examples (Iterable[Example]): Examples to score
		attr (str): The attribute to score.
		getter (Callable[[Doc, str], Any]): Defaults to getattr. If provided,
		    getter(doc, attr) should return the values for the individual doc.
		labels (Iterable[str]): The set of possible labels. Defaults to [].
		multi_label (bool): Whether the attribute allows multiple labels.
		    Defaults to True.
		positive_label (str): The positive label for a binary task with
		    exclusive classes. Defaults to None.
		threshold (float): Cutoff to consider a prediction "positive". Defaults
		    to 0.5 for multi-label, and 0.0 (i.e. whatever's highest scoring)
		    otherwise.
		RETURNS (Dict[str, Any]): A dictionary containing the scores, with
		    inapplicable scores as None:
		    for all:
		        attr_score (one of attr_micro_f / attr_macro_f / attr_macro_auc),
		        attr_score_desc (text description of the overall score),
		        attr_micro_p,
		        attr_micro_r,
		        attr_micro_f,
		        attr_macro_p,
		        attr_macro_r,
		        attr_macro_f,
		        attr_macro_auc,
		        attr_f_per_type,
		        attr_auc_per_type
		
		DOCS: https://spacy.io/api/scorer#score_cats
	**/
	static public function score_cats(examples:Dynamic, attr:Dynamic, ?getter:Dynamic, ?labels:Dynamic, ?multi_label:Dynamic, ?positive_label:Dynamic, ?threshold:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the UAS, LAS, and LAS per type scores for dependency
		parses.
		
		examples (Iterable[Example]): Examples to score
		attr (str): The attribute containing the dependency label.
		getter (Callable[[Token, str], Any]): Defaults to getattr. If provided,
		    getter(token, attr) should return the value of the attribute for an
		    individual token.
		head_attr (str): The attribute containing the head token. Defaults to
		    'head'.
		head_getter (Callable[[Token, str], Token]): Defaults to getattr. If provided,
		    head_getter(token, attr) should return the value of the head for an
		    individual token.
		ignore_labels (Tuple): Labels to ignore while scoring (e.g., punct).
		missing_values (Set[Any]): Attribute values to treat as missing annotation
		    in the reference annotation.
		RETURNS (Dict[str, Any]): A dictionary containing the scores:
		    attr_uas, attr_las, and attr_las_per_type.
		
		DOCS: https://spacy.io/api/scorer#score_deps
	**/
	static public function score_deps(examples:Dynamic, attr:Dynamic, ?getter:Dynamic, ?head_attr:Dynamic, ?head_getter:Dynamic, ?ignore_labels:Dynamic, ?missing_values:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns PRF for predicted links on the entity level.
		To disentangle the performance of the NEL from the NER,
		this method only evaluates NEL links for entities that overlap
		between the gold reference and the predictions.
		
		examples (Iterable[Example]): Examples to score
		negative_labels (Iterable[str]): The string values that refer to no annotation (e.g. "NIL")
		RETURNS (Dict[str, Any]): A dictionary containing the scores.
		
		DOCS: https://spacy.io/api/scorer#score_links
	**/
	static public function score_links(examples:Dynamic, negative_labels:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns PRF scores for labeled spans.
		
		examples (Iterable[Example]): Examples to score
		attr (str): The attribute to score.
		getter (Callable[[Doc, str], Iterable[Span]]): Defaults to getattr. If
		    provided, getter(doc, attr) should return the spans for the
		    individual doc.
		has_annotation (Optional[Callable[[Doc], bool]]) should return whether a `Doc`
		    has annotation for this `attr`. Docs without annotation are skipped for
		    scoring purposes.
		labeled (bool): Whether or not to include label information in
		    the evaluation. If set to 'False', two spans will be considered
		    equal if their start and end match, irrespective of their label.
		allow_overlap (bool): Whether or not to allow overlapping spans.
		    If set to 'False', the alignment will automatically resolve conflicts.
		RETURNS (Dict[str, Any]): A dictionary containing the PRF scores under
		    the keys attr_p/r/f and the per-type PRF scores under attr_per_type.
		
		DOCS: https://spacy.io/api/scorer#score_spans
	**/
	static public function score_spans(examples:Dynamic, attr:Dynamic, ?getter:Dynamic, ?has_annotation:Dynamic, ?labeled:Dynamic, ?allow_overlap:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns an accuracy score for a token-level attribute.
		
		examples (Iterable[Example]): Examples to score
		attr (str): The attribute to score.
		getter (Callable[[Token, str], Any]): Defaults to getattr. If provided,
		    getter(token, attr) should return the value of the attribute for an
		    individual token.
		missing_values (Set[Any]): Attribute values to treat as missing annotation
		    in the reference annotation.
		RETURNS (Dict[str, Any]): A dictionary containing the accuracy score
		    under the key attr_acc.
		
		DOCS: https://spacy.io/api/scorer#score_token_attr
	**/
	static public function score_token_attr(examples:Dynamic, attr:Dynamic, ?getter:Dynamic, ?missing_values:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return micro PRF and PRF scores per feat for a token attribute in
		UFEATS format.
		
		examples (Iterable[Example]): Examples to score
		attr (str): The attribute to score.
		getter (Callable[[Token, str], Any]): Defaults to getattr. If provided,
		    getter(token, attr) should return the value of the attribute for an
		    individual token.
		missing_values (Set[Any]): Attribute values to treat as missing
		    annotation in the reference annotation.
		RETURNS (dict): A dictionary containing the micro PRF scores under the
		    key attr_micro_p/r/f and the per-feat PRF scores under
		    attr_per_feat.
	**/
	static public function score_token_attr_per_feat(examples:Dynamic, attr:Dynamic, ?getter:Dynamic, ?missing_values:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns accuracy and PRF scores for tokenization.
		* token_acc: # correct tokens / # gold tokens
		* token_p/r/f: PRF for token character spans
		
		examples (Iterable[Example]): Examples to score
		RETURNS (Dict[str, Any]): A dictionary containing the scores
		    token_acc/p/r/f.
		
		DOCS: https://spacy.io/api/scorer#score_tokenization
	**/
	static public function score_tokenization(examples:Dynamic, ?cfg:python.KwArgs<Dynamic>):Dynamic;
}