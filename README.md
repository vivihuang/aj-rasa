## aj-estonia for Rasa
This is a repository showing an example bot and the setup needed to run it with Rasa.

## Steps to Setup Rasa with local mode

### Create virtual env with python3
use `python3 -m venv venv` or `python -m venv venv` to create venv

### Enable to use virtual env
use `source venv/bin/activate` to enable venv

### Upgrade pip if needed
`pip install --upgrade pip`

### Install dependencies
`pip install -r requirements.txt`

### Create database and user in mongodb

#### Install mongodb
[Install instruction](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/)

#### Create a db with name as **rasa**
`use rasa`

#### Create a user for rasa db
`db.createUser({user: "rasauser", pwd: "rasapwd", roles: [ { role: "readWrite", db: "rasa" } ]})`

#### Check db exists
`mongo -u rasauser -p rasapwd --authenticationDatabase rasa`

### Train models
`make train`

### Run rasa api
`make run`

For debug mode, use `make run-debug`

## Steps to Setup Rasa with Docker

### Build docker image
`docker build . -t aj-estonia`

### Run with docker-compose
`docker-compose up -d`

## Test rasa connection

### Rasa api endpoint
`http://localhost:5005/webhooks/rest/webhook`

### Rasa api request body
```
{
    "sender":"sender_id",
    "message":"Hi!"
}
```

### Test connection
`curl -d '{"sender":"Rasa", "message":"Hi!"}' -H "Content-Type: application/json" -X POST http://localhost:5005/webhooks/rest/webhook`
