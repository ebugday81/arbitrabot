from Trademanager import TradeManager
from Coinbase import Coinbase
from Bitstamp import Bitstamp
from Binance import Binance


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

    tryno = 1
    while 1==1:
        try:
            exchange_manager.trade_logic_all_exchanges()
            tryno = 1
        except Exception as e:
            print(f"Fehler, Reconnect Versuch Nummer {tryno} !")
            print(e)
            tryno = tryno + 1
