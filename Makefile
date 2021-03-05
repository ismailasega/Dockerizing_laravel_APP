###
# This Makefile provides portable, stack-agnostic commands (unlike npm, e.g.)

ifneq (,)
	This makefile requires GNU Make.
endif

# ---- 

onboarded:
	@echo "Onboarding..."
	@# ... more here
	@echo "Now you're onboarded"

# ---- 

.PHONY: onboarded

update:
	composer update
	@echo "composer update is successfull \n"

copyfiles:
	cp .env.example .env
	@echo "coping successfull \n"

build: 
	sudo docker-compose up -d laravel-test-app web
	@echo "Build successfull and Containers are up"

all: onboarded update copyfiles build 