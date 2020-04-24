FROM pypy:3.6-7.3.0-slim

WORKDIR /usr/src/app

RUN pip install pip -U \
        && pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
        && pip install asyncio pproxy

ENTRYPOINT [ "pypy3", "-m", "pproxy" ]
CMD [ "-l", "http://:8080", "-vv" ]
