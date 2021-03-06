# docker-chilipeppr-grbl v1
FROM resin/armhf-alpine

WORKDIR                                                                                /

ADD                                                               chilipeppr /chilipeppr

WORKDIR                                                                      /chilipeppr

RUN                                                              [ "cross-build-start" ]

RUN                                                                           apk update && \
                                                                             apk upgrade && \
                                                              apk add nano bash curl git && \
                                    git clone git://github.com/xpix/chilipeppr.local.git && \
                       git clone git://github.com/chilipeppr/serial-port-json-server.git && \
                                git clone git://github.com/chilipeppr/workspace-grbl.git && \
                              git clone git://github.com/chilipeppr-grbl/widget-grbl.git && \
                                                                 rm -rf /var/cache/apk/*

RUN                                                                [ "cross-build-end" ]
