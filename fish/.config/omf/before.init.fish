for file in "$OMF_CONFIG"/custom/*
    source "$file"
    if test $OMF_DEBUG
        echo "[OMF Debug] Loaded $file"
    end
end
