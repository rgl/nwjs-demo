NW=./tmp/nwjs/nw
NW_VERSION=0.39.1

tmp/nwjs/nw: tmp/nwjs-v${NW_VERSION}-linux-x64.tar.gz
	${NW} --version

tmp/nwjs-v${NW_VERSION}-linux-x64.tar.gz:
	mkdir -p tmp
	wget -q -O tmp/nwjs-v${NW_VERSION}-linux-x64.tar.gz https://dl.nwjs.io/v${NW_VERSION}/nwjs-v${NW_VERSION}-linux-x64.tar.gz
	tar xf tmp/nwjs-v${NW_VERSION}-linux-x64.tar.gz -C tmp
	mv tmp/nwjs-v${NW_VERSION}-linux-x64 tmp/nwjs

clean:
	rm -rf tmp
