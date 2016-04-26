API_BASE	?= https://api.github.com
API_CRED	?= foo:bar
CRAM		?= cram

ifdef INTERACTIVE
CRAM := $(CRAM) -i
endif

FILES=$(shell find test -type f -name '*.t')

tests:
	@echo run $(API_BASE) tests
	@PATH=$(CURDIR):$(PATH) API_BASE=$(API_BASE) API_CRED=$(API_CRED) $(CRAM) -E -v $(FILES)

testsi:
	@echo interactice mode
	@$(MAKE) -s INTERACTIVE=1 tests

eval:
	@echo export API_BASE=$(API_BASE)
	@echo export API_CRED=$(API_CRED)

.PHONY: eval tests testsi
