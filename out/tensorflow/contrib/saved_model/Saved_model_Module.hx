/* This file is generated, do not edit! */
package tensorflow.contrib.saved_model;
@:pythonImport("tensorflow.contrib.saved_model") extern class Saved_model_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Utility function to get a SignatureDef protocol buffer by its key.
		
		Args:
		  meta_graph_def: MetaGraphDef protocol buffer with the SignatureDefMap to
		    look up.
		  signature_def_key: Key of the SignatureDef protocol buffer to find in the
		    SignatureDefMap.
		
		Returns:
		  A SignatureDef protocol buffer corresponding to the supplied key, if it
		  exists.
		
		Raises:
		  ValueError: If no entry corresponding to the supplied key is found in the
		  SignatureDefMap of the MetaGraphDef.
	**/
	static public function get_signature_def_by_key(meta_graph_def:Dynamic, signature_def_key:Dynamic):Dynamic;
}