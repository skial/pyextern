/* This file is generated, do not edit! */
package spacy.cli.validate;
@:pythonImport("spacy.cli.validate") extern class Validate_Module {
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
	static public function app(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		List all model packages currently installed in the environment.
		
		RETURNS (List[str]): The string names of the models.
	**/
	static public function get_installed_models():Dynamic;
	/**
		Get the major + minor version (without patch or prerelease identifiers).
		
		version (str): The version.
		RETURNS (str): The major + minor version or None if version is invalid.
	**/
	static public function get_minor_version(version:Dynamic):Dynamic;
	/**
		Get model meta.json from a directory path and validate its contents.
		
		path (str / Path): Path to model directory.
		RETURNS (Dict[str, Any]): The model's meta data.
	**/
	static public function get_model_meta(path:Dynamic):Dynamic;
	static public function get_model_pkgs(?silent:Dynamic):Dynamic;
	/**
		Get the path to an installed package.
		
		name (str): Package name.
		RETURNS (Path): Path to installed package.
	**/
	static public function get_package_path(name:Dynamic):Dynamic;
	/**
		Get the version of an installed package. Typically used to get model
		package versions.
		
		name (str): The name of the installed Python package.
		RETURNS (str / None): The version or None if package not installed.
	**/
	static public function get_package_version(name:Dynamic):Dynamic;
	/**
		Check if a version (e.g. "2.0.0") is compatible given a version
		constraint (e.g. ">=1.9.0,<2.2.1"). If the constraint is a specific version,
		it's interpreted as =={version}.
		
		version (str): The version to check.
		constraint (str): The constraint string.
		prereleases (bool): Whether to allow prereleases. If set to False,
		    prerelease versions will be considered incompatible.
		RETURNS (bool / None): Whether the version is compatible, or None if the
		    version or constraint are invalid.
	**/
	static public function is_compatible_version(version:Dynamic, constraint:Dynamic, ?prereleases:Dynamic):Dynamic;
	static public var msg : Dynamic;
	/**
		Hack to reformat old versions ending on '-alpha' to match pip format.
	**/
	static public function reformat_version(version:Dynamic):Dynamic;
	static public function validate():Dynamic;
	/**
		Validate the currently installed pipeline packages and spaCy version. Checks
		if the installed packages are compatible and shows upgrade instructions if
		available. Should be run after `pip install -U spacy`.
		
		DOCS: https://spacy.io/api/cli#validate
	**/
	static public function validate_cli():Dynamic;
}