SRCS=$(shell find src)

bin/ppq: $(SRCS) bundle.sh
	bundle.sh > bin/ppq
	chmod 755 bin/ppq
