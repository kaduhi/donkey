if [ "$1" = "" ]; then
    echo "Usage: $0 [tub suffix] ([model suffix]) ([base model suffix])"
    exit
fi

tub=$1
model=$2
base=$3

if [ "$2" = "" ]; then
    model=$1
fi

if [ -f "./models/mypilot_$model" ]; then
    read -p "./models/mypilot_$model already exist, and this train will delete the existing model. Press enter to continue..."
fi

cmd="python ./manage.py train --tub ./data/tub_$tub --model ./models/mypilot_$model"

if [ "$base" = "" ]; then
    echo "no base model is specified"
else
    if [ -f "./models/mypilot_$base" ]; then
        echo "will use ./models/mypilot_$base as base model"
        cmd="$cmd --base_model ./models/mypilot_$base"
    else
        echo "./models/mypilot_$base does not exist"
        exit
    fi
fi

echo $cmd

date
$cmd
date
