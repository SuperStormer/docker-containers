FROM ghcr.io/superstormer/python2:latest

ENV PATH=/volatility:$PATH
RUN apt-get update && apt-get install -y git yara gcc libsqlite3-0 && \
	git clone https://github.com/volatilityfoundation/volatility && \
	chmod +x /volatility/vol.py && \
	pip install distorm3 pycryptodome yara-python Pillow construct pefile

CMD ["bash"]
