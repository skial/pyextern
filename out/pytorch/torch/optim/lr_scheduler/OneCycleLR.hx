/* This file is generated, do not edit! */
package torch.optim.lr_scheduler;
@:pythonImport("torch.optim.lr_scheduler", "OneCycleLR") extern class OneCycleLR {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(optimizer:Dynamic, max_lr:Dynamic, ?total_steps:Dynamic, ?epochs:Dynamic, ?steps_per_epoch:Dynamic, ?pct_start:Dynamic, ?anneal_strategy:Dynamic, ?cycle_momentum:Dynamic, ?base_momentum:Dynamic, ?max_momentum:Dynamic, ?div_factor:Dynamic, ?final_div_factor:Dynamic, ?three_phase:Dynamic, ?last_epoch:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(optimizer:Dynamic, max_lr:Dynamic, ?total_steps:Dynamic, ?epochs:Dynamic, ?steps_per_epoch:Dynamic, ?pct_start:Dynamic, ?anneal_strategy:Dynamic, ?cycle_momentum:Dynamic, ?base_momentum:Dynamic, ?max_momentum:Dynamic, ?div_factor:Dynamic, ?final_div_factor:Dynamic, ?three_phase:Dynamic, ?last_epoch:Dynamic, ?verbose:Dynamic):Void;
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
		Cosine anneal from `start` to `end` as pct goes from 0.0 to 1.0.
	**/
	public function _annealing_cos(start:Dynamic, end:Dynamic, pct:Dynamic):Dynamic;
	/**
		Linearly anneal from `start` to `end` as pct goes from 0.0 to 1.0.
	**/
	public function _annealing_linear(start:Dynamic, end:Dynamic, pct:Dynamic):Dynamic;
	/**
		Return correctly formatted lr/momentum for each param group.
	**/
	public function _format_param(name:Dynamic, optimizer:Dynamic, param:Dynamic):Dynamic;
	/**
		Return last computed learning rate by current scheduler.
		        
	**/
	public function get_last_lr():Dynamic;
	public function get_lr():Dynamic;
	/**
		Loads the schedulers state.
		
		Args:
		    state_dict (dict): scheduler state. Should be an object returned
		        from a call to :meth:`state_dict`.
	**/
	public function load_state_dict(state_dict:Dynamic):Dynamic;
	/**
		Display the current learning rate.
		        
	**/
	public function print_lr(is_verbose:Dynamic, group:Dynamic, lr:Dynamic, ?epoch:Dynamic):Dynamic;
	/**
		Returns the state of the scheduler as a :class:`dict`.
		
		It contains an entry for every variable in self.__dict__ which
		is not the optimizer.
	**/
	public function state_dict():Dynamic;
	public function step(?epoch:Dynamic):Dynamic;
}