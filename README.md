## aj-estonia for Rasa
This is a repository showing an example bot and the setup needed to run it with Rasa.

## Steps to Setup Rasa

### Create virtual env with python3
use `python3 -m venv venv` or `python -m venv venv` to create venv

### Enable to use virtual env
use `source venv/bin/activate` to enable venv

### Upgrade pip if needed
`pip install --upgrade pip`

### Install dependencies
`pip install -r requirements.txt`

### Train models
`make train`

### Run actions if there are any custom actions
`make run-actions`

### Run rasa
`make run`

For debug mode, use `make run-debug`
