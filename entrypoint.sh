#!/bin/sh

if [ $PB_TYPE = "note" ]; then
  curl --header "Access-Token: ${PB_TOKEN}" \
       --header "Content-Type: application/json" \
       --data-binary "{\"title\":\"$PB_TITLE\",\"body\":\"$PB_BODY\",\"type\":\"$PB_TYPE\"}" \
       --request POST \
       https://api.pushbullet.com/v2/pushes
elif [ $PB_TYPE = "link" ]; then
  curl --header "Access-Token: ${PB_TOKEN}" \
       --header "Content-Type: application/json" \
       --data-binary "{\"title\":\"$PB_TITLE\",\"body\":\"$PB_BODY\",\"type\":\"$PB_TYPE\", \"url\":\"$PB_URL\"}" \
       --request POST \
       https://api.pushbullet.com/v2/pushes
elif [ $PB_TYPE = "file" ]; then
  curl --header "Access-Token: ${PB_TOKEN}" \
       --header "Content-Type: application/json" \
       --data-binary "{\"body\":\"$PB_BODY\",\"type\":\"$PB_TYPE\", \"file_name\":\"$PB_FILE_NAME\", \"file_type\":\"$PB_FILE_TYPE\", \"file_url\":\"$PB_FILE_URL\"}" \
       --request POST \
       https://api.pushbullet.com/v2/pushes
else
	:
fi
