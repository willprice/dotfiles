function pkl_to_csv

    set -l pkl_path (readlink -f $argv[1])
    set -l csv_path $argv[2]

    if test -e $pkl_path
        echo "Converting from $pkl_path to $csv_path"
        python -c "import pandas as pd;\
                   x = pd.read_pickle(\"$pkl_path\");\
                   print(\"Columns:\", '\\n', x.columns);\
                   x.to_csv(\"$csv_path\");\
                   print(\"Written to $csv_path\")"
    else
        echo "$pkl_path does not exist"
    end
end

