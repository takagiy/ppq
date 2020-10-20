SRCS=$(shell find src)

bin/ppq: $(SRCS) bundle.sh
	shellcheck src/ppq* | : 
	bundle.sh > bin/ppq
	chmod 755 bin/ppq
