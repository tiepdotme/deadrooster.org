install:
	bundle install
	git submodule update --init --remote --merge

fetch-articles:
	git submodule update --init --remote --merge

run:
	bundle exec jekyll serve

build:
	bundle exec jekyll build
	bundle exec ./scripts/create_google_search_console_verification_file.rb

clean:
	rm -rf .jekyll-cache/
	rm -rf _site/

lint:
	bundle exec rubocop
	
lintfix:
	bundle exec rubocop -a