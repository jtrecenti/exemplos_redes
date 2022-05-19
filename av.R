path <- "C://Users/julio/Videos"
video <- "GET_raw.mp4"
video_ok <- stringr::str_remove(
  video, 
  "_raw"
)

av::av_encode_video(
  input = file.path(path, video),
  audio = file.path(path, video),
  framerate = 30,
  vfilter = "crop=960:1080:0:0", 
  verbose = FALSE
) |> 
  av::av_video_convert(
    paste0(path, video_ok)
  )
