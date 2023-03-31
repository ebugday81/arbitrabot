from Trademanager import TradeManager
from Coinbase import Coinbase
from Bitstamp import Bitstamp
from Binance import Binance
from datetime import datetime
import time
import platform

timestamp_possible_arbitrage = time.time()
datetimeobj = datetime.fromtimestamp(timestamp_possible_arbitrage)

print(f"Anwendung wird am: {datetimeobj} auf folgendem System gestartet: ")
print(platform.system())


if __name__ == '__main__':
    coinbase = Coinbase()
    bitstamp = Bitstamp()
    binance = Binance()
    list_of_exchanges = {'Binance': binance,
                         'Bitstamp': bitstamp, 'Coinbase': coinbase}

    exchange_manager = TradeManager(list_of_exchanges)

    # symbol = 'BTCUSD'
    # orderbooks = exchange_manager.get_orderbook(symbol)

    # print(f"Order books for {symbol}:")
    # for i, exchange in enumerate(['Binance', 'Bitstamp']):
    #     print(f"{exchange}: {orderbooks[i]}")

    exchange_manager.write_log_file(f"Test", "all_fail.log")

    tryno = 1
    durchlauf = 1
    while True:
        try:
            print(f"Schleifendurchlauf: #{durchlauf}")
            exchange_manager.trade_logic_all_exchanges()
            tryno = 1
            durchlauf+= 1
        except Exception as e:
            print(f"Fehler, Reconnect Versuch Nummer {tryno} !")
            print(e)
            tryno = tryno + 1
