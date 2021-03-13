# max_iterations=2
# wait_seconds=6
# http_endpoint="http://localhost:4566/health?redirect"

# iterations=0
# while true
# do
# 	((iterations++))
# 	echo "Attempt $iterations"
# 	sleep $wait_seconds

# 	http_code=$(curl --verbose -s /tmp/result.txt  "$http_endpoint" | sed -r '.services.sqs';)
#     echo "Is runnng $http_code"

# 	# http_code=$(curl --verbose -s "$http_endpoint";)| python -c "import sys, json; print json.load(sys.stdin)['services']['sqs']"
    
    
#     if [ "$http_code" = "running" ]; then
# 		echo "Server Up"
# 		break
# 	fi

# 	if [ "$iterations" -ge "$max_iterations" ]; then
# 		echo "Loop Timeout"
# 		exit 1
# 	fi
# done

  # "  
      #   sleep 10
      #  curl -w '%{json}' http://localhost:4566/health?redirect | awk -F 'sqs' '{print $2}' | tr -cd [:alnum:]

      # "
while [[ "$$(curl --connect-timeout 2 -s -o /dev/null -w ''%{http_code}''

	#   'while 
    #      [[ "$$(curl --connect-timeout 2 -s -o /dev/null -w ''%{http_code}'' http://localhost:4566/health?redirect)
    #          grep -Po '"text":.*?[^\\]"
    #          | tr -cd [:alnum:]" != "running" ]]; do echo ..; sleep 5; done; echo backend is up;'


# while 
#          [[ "$$(curl --connect-timeout 2 -s -o /dev/null -w ''%{json}'' http://localhost:4566/health?redirect)
#              | grep -oP '"sqs":'" == '*running*' ]]; do echo ..; sleep 5; done; echo backend is up;


curl -w '%{json}' http://localhost:4566/health?redirect | awk -F 'sqs' '{print $2}' | tr -cd [:alnum:]



curl --verbose  http://localhost:4566/health?redirect | python3 -c 'import json,sys;obj=json.load(sys.stdin);print(obj["services"]["sqs"])



'while 
         [[ "$$(curl --connect-timeout 2 -s -o /dev/null -w ''%{http_code}'' http://localhost:4566/health?redirect)
             | grep -oP '"sqs":'" != running ]]; do echo ..; sleep 5; done; echo backend is up;'




if wget --spider -S "https://www.google.com" 2>&1 | grep -w "200\|301" ; then
    echo "Google.com is up"
else
    echo "Google.com is down"
fi



'RESPONSE=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "http://192.168.122.1:4566/health?redirect") 
      while [ $RESPONSE -ne 200 ] 
      do RESPONSE=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "http://192.168.122.1:4566/health?redirect") 
      done'