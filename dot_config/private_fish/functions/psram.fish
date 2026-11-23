function psram
    free -h
    ps -eo comm=,rss= |
        awk '{ mem[$1] += $2 } END {
            for (app in mem)
                printf "%8.1f MiB  %s\n", mem[app]/1024, app 
        }' |
        sort -nr |
        head -12
end
