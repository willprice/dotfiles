function tag_and_move_mp3
    set -l path $argv[1]
    set -l artist $argv[2]
    set -l title $argv[3]

    id3tag -a"$artist" -s"$title" "$path"
    mv "$path" ~/music/"$artist - $title".mp3
end

