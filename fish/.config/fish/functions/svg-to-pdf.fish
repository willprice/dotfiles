function svg-to-pdf
    set -l src "$argv[1]"
    set -l dest (basename "$src" .svg).pdf
    echo "$src" "$dest"
  inkscape --export-filename="$dest" "$src"
end
