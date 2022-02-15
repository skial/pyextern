/* This file is generated, do not edit! */
package spacy.pipeline._parser_internals._beam_utils;
@:pythonImport("spacy.pipeline._parser_internals._beam_utils") extern class _Beam_utils_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	/**
		__pyx_unpickle_BeamBatch(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_BeamBatch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		collect_states(beams, docs)
	**/
	static public function collect_states(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_gradient(nr_class, beam_maps, histories, losses)
		The global model assigns a loss to each parse. The beam scores
		    are additive, so the same gradient is applied to each action
		    in the history. This gives the gradient of a single *action*
		    for a beam state -- so we have "the gradient of loss for taking
		    action i given history H."
		
		    Histories: Each history is a list of actions
		    Each candidate has a history
		    Each beam has multiple candidates
		    Each batch has multiple beams
		    So history is list of lists of lists of ints
		    
	**/
	static public function get_gradient(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_unique_states(pbeams, gbeams)
	**/
	static public function get_unique_states(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		update_beam(TransitionSystem moves, states, golds, model, int width, beam_density=0.0)
	**/
	static public function update_beam(args:haxe.extern.Rest<Dynamic>):Dynamic;
}