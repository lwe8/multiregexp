SHELL := bash

COLOR_GREEN = \e[1;32m
COLOR_END   = \e[0m
SAY         = @printf "$(COLOR_GREEN)%s\n$(COLOR_END)"


.PHONY: install build test docs

install:
	$(SAY) "Install dependencies..."
	@npm run $@

build:
	$(SAY) "Start building package..."
	@npm run $@

docs:
	$(SAY) "Building docs..."
	@npm run $@

test:
	$(SAY) "Testing..."
	@npm run test:coverage &
	@npm run test:local
