#!/bin/bash
echo "DATE formats"
date			#Fri Aug 27 20:22:41 -00 2021
date +"Year: %Y, Month: %m, Day: %d"	#Year: 2021, Month: 08, Day: 27
date "+DATE: %D"	#DATE: 08/27/21
date "+TIME: %T"	#TIME: 20:25:20
date "+%F"		#2021-08-27
date "+%a"		#Fri
date "+%A"		#Friday
date "+%b"		#Aug
date "+%B"		#August
date "+%d"		#27 > day in month
date "+%H"		#20 > Hour (00..23) by GMT+0
date "+%l"		# 8 > Hour (01..12) by GMT+0 (little L)
date "+%j"		#239 > day in the year
date "+%m"		#08 > month (01..12)
date "+%M"		#38 > minute (00..59)
date "+%S"		#20 > second (00..59)
date "+%u"		#5 > day of week (1..7)
date "+%Y"		#Year > 2021

TZ='Israel' date 	#Fri Aug 27 23:53:50 IDT 2021

date +%s		#1630097732 seconds from 1970.01.01 00:00 GMT0
date -d @1630097732	#Fri Aug 27 20:55:32 -00 2021 > today from 1970

DATE=$(date "+%F-%H-%M")
echo $DATE		#2021-08-27-21-06
export DATE
echo "$DATE"_file.log	#2021-08-27-21-05_file.log

# END
