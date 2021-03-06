write.CS_4.0 <- function(BATCH,
                         OUT,
                         HABITAT,
                         LOCATION.FILE,
                         CONNECTION,
                         CURRENT.MAP = "write_cur_maps = False",
                         MAP = "write_cum_cur_map_only = False",
                         PARALLELIZE = FALSE,
                         CORES = NULL,
                         PAIRS_TO_INCLUDE,
                         PAIRS){
  if(PARALLELIZE == TRUE && !is.null(CORES)) {
    PARALLELIZE = "parallelize = True"
    CORES = paste0("max_parallel = ", CORES)
  } else {
    PARALLELIZE = "parallelize = False"
    CORES = "max_parallel = 0"
  }
  
  sink(BATCH)
  cat("[Options for advanced mode]")
  cat("\n")
  cat("ground_file_is_resistances = True")
  cat("\n")
  cat("remove_src_or_gnd = rmvsrc")
  cat("\n")
  cat("ground_file = (Browse for a raster mask file)")
  cat("\n")
  cat("use_unit_currents = False")
  cat("\n")
  cat("source_file = (Browse for a raster mask file)")
  cat("\n")
  cat("use_direct_grounds = False")
  cat("\n")
  cat("\n")
  cat("[Mask file]")
  cat("\n")
  cat("mask_file = (Browse for a raster mask file)")
  cat("\n")
  cat("use_mask = False")
  cat("\n")
  cat("\n")
  cat("[Calculation options]")
  cat("\n")
  cat("low_memory_mode = False")
  cat("\n")
  cat(PARALLELIZE)
  cat("\n")
  cat(CORES)
  cat("\n")
  cat("solver = cg+amg")
  cat("\n")
  cat("print_timings = False")
  cat("\n")
  cat("preemptive_memory_release = False")
  cat("\n")
  cat("print_rusages = False")
  cat("\n")
  cat("\n")
  cat("[Short circuit regions (aka polygons)]")
  cat("\n")
  cat("polygon_file = (Browse for a short-circuit region file)")
  cat("\n")
  cat("use_polygons = False")
  cat("\n")
  cat("\n")
  cat("[Options for one-to-all and all-to-one modes]")
  cat("\n")
  cat("use_variable_source_strengths = False")
  cat("\n")
  cat("variable_source_file = (Browse for a short-circuit region file)")
  cat("\n")
  cat("\n")
  cat("[Output options]")
  cat("\n")
  cat("set_null_currents_to_nodata = True")
  cat("\n")
  cat("set_focal_node_currents_to_zero = False")
  cat("\n")
  cat("set_null_voltages_to_nodata = True")
  cat("\n")
  cat("compress_grids = False")
  cat("\n")
  cat("write_volt_maps = False")
  cat("\n")
  cat(CURRENT.MAP)
  cat("\n")
  cat(OUT)
  cat("\n")
  cat(MAP)
  cat("\n")
  cat("log_transform_maps = False")
  cat("write_max_cur_maps = False")
  cat("\n")
  cat("\n")
  cat("[Version]")
  cat("\n")
  cat("version = 4.0.5")
  cat("\n")
  cat("\n")
  cat("[Options for reclassification of habitat data]")
  cat("\n")
  cat("reclass_file = (Browse for file with reclassification data)")
  cat("\n")
  cat("use_reclass_table = False")
  cat("\n")
  cat("\n")
  cat("[Logging Options]")
  cat("\n")
  cat("log_level = INFO")
  cat("\n")
  cat("log_file = None")
  cat("\n")
  cat("profiler_log_file = None")
  cat("\n")
  cat("screenprint_log = False")
  cat("\n")
  cat("\n")
  cat("[Options for pairwise and one-to-all and all-to-one modes]")
  cat("\n")
  cat(PAIRS_TO_INCLUDE)
  cat("\n")
  cat(PAIRS)
  cat("\n")
  cat(LOCATION.FILE)
  cat("\n")
  cat("\n")
  cat("[Connection scheme for raster habitat data]")
  cat("\n")
  cat("connect_using_avg_resistances = True")
  cat("\n")
  cat(CONNECTION)
  cat("\n")
  cat("\n")
  cat("[Habitat raster or graph]")
  cat("habitat_map_is_resistances = True")
  cat("\n")
  cat(HABITAT)
  cat("\n")
  cat("\n")
  cat("[Circuitscape mode]")
  cat("\n")
  cat("data_type = raster")
  cat("\n")
  cat("scenario = pairwise")
  sink()
}