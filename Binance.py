import requests
from Exchange import Exchange
from decouple import config
import json
import time

class Binance(Exchange):
    """
    Binance exchange implementation.
    """

    def __init__(self):
        self.name = "Binance"
        self.fee = 0.001
        self.api_base_url = "https://api.binance.com"

    def getOrderbook(self):
        orderbookkey = "https://api.binance.com/api/v3/ticker/bookTicker?symbol=BTCUSDT"
        tickerKey = "https://api.binance.com/api/v3/ticker/price?symbol=BTCUSDT"
        orderBookDepth = "https://api.binance.com/api/v3/depth?symbol=BTCUSDT&limit=10"

        url = f"{self.api_base_url}/api/v3/depth"
        params = {
            "symbol": "BTCUSDT",
            "limit": 10
        }

        response = requests.get(url, params=params)
       # print(response.status_code)
        # response = response.json()
        # response = json.dumps(response, indent=2)


        if response.status_code == 200:
            unfiltered_Orderbook = response.json()
            # print("______ _unfiltered_Orderbook AUSGABE")
            # print(type(unfiltered_Orderbook))
            # print(unfiltered_Orderbook)
            # print("______ _unfiltered_Orderbook AUSGABE ENDE")

            bids = [[float(price), float(quantity)] for price, quantity in unfiltered_Orderbook["bids"][:10]]
            asks = [[float(price), float(quantity)] for price, quantity in unfiltered_Orderbook["asks"][:10]]
            return {"bids": bids, "asks": asks}
        else:
            return None

    def getLowestAsk_PriceQTY(self):
        return super().getLowestAsk_PriceQTY()
    
    def getLowestAsk_Price(self):
        return super().getLowestAsk_Price()
    
    def getHighestBid_PriceQTY(self):
        return super().getHighestBid_PriceQTY()
    
    def getHighestBid_Price(self):
        return super().getHighestBid_Price()

    def buy(self, amount, price):
        print(f"Bought {amount} at {price} on Binance.")

    def sell(self, amount, price):
        print(f"Sold {amount} at {price} on Binance.")


# print("_____________ORDERBUCH Binance_______________")
# print("______________________________________________")
#testObj = Binance()
#orderbook = testObj.getLowestAsk_PriceQTY()
#print(f"Niedrigster Ask-Preis und Menge (exkl. Gebühren): {orderbook}")
#orderbook[0] = orderbook[0] * (1+testObj.fee)
#print(f"Niedrigster Ask-Preis und Menge (inkl. Gebühren): {orderbook}")
#orderbook = testObj.getHighestBid_PriceQTY()
#print(f"Hoechster Bid-Preis und Menge (exkl. Gebühren): {orderbook}")
#orderbook[0] = orderbook[0] * (1+testObj.fee)
#print(f"Hoechster Bid-Preis und Menge (inkl. Gebühren): {orderbook}")

# print("Asks")
# #print(orderbook["bids"])

# start = time.time()
# print(binance.getLowestAsk_PriceQTY())
# end = time.time()
# print(start)
# print(end - start)
# print(end)
# end = time.time()
# print(binance.getLowestAsk_Price())
# print(end - start)

# print("Bids")
# print(binance.getHighestBid_PriceQTY())
# print(binance.getHighestBid_Price())