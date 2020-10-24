SRCS=$(shell find src)

bin/ppq: $(SRCS) bundle.sh
	shellcheck src/ppq* | : 
	bundle.sh > bin/ppq
	chmod 755 bin/ppq
	shellcheck bin/ppq

install: bin/ppq
	cp bin/ppq /usr/bin/ppq
