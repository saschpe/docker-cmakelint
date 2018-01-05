FROM python:alpine3.7
LABEL maintainer="Sascha Peilicke <sascha@peilicke.de"
LABEL description="Clang"

RUN pip install cmakelint

ENTRYPOINT ["cmakelint"]
