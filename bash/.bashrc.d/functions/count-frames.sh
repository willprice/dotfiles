
count_frames() {
    ffprobe \
        -v error \
        -select_streams v:0 \
        -show_entries stream=nb_frames \
        -of default=nokey=1:noprint_wrappers=1 \
        $@
}

