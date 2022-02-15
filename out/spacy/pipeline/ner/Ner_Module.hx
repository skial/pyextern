/* This file is generated, do not edit! */
package spacy.pipeline.ner;
@:pythonImport("spacy.pipeline.ner") extern class Ner_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_NER_MODEL : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	/**
		__pyx_unpickle_EntityRecognizer(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_EntityRecognizer(__pyx_type:Dynamic, __pyx_checksum:Dynamic, __pyx_state:Dynamic):Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var default_model_config : Dynamic;
	/**
		Compute micro-PRF and per-entity PRF scores for a sequence of examples.
	**/
	static public function get_ner_prf(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		make_beam_ner(nlp: Language, name: str, model: Model, moves: Optional[TransitionSystem], update_with_oracle_cut_size: int, beam_width: int, beam_density: float, beam_update_prob: float, incorrect_spans_key: Optional[str], scorer: Optional[Callable])
		Create a transition-based EntityRecognizer component that uses beam-search.
		    The entity recognizer identifies non-overlapping labelled spans of tokens.
		
		    The transition-based algorithm used encodes certain assumptions that are
		    effective for "traditional" named entity recognition tasks, but may not be
		    a good fit for every span identification problem. Specifically, the loss
		    function optimizes for whole entity accuracy, so if your inter-annotator
		    agreement on boundary tokens is low, the component will likely perform poorly
		    on your problem. The transition-based algorithm also assumes that the most
		    decisive information about your entities will be close to their initial tokens.
		    If your entities are long and characterised by tokens in their middle, the
		    component will likely do poorly on your task.
		
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
		    incorrect_spans_key (Optional[str]): Optional key into span groups of
		        entities known to be non-entities.
		    scorer (Optional[Callable]): The scoring method.
		    
	**/
	static public function make_beam_ner(nlp:Dynamic, name:Dynamic, model:Dynamic, moves:Dynamic, update_with_oracle_cut_size:Dynamic, beam_width:Dynamic, beam_density:Dynamic, beam_update_prob:Dynamic, incorrect_spans_key:Dynamic, scorer:Dynamic):Dynamic;
	/**
		make_ner(nlp: Language, name: str, model: Model, moves: Optional[TransitionSystem], update_with_oracle_cut_size: int, incorrect_spans_key: Optional[str], scorer: Optional[Callable])
		Create a transition-based EntityRecognizer component. The entity recognizer
		    identifies non-overlapping labelled spans of tokens.
		
		    The transition-based algorithm used encodes certain assumptions that are
		    effective for "traditional" named entity recognition tasks, but may not be
		    a good fit for every span identification problem. Specifically, the loss
		    function optimizes for whole entity accuracy, so if your inter-annotator
		    agreement on boundary tokens is low, the component will likely perform poorly
		    on your problem. The transition-based algorithm also assumes that the most
		    decisive information about your entities will be close to their initial tokens.
		    If your entities are long and characterised by tokens in their middle, the
		    component will likely do poorly on your task.
		
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
		    incorrect_spans_key (Optional[str]): Identifies spans that are known
		        to be incorrect entity annotations. The incorrect entity annotations
		        can be stored in the span group, under this key.
		    scorer (Optional[Callable]): The scoring method.
		    
	**/
	static public function make_ner(nlp:Dynamic, name:Dynamic, model:Dynamic, moves:Dynamic, update_with_oracle_cut_size:Dynamic, incorrect_spans_key:Dynamic, scorer:Dynamic):Dynamic;
	/**
		make_ner_scorer()
	**/
	static public function make_ner_scorer():Dynamic;
	/**
		ner_score(examples, **kwargs)
	**/
	static public function ner_score(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}