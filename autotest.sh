# To start auditing at the same time
echo "start auditing"
sysdig "not proc.name=sar" -t r -pc -M 30 -w $NUM.scap > sysdig.output &
sar -o $NUM.sa 1 30 >sar.output
echo "Auditing finished!"
