app=$1
chmod +x checkApp
p1=$(./checkApp $app | cut -d "=" -f 2 | cut -d ")" -f1)
p2=$(./pss | awk '{print $2}')

echo $p1
echo $p2

if [[ p1 -eq p2 ]];
 then
    echo "./stopApp11"
#./startApp";
 else
    echo "./startApp"
fi
