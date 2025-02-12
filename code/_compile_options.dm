//#define TESTING //By using the testing("message") proc you can create debug-feedback for people with this
								//uncommented, but not visible in the release version)

//#define DATUMVAR_DEBUGGING_MODE //Enables the ability to cache datum vars and retrieve later for debugging which vars changed.

// Comment this out if you are debugging problems that might be obscured by custom error handling in world/Error
#ifdef DEBUG
#define USE_CUSTOM_ERROR_HANDLER
#endif

#ifdef TESTING
#define DATUMVAR_DEBUGGING_MODE

///Used to find the sources of harddels, quite laggy, don't be surpised if it freezes your client for a good while
//#define REFERENCE_TRACKING
#ifdef REFERENCE_TRACKING

///Used for doing dry runs of the reference finder, to test for feature completeness
///Slightly slower, higher in memory. Just not optimal
//#define REFERENCE_TRACKING_DEBUG

///Run a lookup on things hard deleting by default.
//#define GC_FAILURE_HARD_LOOKUP
#ifdef GC_FAILURE_HARD_LOOKUP
///Don't stop when searching, go till you're totally done
#define FIND_REF_NO_CHECK_TICK
#endif //ifdef GC_FAILURE_HARD_LOOKUP

#endif //ifdef REFERENCE_TRACKING

//#define VISUALIZE_ACTIVE_TURFS //Highlights atmos active turfs in green
#endif //ifdef TESTING

/// If this is uncommented, we set up the ref tracker to be used in a live environment
/// And to log events to [log_dir]/harddels.log
//#define REFERENCE_DOING_IT_LIVE
#ifdef REFERENCE_DOING_IT_LIVE
// compile the backend
#define REFERENCE_TRACKING
// actually look for refs
#define GC_FAILURE_HARD_LOOKUP
#endif // REFERENCE_DOING_IT_LIVE

//#define UNIT_TESTS //Enables unit tests via TEST_RUN_PARAMETER
//#define ALL_TESTS //Enables all tests, including the ones that take a long time to run

#ifndef PRELOAD_RSC				//set to:
#define PRELOAD_RSC 0			//	0 to allow using external resources or on-demand behaviour;
#endif							//	1 to use the default behaviour;
								//	2 for preloading absolutely everything;

/// If this is uncommented, Autowiki will generate edits and shut down the server.
/// Prefer the autowiki build target instead.
// #define AUTOWIKI

//Log the full sendmaps profile on 514.1556+, any earlier and we get bugs or it not existing
#if DM_VERSION >= 514 && DM_BUILD >= 1556
#define SENDMAPS_PROFILE
#endif

//Additional code for the above flags.
#ifdef TESTING
#warn compiling in TESTING mode. testing() debug messages will be visible.
#endif

#ifdef CIBUILDING
#define UNIT_TESTS
#endif

#ifdef CITESTING
#define TESTING
#endif

#ifdef UNIT_TESTS
//Hard del testing defines
#define REFERENCE_TRACKING
#define REFERENCE_TRACKING_DEBUG
#define FIND_REF_NO_CHECK_TICK
#define GC_FAILURE_HARD_LOOKUP
#endif

#ifdef ALL_TESTS
#define BASIC_TESTS
#define CREATE_AND_DESTROY_TEST
#define PLANET_GEN_TEST
#define RUIN_PLACEMENT_TEST
#define SHIP_PLACEMENT_TEST
#endif

// A reasonable number of maximum overlays an object needs
// If you think you need more, rethink it
#define MAX_ATOM_OVERLAYS 100

#define AUXMOS (world.system_type == MS_WINDOWS ? "auxmos.dll" : __detect_auxmos())

/proc/__detect_auxmos()
	var/static/auxmos_path
	if(!auxmos_path)
		if (fexists("./libauxmos.so"))
			auxmos_path = "./libauxmos.so"
		else if (fexists("[world.GetConfig("env", "HOME")]/.byond/bin/libauxmos.so"))
			auxmos_path = "[world.GetConfig("env", "HOME")]/.byond/bin/libauxmos.so"
		else
			CRASH("Could not find libauxmos.so")
	return auxmos_path
