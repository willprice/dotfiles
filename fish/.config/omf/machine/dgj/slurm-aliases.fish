function sq
	squeue -O \
    'jobid:8,partition:7,name:10,username:13,state:10,timeused:15,timeleft:15,gres:10,reasonlist:20,priority:17,nodelist' \
    --sort "+p,U" \
    $argv
end

function squ
    sq -u $USER $argv
end
