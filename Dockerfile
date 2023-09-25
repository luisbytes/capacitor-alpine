FROM node:lts-alpine AS node
FROM alvrme/alpine-android:android-33-jdk17-v$ANDROID_DATE

COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin
COPY --from=node /opt /opt

RUN npm install -g @trapezedev/configure @ionic/cli
