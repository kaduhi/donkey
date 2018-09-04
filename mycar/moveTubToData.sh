if [ "$1" = "" ]; then
    echo "Usage: $0 [tub suffix]"
    exit
fi

if [ ! -f "tub/record_0.json" ]; then
    echo "tub/ does not have any record"
    exit
fi

if [ -f "data/tub_$1" ]; then
    echo "data/tub_$1 already exists"
    ls -F data/
    exit
fi

# copy master meta.json
cp meta.json tub/

mv tub data/tub_$1
echo "Moved to data/tub_$1"
ls -F data/
