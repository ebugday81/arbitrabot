from __future__ import annotations
import time
from Exchange import Exchange
from datetime import datetime


class TradeManager:
    """
    Manager for multiple exchanges.
    """

    def __init__(self, exchanges: dict[str, Exchange]):
        self.exchanges = exchanges

    def get_orderbook(self, symbol: str) -> dict[str, Exchange]:
        orderbooks = []
        for exchange in self.exchanges:
            orderbook = exchange.get_orderbook(symbol)
            orderbooks.append(orderbook)
        return orderbooks

    # def getLowestPrice_Exchange(self, exchanges: dict[str, Exchange]):
    #     binance_Ask_Price_QTY = exchanges['Binance'].getLowestAsk_PriceQTY()
    #     binance_Bid_Price_QTY = exchanges['Binance'].getHighestBid_PriceQTY()
    #     bitstamp_Ask_Price_QTY = exchanges['Bitstamp'].getLowestAsk_PriceQTY()
    #     bitstamp_Bid_Price_QTY = exchanges['Bitstamp'].getHighestBid_PriceQTY()
    #     coinbase_Ask_Price_QTY = exchanges['Coinbase'].getHighestBid_PriceQTY()
    #     coinbase_Bid_Price_QTY = exchanges['Coinbase'].getLowestAsk_PriceQTY()

    #     timestamp_possible_arbitrage = time.time()
    #     datetimeobj = datetime.fromtimestamp(timestamp_possible_arbitrage)

    #     if binance_Ask_Price_QTY[0] * (1 + 0.001) < bitstamp_Bid_Price_QTY[0]:
    #         binance_fee = binance_Ask_Price_QTY[0] * (1 + 0.001)
    #         print(
    #             f"Binance Preis {binance_Ask_Price_QTY[0]} ist niedriger als {bitstamp_Bid_Price_QTY[0]}")
    #         self.write_log_file(
    #             f"Arbitrage Moeglichkeit !!! \n", "binance_trades.log")
    #         self.write_log_file(
    #             f"Timestamp: {timestamp_possible_arbitrage} {datetimeobj} \n", "binance_trades.log")
    #         self.write_log_file(
    #             f"Preis und QTY bei Binance: {binance_Ask_Price_QTY} und bei Bitstamp: {bitstamp_Bid_Price_QTY}\n", "binance_trades.log")
    #         self.write_log_file(
    #             f"Nach Gebuehren liegt der gewuenschte Verkaufspreis bei Bitstamp ueber {binance_fee} Aktuell: {bitstamp_Bid_Price_QTY[0]} und somit existiert eine Arbitrage Möglichkeit \n", "binance_trades.log")
    #         self.write_log_file(
    #             "______________________________________________________________\n", "binance_trades.log")
    #     else:
    #         binance_fee = binance_Ask_Price_QTY[0] * (1 + 0.001)
    #         # print (f"Bitstamp Preis: {bitstamp_Bid_Price_QTY[0]} Binance Preis: {binance_Ask_Price_QTY[0]}")
    #         # print (f"Nach 0.1% Gebuehren muss der gewuenschte Preis unter {binance_fee} liegen" )
    #         # self.writeOnStorage(f"Nach 0.1% Gebuehren muss der gewuenschte Preis unter {binance_fee} liegen \n")
    #         self.write_log_file(
    #             f"Timestamp: {timestamp_possible_arbitrage} {datetimeobj} \n", "binance_fail.log")
    #         self.write_log_file(
    #             f"Preis und Anzahl bei Binance: {binance_Ask_Price_QTY}\n", "binance_fail.log")
    #         self.write_log_file(
    #             f"Nach Gebuehren muss der gewuenschte Verkaufspreis bei Bitstamp über {binance_fee} liegen. Aktuell: {bitstamp_Bid_Price_QTY}\n", "binance_fail.log")
    #         self.write_log_file(
    #             f"______________________________________________________________\n", "binance_fail.log")

    def write_log_file(self, str, specific_file: str):
        logFile = open(specific_file, "a")
        logFile.write(str)
        logFile.close()

    def get_lowest_ask_price_exchange_after_fee(self):
        lowest_ask_exchange = None
        lowest_ask = float("inf")
        qty = 0

        for exchange in self.exchanges.values():
            exchange_lowest_ask = exchange.getLowestAsk_PriceQTY()
            exchange_lowest_ask_after_fee = exchange_lowest_ask[0] * (1 + exchange.fee)
            print(f"{exchange.name}")
            if exchange_lowest_ask_after_fee < lowest_ask:
                lowest_ask = exchange_lowest_ask_after_fee
                lowest_ask_exchange = exchange
                qty = exchange_lowest_ask[1]
                

        return lowest_ask, lowest_ask_exchange, qty

    def get_highest_bid_price_exchange_after_fee(self):
        highest_bid_exchange = None
        highest_bid = 0
        qty = 0

        for exchange in self.exchanges.values():
            exchange_highest_bid = exchange.getHighestBid_PriceQTY()
            exchange_highest_bid_after_fee = exchange_highest_bid[0] * (1 - exchange.fee)
            if exchange_highest_bid_after_fee > highest_bid:
                highest_bid = exchange_highest_bid_after_fee
                highest_bid_exchange = exchange
                qty = exchange_highest_bid[1]

        return highest_bid, highest_bid_exchange, qty

    # def get_lower_qty(self, ask, bid):
    #     return min(ask[2], bid[2])

    def trade_logic_all_exchanges(self):
        ask_exchange = self.get_lowest_ask_price_exchange_after_fee()
        bid_exchange = self.get_highest_bid_price_exchange_after_fee()

        timestamp_possible_arbitrage = time.time()
        datetimeobj = datetime.fromtimestamp(timestamp_possible_arbitrage)
        # ask_exchange[0] -> Preis, [1] exchange objekt, [2] qty
        # ask_price_inc_fee = float(ask_exchange[0] * (1 + ask_exchange[1].fee))
        # # bid_exchange[0] -> Preis, [1] exchange objekt, [2] qty
        # bid_price_inc_fee = float(bid_exchange[0] * (1 - bid_exchange[1].fee))
        lowest_qty_at_arbitrage = min(ask_exchange[2], bid_exchange[2])

        if (ask_exchange[1].name != bid_exchange[1].name):
            if (ask_exchange[0] < bid_exchange[0]):

                # calculating profit with lowest matching qty
                profit = float(bid_exchange[0] * lowest_qty_at_arbitrage) - \
                    float(ask_exchange[0] * lowest_qty_at_arbitrage)

                self.write_log_file(
                    f"Arbitrage Moeglichkeit !!! \n", "all_exchanges.log")
                self.write_log_file(
                    f"Timestamp: {timestamp_possible_arbitrage} {datetimeobj} \n", "all_exchanges.log")
                self.write_log_file(
                    f"Niedrigster Ask Preis und QTY bei: {ask_exchange[1].name} {ask_exchange[0]} und {ask_exchange[2]}\n", "all_exchanges.log")
                self.write_log_file(
                    f"Hoechster Bid Preis und QTY bei: {bid_exchange[1].name} {bid_exchange[0]} und {bid_exchange[2]}\n", "all_exchanges.log")
                self.write_log_file(
                    f"Obige Preise sind nach Gebuehren und somit existiert eine Arbitrage Möglichkeit \n", "all_exchanges.log")
                self.write_log_file(
                    f"Rendite wenn Trade erfolgreich ausgefuehrt wäre: {profit}\n", "all_exchanges.log")
                self.write_log_file(
                    "______________________________________________________________\n", "all_exchanges.log")
            else:
                self.write_log_file(
                    f"Timestamp: {timestamp_possible_arbitrage} {datetimeobj} \n", "all_fail.log")
                self.write_log_file(
                    f"Niedrigster Ask Preis und QTY bei: {ask_exchange[1].name} {ask_exchange[0]} und {ask_exchange[2]}\n", "all_fail.log")
                self.write_log_file(
                    f"Hoechster Bid Preis und QTY bei: {bid_exchange[1].name} {bid_exchange[0]} und {bid_exchange[2]}\n", "all_fail.log")
                # self.write_log_file(
                #     f"Preise nach Gebuehren Ask Preis: {ask_price_inc_fee} und Bid Preis : {bid_price_inc_fee} und somit existiert eine Arbitrage Möglichkeit \n", "all_fail.log")
                self.write_log_file(
                    f"obige Preise sind nach Gebuehren, somit keine Arbitrage Moeglichkeit!\n", "all_fail.log")
                # self.write_log_file(
                #     f"Aktueller Verkaufspreis: {bid_price_inc_fee} \n", "all_fail.log")
                self.write_log_file(
                    "______________________________________________________________\n", "all_fail.log")
