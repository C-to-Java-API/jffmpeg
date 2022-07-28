BUILD_DIR=build

all: install-deps jar deploy

install-deps:
	brew install pkg-config ffmpeg

uninstall-deps:
	brew uninstall --ignore-dependencies --force ffmpeg

__internal: rmlib
	mkdir -p lib$(name)
	sed -e 's/LIBNAME/lib$(name)/g; s/HEADERFILE/$(name).h/g' templates/Makefile.template >> lib$(name)/Makefile
	sed -e 's/LIBNAME/lib$(name)/g;' templates/pom.xml.template >> lib$(name)/pom.xml
	$(MAKE) --makefile=lib$(name)/Makefile $(cmd)

jar: rmlib
	$(MAKE) __internal cmd=jar

deploy: rmlib
	$(MAKE) __internal cmd=deploy

rmlib:
	rm -fr lib$(name)

clean:
	rm -fr lib*
