cd ../../../
app=`ls -1 | grep -e 'NetLogo 3D [.0-9]\+[ A-Za-z\-]*[0-9]*\.app'`
ls

if [ -z "${app// }" ]; then
 ~   path=`pwd`
    osascript -e "display dialog \"I couldn't find a NetLogo 3D app in:\n\n${path}\n\nMake sure NetLogo Launcher is in the same folder as the NetLogo 3D app.\" buttons {\"Quit\"}"
    exit 1
fi

if [ "$#" -ge 1 ]; then
    for var in "$@"
    do
	open -n "$app" --args "$var"
    done
else
    open -n "$app"
fi

osascript -e "tell application \"${app%.*}\" to activate"
