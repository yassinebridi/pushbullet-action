FROM alpine

LABEL "version"="0.1.0"
LABEL "repository"="https://github.com/yassinebridi/pushbullet-action"
LABEL "homepage"="https://github.com/yassinebridi/pushbullet-action"
LABEL "maintainer"="Yassine Bridi <yassine@yasbr.com>"

LABEL "com.github.actions.name"="Pushbullet Github Action"
LABEL "com.github.actions.description"="Send a notification to Pushbullet."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

RUN apk add --no-cache curl ca-certificates

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
