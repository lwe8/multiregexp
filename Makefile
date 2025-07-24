SHELL := bash

COLOR_GREEN = \e[1;32m
COLOR_END   = \e[0m
SAY         = @printf "$(COLOR_GREEN)%s\n$(COLOR_END)"


.PHONY: build test docs

build:
	$(SAY) "Start building package..."

docs:
	$(SAY) "Building docs..."
	@npm run docs

test:
	$(SAY) "Testing..."
	@npm run test:coverage &
	@npm run test:local
