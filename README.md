# historical-crypto-data

Install and execute:

Currently there are several libraries that are listed in requirements (e.g plotly or websocket) for other scripts which have not been uploaded yet, so do not wonder.

- pip3 install -r requirements.txt
- python3 main.py to execute script

If fails, might be also non-functional requirements like missing accounts on binance/bitstamp/coinbase pro.
Bitstamp can be handled by modifying setting self.trading_client = bitstamp.client.Public() so that the public client is used to fetch the functions. Trading won't work with public client.
