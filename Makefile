all: clean install test docs

install:
	@echo "************************"
	@echo "* INSTALL DEPENDENCIES *"
	@echo "************************"
	@npm install

test:
	@echo "************************"
	@echo "* TEST LIBRARY         *"
	@echo "************************"
	@./node_modules/.bin/mocha --recursive test/*.spec.js

docs:
	@echo "************************"
	@echo "* CREATE DOCUMENTATION *"
	@echo "************************"
	@./node_modules/.bin/jsdoc --recurse --destination ./doc lib/*.js

clean:
	@echo "************************"
	@echo "* CLEANUP DIRECTORY    *"
	@echo "************************"
	-@rm -rf ./node_modules
	-@rm -rf ./doc

.PHONY: all install test docs
