class ChartStatus:
    def __init__(self):
        self.coin_pairs = ["AUDCAD", "AUDCHF", "AUDJPY", "AUDUSD", "CADCHF", "CADJPY", "CHFJPY",
                           "EURAUD", "EURCAD", "EURCHF", "EURGBP", "EURJPY", "EURUSD", "GBPAUD",
                           "GBPCAD", "GBPCHF", "GBPJPY", "GBPUSD", "USDCAD", "USDCHF", "USDJPY"]
        self.cursor = (0.0, 0.0, 0.0, 0.0)
        self.offset = 0
        self.coin_pair_id = 0
        self.time_interval = 1
        self.begin = 0
        self.end = 0
        self.current = 0
        self.selected = 0
        self.anchor = 0
        self.data_manager = object
        self.modified = False

    def __call__(self, arguments: dict):
        while arguments:
            a, b = arguments.popitem()
            if self.__getattribute__(a) == b:
                pass
            else:
                self.__setattr__(a, b)
                self.modified = True
