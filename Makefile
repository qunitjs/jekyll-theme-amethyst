MINIBAR_VERSION=1.1.1

.PHONY: deps

all: deps

deps:
	curl -q https://raw.githubusercontent.com/jquery/typesense-minibar/${MINIBAR_VERSION}/typesense-minibar.css > _sass/typesense-minibar.css
	curl -q https://raw.githubusercontent.com/jquery/typesense-minibar/${MINIBAR_VERSION}/typesense-minibar.js > assets/typesense-minibar.js
