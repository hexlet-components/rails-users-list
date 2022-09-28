setup:
	bin/setup
	bin/rails db:drop
	bin/rails db:migrate
	bin/rails db:seed

start:
	bin/rails s -p 3000 -b "0.0.0.0"

console:
	bin/rails console

lint:
	bundle exec rubocop app

lint-fix:
	bundle exec rubocop app -A

test:
	NODE_ENV=test bin/rails test

.PHONY: test
