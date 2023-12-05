
#!/bin/bash
usedpercent() {
ttlsize=$(df | grep -w "/" | awk '{print $3}')
used=$(df | grep -w "/" | awk '{print $4}')
avail=$(df | grep -w "/" | awk '{print $5}')

echo "used data in percentage= $(($used*100/$totalsize))%"


echo "available data in percentage= $(($avail*100/$totalsize))%"
}
while true
do
	usedperct
	sleep 2
done



