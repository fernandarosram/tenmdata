#' Download time-specific bioclimatic variables at spatial resolution of 30" arcseconds 2.5', 5' and 10' arcminutes
#'
#' @param res resolution of the bioclimatic layers. Options are 30" arcseconds and 2.5', 5', 10' arcminutes
#' @param w_dir set the directory where layers will be written
#'
#' @return bioclimatic layers
#' @export
#'
#' @examples get_tenmdata(res = 2.5)
get_tenmdata <- function(res, w_dir = getwd()) {
  if (res == "30") {
    tenm_data_url <- ("https://uce7ba5d813b53bb8a61383156bb.dl.dropboxusercontent.com/zip_download_get/CCpL57EZZwp7D6cTH9TqeN_GIwxv59kzwur2L3u_XdKr-3CLubCe_kC3x4Z_JbN9KMg2aqTfcaSH8bB6xvFv89sg49DEUFIxU2vBipglmVeP-g?_download_id=180322120583948257883269148277345760198252963990417039550878075338&_log_download_success=1&_notify_domain=www.dropbox.com&dl=1")
    file_name <- paste0(w_dir, "/ts_bioclimatic_", res, "m")
    utils::download.file(tenm_data_url, file_name, method = "wget", quiet = T)
  }
  if (res == "2.5") {
    id <- "927afbc9aca7d61cd3a24f92d6ddfe68"
    tenm_data_url <- paste0(url, id)
    file_name <- paste0(w_dir, "/ts_bioclimatic_", res, "m")
    utils::download.file(tenm_data_url, file_name, method = "wget", quiet = T)
  }
  if (res == "5") {
    url <- ("https://china.scidb.cn/download?fileId=")
    id <- "aaa8991817c1b8700fac1ee6623f33ab"
    tenm_data_url <- paste0(url, id)
    file_name <- paste0(w_dir, "/ts_bioclimatic_", res, "m")
    utils::download.file(tenm_data_url, file_name, method = "wget", quiet = T)
  }
  if (res == "10") {
    url <- ("https://china.scidb.cn/download?fileId=")
    id <- "4cab96b67eed2bb876ac1dacab67d68c"
    tenm_data_url <- paste0(url, id)
    file_name <- paste0(w_dir, "/ts_bioclimatic_", res, "m")
    utils::download.file(tenm_data_url, file_name, quiet = T)
  }
  if (!(res %in% c("30", "2.5", "5", "10"))) stop("not valid resolution")
}

