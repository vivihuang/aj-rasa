help:
	@echo "    run"
	@echo "        Run the bot in the command line."
	@echo "    train"
	@echo "        Train a combined Rasa NLU and Core model."
	@echo "    run-debug"
	@echo "        Run rasa with debug mode."
	@echo "    validate"
	@echo "        Validate training data."
	@echo "    interactive"
	@echo "        Use interactive mode."

validate:
	rasa data validate

train:
	rasa train

run:
	rasa run --enable-api --endpoints endpoints.yml

run-debug:
	rasa run --enable-api --endpoints endpoints.yml --debug

interactive:
	rasa interactive -m models --endpoints endpoints.yml
