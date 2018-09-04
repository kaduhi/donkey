if [ "$1" = "" ]; then
    echo "Usage: $0 [model suffix]"
    exit
fi

echo python manage.py drive --model ~/mycar/models/mypilot_$1
python manage.py drive --model ~/mycar/models/mypilot_$1
