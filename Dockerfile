FROM alpine as builder

RUN  apk add --no-cache ca-certificates  git

RUN  git clone --depth 1 https://github.com/fffonion/Xunlei-Fastdick.git /xunlei


FROM python:2.7-alpine

COPY --from=builder  /xunlei/swjsq.py /

ENTRYPOINT ["python", "/swjsq.py"]
