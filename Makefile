DEMOS_DATASETS_VERSION ?= unstable

.PHONY: help
help: ## Display available commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build
build: fetch-datasets
	tar cf - datasets | pigz -9 > datasets-$(DEMOS_DATASETS_VERSION).tar.gz

.PHONY: fetch-datasets
fetch-datasets:
	./fetch-datasets.sh

.PHONY: cleanup
cleanup:
	rm -rf datasets-*.tar.gz
	rm -rf ./datasets/*
