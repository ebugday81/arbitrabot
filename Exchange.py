import abc


class Exchange(metaclass=abc.ABCMeta):
    name: str
    fee: float

    @abc.abstractmethod
    def buy(self, amount, price):
        pass

    @abc.abstractmethod
    def sell(self, amount, price):
        pass

    @abc.abstractmethod
    def getOrderbook(self):
        pass

    def getLowestAsk_PriceQTY(self):
        price_qty = self.getOrderbook()["asks"][0]
        return price_qty

    def getLowestAsk_Price(self):
        price = self.getLowestAsk_PriceQTY()[0]
        return price

    def getHighestBid_PriceQTY(self):
        price_qty = self.getOrderbook()["bids"][0]
        return price_qty

    def getHighestBid_Price(self):
        price = self.getHighestBid_PriceQTY()[0]
        return price
