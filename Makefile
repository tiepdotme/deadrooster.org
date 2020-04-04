install:
	bundle install

run:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

clean:
	rm -rf .jekyll-cache/
	rm -rf _site/
