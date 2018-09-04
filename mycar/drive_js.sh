if [ -f "./tub/0_cam-image_array_.jpg" ]; then
    read -p "tub folder already contains data. Press enter to continue..."
fi

if [ ! "$1" = "" ]; then
    echo "Are you trying to autopilot??"
    exit
fi

python manage.py drive --js
