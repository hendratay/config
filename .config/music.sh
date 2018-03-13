ARTIST=$( cmus-remote -Q 2>/dev/null | grep artist | cut -d " " -f 3- )
TITLE=$( cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- )

if [ -z "$ARTIST" ];
    then
        echo "ARTIST - TITLE"
    else
        echo "$ARTIST - $TITLE"
fi
