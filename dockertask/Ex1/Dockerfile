FROM python

WORKDIR /src/
ARG arr
COPY ex1.py .
RUN pip install numpy
ENV arr=$arr
CMD python ex1.py