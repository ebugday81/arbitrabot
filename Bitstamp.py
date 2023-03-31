import json
from Exchange import Exchange
from decouple import config
import bitstamp.client


class Bitstamp(Exchange):
    """
    Bitstamp exchange implementation.
    """

    def __init__(self):
        self.name = "Bitstamp"
        self.fee = 0
        # self.public_client = bitstamp.client.Public()
        self.trading_client = bitstamp.client.Trading(username=config('username_bitstamp', default=''), key=config(
            'api_key_bitstamp', default=''), secret=config('api_secret_bitstamp', default=''))
        # self.trading_client = bitstamp.client.Public() 

    def buy(self, amount, price):
        print(f"Bought {amount} at {price} on Bitstamp.")

    def sell(self, amount, price):
        print(f"Sold {amount} at {price} on Bitstamp.")

    def getOrderbook(self):
        unfiltered_Orderbook = self.trading_client.order_book(base='btc', quote='usdt')
        # print(unfiltered_Orderbook)

        # unfiltered_Orderbook --> returns complete order book (asks)
        # unfiltered_Orderbook[:5] --> returns orderbook for the first 5 elements (asks)
        # unfiltered_Orderbook[0] --> returns price and volume of first element
        # unfiltered_Orderbook[0][0] --> returns only price (last element)
        # unfiltered_Orderbook[:50] --> returns prices for the first 50 elements

        # bids = unfiltered_Orderbook["bids"][:10] # "asks"[0] gibt den aktuellen Kurs und Volumen wieder. Zusaetzlich [0] gibt nur Kurs des guenstigsten Asks wieder.
        # asks = unfiltered_Orderbook["asks"][:10]

        bids = [[float(price), float(quantity)]
                for price, quantity in unfiltered_Orderbook["bids"][:10]]
        asks = [[float(price), float(quantity)]
                for price, quantity in unfiltered_Orderbook["asks"][:10]]

        return {"bids": bids, "asks": asks}

    def getLowestAsk_PriceQTY(self):
        return super().getLowestAsk_PriceQTY()

    def getLowestAsk_Price(self):
        return super().getLowestAsk_Price()

    def getHighestBid_PriceQTY(self):
        return super().getHighestBid_PriceQTY()

    def getHighestBid_Price(self):
        return super().getHighestBid_Price()

    # Bitstamp requests
    # username = config('username_bitstamp', default='')
    # apikey = config('api_key_bitstamp', default='')
    # apisecret = config('api_secret_bitstamp', default='')

# print("_____________ORDERBUCH BITSTAMP_______________")
# print("______________________________________________")
testObj = Bitstamp()
orderbook = testObj.getLowestAsk_PriceQTY()
print(f"Niedrigster Ask-Preis und Menge (exkl. Gebühren): {orderbook}")
orderbook[0] = orderbook[0] * (1+testObj.fee)
print(f"Niedrigster Ask-Preis und Menge (inkl. Gebühren): {orderbook}")
orderbook = testObj.getHighestBid_PriceQTY()
print(f"Hoechster Bid-Preis und Menge (exkl. Gebühren): {orderbook}")
orderbook[0] = orderbook[0] * (1+testObj.fee)
print(f"Hoechster Bid-Preis und Menge (inkl. Gebühren): {orderbook}")
# print("__________")

#print(orderbook["asks"])
#print(orderbook["bids"])

# print(bitstamp.getLowestAsk_PriceQTY()[0])
# print(bitstamp.getHighestBid_PriceQTY())
