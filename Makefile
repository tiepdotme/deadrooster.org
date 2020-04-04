install:
	bundle install
	git submodule update --init --remote --merge

fetch-articles:
	git submodule update --init --remote --merge

run:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

clean:
	rm -rf .jekyll-cache/
	rm -rf _site/
