help:
	@echo "    run-cmdline"
	@echo "        Run the bot in the command line."
	@echo "    train"
	@echo "        Train a combined Rasa NLU and Core model."
	@echo "    run-actions"
	@echo "        Run the rasa actions."
	@echo "    run-x"
	@echo "        Run rasa x in browser."
	@echo "    run-debug"
	@echo "        Run rasa x with debug mode."

train:
	rasa train

run-actions:
	rasa run actions --actions actions.actions

run-cmdline:
	rasa run --enable-api --endpoints endpoints.yml
