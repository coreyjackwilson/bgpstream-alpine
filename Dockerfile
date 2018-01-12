FROM alpine:latest
WORKDIR /tmp

RUN apk update && \
    apk add alpine-sdk curl-dev zlib-dev bzip2-dev automake autoconf libtool libpthread-stubs
RUN git clone https://github.com/wanduow/wandio.git && \
    git clone https://github.com/CAIDA/bgpstream.git ;
RUN cd /tmp/wandio/ ; ./bootstrap.sh ; ./configure --with-http --with-zlib --with-bzip2 ; make ; make install ; cd /tmp/bgpstream ; ./autogen.sh ; find /tmp/bgpstream -type f -exec sed -i 's#pthread_yield#sched_yield#g' {} + ; ./configure ; make ; make install ; rm -rf /var/cache/apk/* /tmp/wandio /tmp/bgpstream 

ENTRYPOINT ["bgpreader"]
CMD ["--help"]
