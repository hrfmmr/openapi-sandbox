.PHONY: build
build:
	npm run build
	npm run html

.PHONY: watch
watch:
	arelo -p 'src/**/*.yml' -i 'node_modules' -d2s -- make build

.PHONY: lint
lint:
	npm run lint

.PHONY: preview
preview: build
	open --new -a "Google Chrome" --args --new-window $(PWD)/.build/index.html
