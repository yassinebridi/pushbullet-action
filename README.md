# Pushbullet GitHub Action

Send a notification to Pushbullet.

## Requirements

## Inputs

- `PB_TOKEN`: The Pushbullet API token, you can get it from your [account settings](https://www.pushbullet.com/#settings/account)
- `PB_TYPE`: Notification's type, it can be either 'note' or 'link' or 'file'
  - example value: `link`
- `PB_TITLE`: (_optional_) Notification's title in case the type is 'note' or 'link'.
  - example value: `Build Completed!`
- `PB_BODY`: (_optional_) Notification's body.
  - example value: `Blog Project Build has compleled.`
- `PB_FILE_NAME`: (_optional_) Notification's file name in case the notifications' type is 'file'.
  - example value: `john.jpg`
- `PB_FILE_TYPE`: (_optional_) Notification's file type in case the notifications' type is 'file'.
  - example value: `image/jpeg`
- `PB_FILE_URL`: (_optional_) Notification's file url in case the notifications' type is 'file'.
  - example value: `https://dl.pushbulletusercontent.com/foGfub1jtC6yYcOMACk1AbHwTrTKvrDc/john.jpg`

## Examples

All examples below are functionally complete and can be copy-pasted into a `.github/workflows/deploy.yaml` file.

### Sending a note notification

```yml
name: Pushbullet Notification
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Pushbullet Notification
        uses: yassinebridi/pushbullet-action@v1.0.2
        env:
          PB_TOKEN: ${{ secrets.PB_TOKEN }}
          PB_TYPE: note
          PB_TITLE: Blog Project Build Complete!
          PB_BODY: Blog project build has compleled.
```

### Sending a link notification

```yml
name: Pushbullet Notification
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Pushbullet Notification
        uses: yassinebridi/pushbullet-action@v1.0.2
        env:
          PB_TOKEN: ${{ secrets.PB_TOKEN }}
          PB_TYPE: link
          PB_TITLE: Blog Project Build Complete!
          PB_BODY: Blog project build has compleled.
          PB_URL: https://github.com/yassinebridi/pushbullet-action/runs/242945729
```

### Sending a file notification

```yml
name: Pushbullet Notification
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Pushbullet Notification
        uses: yassinebridi/pushbullet-action@v1.0.2
        env:
          PB_TOKEN: ${{ secrets.PB_TOKEN }}
          PB_TYPE: file
          PB_BODY: Blog project build has compleled.
          PB_FILE_NAME: john.jpg
          PB_FILE_TYPE: image/jpeg
          PB_FILE_URL: https://picsum.photos/200/300
```
