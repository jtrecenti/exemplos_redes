
converter <- function(arq) {
  usethis::ui_info(basename(arq))
  arq_ok <- stringr::str_remove(arq, "_raw")
  if (!file.exists(arq_ok)) {
    arq |> 
      av::av_encode_video(
        audio = arq,
        framerate = 30,
        vfilter = "crop=960:1080:0:0", 
        verbose = FALSE
      ) |> 
      av::av_video_convert(arq_ok, verbose = FALSE)
  }
}

path <- "C://Users/julio/Videos"


fs::dir_ls(path, glob = "*.mp4") |> 
  purrr::walk(converter)

googledrive::drive_auth("julio.trecenti@gmail.com")

dados_videos <- "https://drive.google.com/drive/u/2/folders/1Z06rVpeWAG6fyq8LNJXbHZaWhhp3DpHA" |> 
  googledrive::drive_ls()

dados_videos |> 
  dplyr::filter() |>
  dplyr::rowwise() |> 
  dplyr::mutate(link = )