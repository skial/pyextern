/* This file is generated, do not edit! */
package spacy.pipeline.dep_parser;
@:pythonImport("spacy.pipeline.dep_parser") extern class Dep_parser_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_PARSER_MODEL : Dynamic;
	static public var DELIMITER : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	/**
		__pyx_unpickle_DependencyParser(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_DependencyParser(__pyx_type:Dynamic, __pyx_checksum:Dynamic, __pyx_state:Dynamic):Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var default_model_config : Dynamic;
	/**
		make_beam_parser(nlp: Language, name: str, model: Model, moves: Optional[TransitionSystem], update_with_oracle_cut_size: int, learn_tokens: bool, min_action_freq: int, beam_width: int, beam_density: float, beam_update_prob: float, scorer: Optional[Callable])
		Create a transition-based DependencyParser component that uses beam-search.
		    The dependency parser jointly learns sentence segmentation and labelled
		    dependency parsing, and can optionally learn to merge tokens that had been
		    over-segmented by the tokenizer.
		
		    The parser uses a variant of the non-monotonic arc-eager transition-system
		    described by Honnibal and Johnson (2014), with the addition of a "break"
		    transition to perform the sentence segmentation. Nivre's pseudo-projective
		    dependency transformation is used to allow the parser to predict
		    non-projective parses.
		
		    The parser is trained using a global objective. That is, it learns to assign
		    probabilities to whole parses.
		
		    model (Model): The model for the transition-based parser. The model needs
		        to have a specific substructure of named components --- see the
		        spacy.ml.tb_framework.TransitionModel for details.
		    moves (Optional[TransitionSystem]): This defines how the parse-state is created,
		        updated and evaluated. If 'moves' is None, a new instance is
		        created with `self.TransitionSystem()`. Defaults to `None`.
		    update_with_oracle_cut_size (int): During training, cut long sequences into
		        shorter segments by creating intermediate states based on the gold-standard
		        history. The model is not very sensitive to this parameter, so you usually
		        won't need to change it. 100 is a good default.
		    beam_width (int): The number of candidate analyses to maintain.
		    beam_density (float): The minimum ratio between the scores of the first and
		        last candidates in the beam. This allows the parser to avoid exploring
		        candidates that are too far behind. This is mostly intended to improve
		        efficiency, but it can also improve accuracy as deeper search is not
		        always better.
		    beam_update_prob (float): The chance of making a beam update, instead of a
		        greedy update. Greedy updates are an approximation for the beam updates,
		        and are faster to compute.
		    learn_tokens (bool): Whether to learn to merge subtokens that are split
		        relative to the gold standard. Experimental.
		    min_action_freq (int): The minimum frequency of labelled actions to retain.
		        Rarer labelled actions have their label backed-off to "dep". While this
		        primarily affects the label accuracy, it can also affect the attachment
		        structure, as the labels are used to represent the pseudo-projectivity
		        transformation.
		    
	**/
	static public function make_beam_parser(nlp:Dynamic, name:Dynamic, model:Dynamic, moves:Dynamic, update_with_oracle_cut_size:Dynamic, learn_tokens:Dynamic, min_action_freq:Dynamic, beam_width:Dynamic, beam_density:Dynamic, beam_update_prob:Dynamic, scorer:Dynamic):Dynamic;
	/**
		make_parser(nlp: Language, name: str, model: Model, moves: Optional[TransitionSystem], update_with_oracle_cut_size: int, learn_tokens: bool, min_action_freq: int, scorer: Optional[Callable])
		Create a transition-based DependencyParser component. The dependency parser
		    jointly learns sentence segmentation and labelled dependency parsing, and can
		    optionally learn to merge tokens that had been over-segmented by the tokenizer.
		
		    The parser uses a variant of the non-monotonic arc-eager transition-system
		    described by Honnibal and Johnson (2014), with the addition of a "break"
		    transition to perform the sentence segmentation. Nivre's pseudo-projective
		    dependency transformation is used to allow the parser to predict
		    non-projective parses.
		
		    The parser is trained using an imitation learning objective. The parser follows
		    the actions predicted by the current weights, and at each state, determines
		    which actions are compatible with the optimal parse that could be reached
		    from the current state. The weights such that the scores assigned to the
		    set of optimal actions is increased, while scores assigned to other
		    actions are decreased. Note that more than one action may be optimal for
		    a given state.
		
		    model (Model): The model for the transition-based parser. The model needs
		        to have a specific substructure of named components --- see the
		        spacy.ml.tb_framework.TransitionModel for details.
		    moves (Optional[TransitionSystem]): This defines how the parse-state is created,
		        updated and evaluated. If 'moves' is None, a new instance is
		        created with `self.TransitionSystem()`. Defaults to `None`.
		    update_with_oracle_cut_size (int): During training, cut long sequences into
		        shorter segments by creating intermediate states based on the gold-standard
		        history. The model is not very sensitive to this parameter, so you usually
		        won't need to change it. 100 is a good default.
		    learn_tokens (bool): Whether to learn to merge subtokens that are split
		        relative to the gold standard. Experimental.
		    min_action_freq (int): The minimum frequency of labelled actions to retain.
		        Rarer labelled actions have their label backed-off to "dep". While this
		        primarily affects the label accuracy, it can also affect the attachment
		        structure, as the labels are used to represent the pseudo-projectivity
		        transformation.
		    scorer (Optional[Callable]): The scoring method.
		    
	**/
	static public function make_parser(nlp:Dynamic, name:Dynamic, model:Dynamic, moves:Dynamic, update_with_oracle_cut_size:Dynamic, learn_tokens:Dynamic, min_action_freq:Dynamic, scorer:Dynamic):Dynamic;
	/**
		make_parser_scorer()
	**/
	static public function make_parser_scorer():Dynamic;
	/**
		Merge subtokens into a single token.
		
		doc (Doc): The Doc object.
		label (str): The subtoken dependency label.
		RETURNS (Doc): The Doc object with merged subtokens.
		
		DOCS: https://spacy.io/api/pipeline-functions#merge_subtokens
	**/
	static public function merge_subtokens(doc:Dynamic, ?label:Dynamic):Dynamic;
	/**
		parser_score(examples, **kwargs)
		Score a batch of examples.
		
		    examples (Iterable[Example]): The examples to score.
		    RETURNS (Dict[str, Any]): The scores, produced by Scorer.score_spans
		        and Scorer.score_deps.
		
		    DOCS: https://spacy.io/api/dependencyparser#score
		    
	**/
	static public function parser_score(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}