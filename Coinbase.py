from Exchange import Exchange
import ccxt


class Coinbase(Exchange):

    def __init__(self):
        self.name = "Coinbase"
        self.fee = 0.006
        self.coinbaseobj = ccxt.coinbasepro()

    def buy(self, amount, price):
        print(f"Bought {amount} at {price} on Coinbase.")

    def sell(self, amount, price):
        print(f"Sold {amount} at {price} on Coinbase.")

    def getOrderbook(self):
        unfiltered_Orderbook = self.coinbaseobj.fetch_order_book('BTC/USDT')
        bids = [[float(price), float(quantity)]
                for price, quantity in unfiltered_Orderbook["bids"][:10]]
        asks = [[float(price), float(quantity)]
                for price, quantity in unfiltered_Orderbook["asks"][:10]]
        return {"bids": bids, "asks": asks}

    # def getLowestAsk_PriceQTY(self):
    #     price_qty = self.getOrderbook()["asks"][0]
    #     return price_qty

    # def getLowestAsk_Price(self):
    #     price = self.getLowestAsk_PriceQTY()[0]
    #     return price

    # def getHighestBid_Price(self):
    #     price = self.getHighestBid_PriceQTY()[0]
    #     return price

    # def getHighestBid_PriceQTY(self):
    #     price_qty = self.getOrderbook()["bids"][0]
    #     return price_qty

    def getLowestAsk_PriceQTY(self):
        return super().getLowestAsk_PriceQTY()

    def getLowestAsk_Price(self):
        return super().getLowestAsk_Price()

    def getHighestBid_PriceQTY(self):
        return super().getHighestBid_PriceQTY()

    def getHighestBid_Price(self):
        return super().getHighestBid_Price()

        

testObj = Coinbase()
orderbook = testObj.getLowestAsk_PriceQTY()
print(f"Niedrigster Ask-Preis und Menge (exkl. Gebühren): {orderbook}")
orderbook[0] = orderbook[0] * (1+testObj.fee)
print(f"Niedrigster Ask-Preis und Menge (inkl. Gebühren): {orderbook}")
orderbook = testObj.getHighestBid_PriceQTY()
print(f"Hoechster Bid-Preis und Menge (exkl. Gebühren): {orderbook}")
orderbook[0] = orderbook[0] * (1+testObj.fee)
print(f"Hoechster Bid-Preis und Menge (inkl. Gebühren): {orderbook}")

# print(testCB.getLowestAsk_PriceQTY())
# print(testCB.getLowestAsk_Price())
# print(testCB.getHighestBid_PriceQTY())
# print(testCB.getHighestBid_Price())