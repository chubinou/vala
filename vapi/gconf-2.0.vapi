/* gconf-2.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GConf", lower_case_cprefix = "gconf_")]
namespace GConf {
	[Compact]
	[CCode (ref_function = "gconf_change_set_ref", ref_function_void = true, unref_function = "gconf_change_set_unref", cheader_filename = "gconf/gconf.h")]
	public class ChangeSet {
		public bool check_value (string key, out unowned GConf.Value value_retloc);
		public void clear ();
		public void @foreach (GConf.ChangeSetForeachFunc func);
		public void* get_user_data ();
		[CCode (has_construct_function = false)]
		public ChangeSet ();
		public void remove (string key);
		public void set (string key, GConf.Value value);
		public void set_bool (string key, bool val);
		public void set_float (string key, double val);
		public void set_int (string key, int val);
		public void set_list (string key, GConf.ValueType list_type, GLib.SList list);
		public void set_nocopy (string key, GConf.Value value);
		public void set_pair (string key, GConf.ValueType car_type, GConf.ValueType cdr_type, void* address_of_car, void* address_of_cdr);
		public void set_schema (string key, GConf.Schema val);
		public void set_string (string key, string val);
		public void set_user_data (void* data, GLib.DestroyNotify dnotify);
		public uint size ();
		public void unset (string key);
	}
	[CCode (cheader_filename = "gconf/gconf-client.h")]
	public class Client : GLib.Object {
		public weak GLib.HashTable cache_hash;
		public weak GLib.HashTable dir_hash;
		public weak GConf.Engine engine;
		public GConf.ClientErrorHandlingMode error_mode;
		public weak GConf.Listeners listeners;
		public uint notify_handler;
		public weak GLib.SList notify_list;
		public void* pad1;
		public int pad2;
		public int pending_notify_count;
		public void add_dir (string dir, GConf.ClientPreloadType preload) throws GLib.Error;
		public unowned GLib.SList all_dirs (string dir) throws GLib.Error;
		public unowned GLib.SList all_entries (string dir) throws GLib.Error;
		public unowned GConf.ChangeSet change_set_from_current (...) throws GLib.Error;
		public unowned GConf.ChangeSet change_set_from_currentv (string keys) throws GLib.Error;
		public void clear_cache ();
		public bool commit_change_set (GConf.ChangeSet cs, bool remove_committed) throws GLib.Error;
		public bool dir_exists (string dir) throws GLib.Error;
		public unowned GConf.Value get (string key) throws GLib.Error;
		public bool get_bool (string key) throws GLib.Error;
		public static unowned GConf.Client get_default ();
		public unowned GConf.Value get_default_from_schema (string key) throws GLib.Error;
		public unowned GConf.Entry get_entry (string key, string locale, bool use_schema_default) throws GLib.Error;
		public double get_float (string key) throws GLib.Error;
		public static unowned GConf.Client get_for_engine (GConf.Engine engine);
		public int get_int (string key) throws GLib.Error;
		public unowned GLib.SList get_list (string key, GConf.ValueType list_type) throws GLib.Error;
		public bool get_pair (string key, GConf.ValueType car_type, GConf.ValueType cdr_type, void* car_retloc, void* cdr_retloc) throws GLib.Error;
		public unowned GConf.Schema get_schema (string key) throws GLib.Error;
		public unowned string get_string (string key) throws GLib.Error;
		public unowned GConf.Value get_without_default (string key) throws GLib.Error;
		public bool key_is_writable (string key) throws GLib.Error;
		public void notify (string key);
		public uint notify_add (string namespace_section, owned GConf.ClientNotifyFunc func) throws GLib.Error;
		public void notify_remove (uint cnxn);
		public void preload (string dirname, GConf.ClientPreloadType type) throws GLib.Error;
		public bool recursive_unset (string key, GConf.UnsetFlags flags) throws GLib.Error;
		public void remove_dir (string dir) throws GLib.Error;
		public unowned GConf.ChangeSet reverse_change_set (GConf.ChangeSet cs) throws GLib.Error;
		public void set (string key, GConf.Value val) throws GLib.Error;
		public bool set_bool (string key, bool val) throws GLib.Error;
		public void set_error_handling (GConf.ClientErrorHandlingMode mode);
		public bool set_float (string key, double val) throws GLib.Error;
		public static void set_global_default_error_handler (GConf.ClientErrorHandlerFunc func);
		public bool set_int (string key, int val) throws GLib.Error;
		public bool set_list (string key, GConf.ValueType list_type, GLib.SList list) throws GLib.Error;
		public bool set_pair (string key, GConf.ValueType car_type, GConf.ValueType cdr_type, void* address_of_car, void* address_of_cdr) throws GLib.Error;
		public bool set_schema (string key, GConf.Schema val) throws GLib.Error;
		public bool set_string (string key, string val) throws GLib.Error;
		public void suggest_sync () throws GLib.Error;
		public bool unset (string key) throws GLib.Error;
		[HasEmitter]
		public virtual signal void error (void* error);
		[HasEmitter]
		public virtual signal void unreturned_error (void* error);
		[HasEmitter]
		public virtual signal void value_changed (string key, void* value);
	}
	[Compact]
	[CCode (ref_function = "gconf_engine_ref", ref_function_void = true, unref_function = "gconf_engine_unref", cheader_filename = "gconf/gconf.h")]
	public class Engine {
		public unowned GLib.SList all_dirs (string dir) throws GLib.Error;
		public unowned GLib.SList all_entries (string dir) throws GLib.Error;
		public bool associate_schema (string key, string schema_key) throws GLib.Error;
		public unowned GConf.ChangeSet change_set_from_current (...) throws GLib.Error;
		public unowned GConf.ChangeSet change_set_from_currentv (string keys) throws GLib.Error;
		public bool commit_change_set (GConf.ChangeSet cs, bool remove_committed) throws GLib.Error;
		public bool dir_exists (string dir) throws GLib.Error;
		public unowned GConf.Value get (string key) throws GLib.Error;
		public bool get_bool (string key) throws GLib.Error;
		public static unowned GConf.Engine get_default ();
		public unowned GConf.Value get_default_from_schema (string key) throws GLib.Error;
		public unowned GConf.Entry get_entry (string key, string locale, bool use_schema_default) throws GLib.Error;
		public double get_float (string key) throws GLib.Error;
		public static unowned GConf.Engine get_for_address (string address) throws GLib.Error;
		public static unowned GConf.Engine get_for_addresses (GLib.SList addresses) throws GLib.Error;
		public int get_int (string key) throws GLib.Error;
		public unowned GLib.SList get_list (string key, GConf.ValueType list_type) throws GLib.Error;
		public bool get_pair (string key, GConf.ValueType car_type, GConf.ValueType cdr_type, void* car_retloc, void* cdr_retloc) throws GLib.Error;
		public unowned GConf.Schema get_schema (string key) throws GLib.Error;
		public unowned string get_string (string key) throws GLib.Error;
		public void* get_user_data ();
		public unowned GConf.Value get_with_locale (string key, string locale) throws GLib.Error;
		public unowned GConf.Value get_without_default (string key) throws GLib.Error;
		public bool key_is_writable (string key) throws GLib.Error;
		public uint notify_add (string namespace_section, GConf.NotifyFunc func) throws GLib.Error;
		public void notify_remove (uint cnxn);
		public void remove_dir (string dir) throws GLib.Error;
		public unowned GConf.ChangeSet reverse_change_set (GConf.ChangeSet cs) throws GLib.Error;
		public bool set (string key, GConf.Value value) throws GLib.Error;
		public bool set_bool (string key, bool val) throws GLib.Error;
		public bool set_float (string key, double val) throws GLib.Error;
		public bool set_int (string key, int val) throws GLib.Error;
		public bool set_list (string key, GConf.ValueType list_type, GLib.SList list) throws GLib.Error;
		public bool set_pair (string key, GConf.ValueType car_type, GConf.ValueType cdr_type, void* address_of_car, void* address_of_cdr) throws GLib.Error;
		public bool set_schema (string key, GConf.Schema val) throws GLib.Error;
		public bool set_string (string key, string val) throws GLib.Error;
		public void set_user_data (void* data, GLib.DestroyNotify dnotify);
		public void suggest_sync () throws GLib.Error;
		public bool unset (string key) throws GLib.Error;
	}
	[Compact]
	[CCode (ref_function = "gconf_entry_ref", ref_function_void = true, unref_function = "gconf_entry_unref", cheader_filename = "gconf/gconf.h")]
	public class Entry {
		public weak string key;
		public weak GConf.Value value;
		public unowned GConf.Entry copy ();
		public bool equal (GConf.Entry b);
		public bool get_is_default ();
		public bool get_is_writable ();
		public unowned string get_key ();
		public unowned string get_schema_name ();
		public unowned GConf.Value get_value ();
		[CCode (has_construct_function = false)]
		public Entry (string key, GConf.Value val);
		[CCode (has_construct_function = false)]
		public Entry.nocopy (string key, GConf.Value val);
		public void set_is_default (bool is_default);
		public void set_is_writable (bool is_writable);
		public void set_schema_name (string name);
		public void set_value (GConf.Value val);
		public void set_value_nocopy (GConf.Value val);
		public unowned GConf.Value steal_value ();
	}
	[Compact]
	[CCode (cheader_filename = "gconf/gconf.h")]
	public class EnumStringPair {
		public int enum_value;
		public weak string str;
	}
	[Compact]
	[CCode (cheader_filename = "gconf/gconf.h")]
	public class Listeners {
		public uint add (string listen_point, void* listener_data, GLib.FreeFunc destroy_notify);
		public uint count ();
		public void @foreach (GConf.ListenersForeach callback);
		public bool get_data (uint cnxn_id, void* listener_data_p, string location_p);
		[CCode (has_construct_function = false)]
		public Listeners ();
		public void notify (string all_above, GConf.ListenersCallback callback);
		public void remove (uint cnxn_id);
		public void remove_if (GConf.ListenersPredicate predicate);
	}
	[Compact]
	[CCode (cheader_filename = "gconf/gconf.h")]
	public class MetaInfo {
		public GLib.Time mod_time;
		public weak string mod_user;
		public weak string schema;
		[CCode (cname = "gconf_meta_info_mod_time")]
		public GLib.Time get_mod_time ();
		public unowned string get_mod_user ();
		public unowned string get_schema ();
		[CCode (has_construct_function = false)]
		public MetaInfo ();
		public void set_mod_time (GLib.Time mod_time);
		public void set_mod_user (string mod_user);
		public void set_schema (string schema_name);
	}
	[Compact]
	[CCode (copy_function = "gconf_schema_copy", cheader_filename = "gconf/gconf.h")]
	public class Schema {
		public unowned GConf.Schema copy ();
		public GConf.ValueType get_car_type ();
		public GConf.ValueType get_cdr_type ();
		public unowned GConf.Value get_default_value ();
		public GConf.ValueType get_list_type ();
		public unowned string get_locale ();
		public unowned string get_long_desc ();
		public unowned string get_owner ();
		public unowned string get_short_desc ();
		[CCode (has_construct_function = false)]
		public Schema ();
		public void set_car_type (GConf.ValueType type);
		public void set_cdr_type (GConf.ValueType type);
		public void set_default_value (GConf.Value val);
		public void set_default_value_nocopy (GConf.Value val);
		public void set_list_type (GConf.ValueType type);
		public void set_locale (string locale);
		public void set_long_desc (string desc);
		public void set_owner (string owner);
		public void set_short_desc (string desc);
		public void set_type (GConf.ValueType type);
	}
	[Compact]
	[CCode (copy_function = "gconf_value_copy", cheader_filename = "gconf/gconf.h")]
	public class Value {
		public GConf.ValueType type;
		public int compare (GConf.Value value_b);
		public unowned GConf.Value copy ();
		[CCode (has_construct_function = false)]
		public Value.from_string (GConf.ValueType type, string str) throws GLib.Error;
		public bool get_bool ();
		public unowned GConf.Value get_car ();
		public unowned GConf.Value get_cdr ();
		public double get_float ();
		public int get_int ();
		public unowned GLib.SList get_list ();
		public GConf.ValueType get_list_type ();
		public unowned GConf.Schema get_schema ();
		public unowned string get_string ();
		[CCode (has_construct_function = false)]
		public Value (GConf.ValueType type);
		public void set_bool (bool the_bool);
		public void set_car (GConf.Value car);
		public void set_car_nocopy (GConf.Value car);
		public void set_cdr (GConf.Value cdr);
		public void set_cdr_nocopy (GConf.Value cdr);
		public void set_float (double the_float);
		public void set_int (int the_int);
		public void set_list (GLib.SList list);
		public void set_list_nocopy (GLib.SList list);
		public void set_list_type (GConf.ValueType type);
		public void set_schema (GConf.Schema sc);
		public void set_schema_nocopy (GConf.Schema sc);
		public void set_string (string the_str);
		public unowned string to_string ();
	}
	[CCode (cprefix = "GCONF_CLIENT_HANDLE_", has_type_id = "0", cheader_filename = "gconf/gconf.h")]
	public enum ClientErrorHandlingMode {
		NONE,
		UNRETURNED,
		ALL
	}
	[CCode (cprefix = "GCONF_CLIENT_PRELOAD_", has_type_id = "0", cheader_filename = "gconf/gconf.h")]
	public enum ClientPreloadType {
		NONE,
		ONELEVEL,
		RECURSIVE
	}
	[CCode (cprefix = "GCONF_ERROR_", has_type_id = "0", cheader_filename = "gconf/gconf.h")]
	public enum Error {
		SUCCESS,
		FAILED,
		NO_SERVER,
		NO_PERMISSION,
		BAD_ADDRESS,
		BAD_KEY,
		PARSE_ERROR,
		CORRUPT,
		TYPE_MISMATCH,
		IS_DIR,
		IS_KEY,
		OVERRIDDEN,
		OAF_ERROR,
		LOCAL_ENGINE,
		LOCK_FAILED,
		NO_WRITABLE_DATABASE,
		IN_SHUTDOWN
	}
	[CCode (cprefix = "GCONF_UNSET_INCLUDING_SCHEMA_", has_type_id = "0", cheader_filename = "gconf/gconf.h")]
	[Flags]
	public enum UnsetFlags {
		NAMES
	}
	[CCode (cprefix = "GCONF_VALUE_", has_type_id = "0", cheader_filename = "gconf/gconf.h")]
	public enum ValueType {
		INVALID,
		STRING,
		INT,
		FLOAT,
		BOOL,
		SCHEMA,
		LIST,
		PAIR
	}
	[CCode (cheader_filename = "gconf/gconf.h")]
	public delegate void ChangeSetForeachFunc (GConf.ChangeSet cs, string key, GConf.Value value);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static delegate void ClientErrorHandlerFunc (GConf.Client client, GLib.Error error);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public delegate void ClientNotifyFunc (GConf.Client client, uint cnxn_id, GConf.Entry entry);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public delegate void ListenersCallback (GConf.Listeners listeners, string all_above_key, uint cnxn_id, void* listener_data);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public delegate void ListenersForeach (string location, uint cnxn_id, void* listener_data);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public delegate bool ListenersPredicate (string location, uint cnxn_id, void* listener_data);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public delegate void NotifyFunc (GConf.Engine conf, uint cnxn_id, GConf.Entry entry);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static unowned string concat_dir_and_key (string dir, string key);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static int debug_shutdown ();
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static unowned string enum_to_string (GConf.EnumStringPair[] lookup_table, int enum_value);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static GLib.Quark error_quark ();
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static unowned string escape_key (string arbitrary_text, int len);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static bool init (int argc, out unowned string argv) throws GLib.Error;
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static bool is_initialized ();
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static bool key_is_below (string above, string below);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static bool string_to_enum (GConf.EnumStringPair[] lookup_table, string str, int enum_value_retloc);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static unowned string unescape_key (string escaped_key, int len);
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static unowned string unique_key ();
	[CCode (cheader_filename = "gconf/gconf.h")]
	public static bool valid_key (string key, string why_invalid);
}
