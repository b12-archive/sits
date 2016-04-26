API_BASE	?= https://api.github.com
API_CRED	?= foo:bar

FILES=$(shell find test -type f -name '*.t')

tests:
	@echo run $(API_BASE) tests
	@PATH=$(CURDIR):$(PATH) API_BASE=$(API_BASE) API_CRED=$(API_CRED) cram -E -v $(FILES)

eval:
	@echo export API_BASE=$(API_BASE)
	@echo export API_CRED=$(API_CRED)

.PHONY: eval tests
