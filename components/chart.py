import pyrr
from text.data_manager import DataManager


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
        self.data_manager = DataManager
        self.modified = False

    def __call__(self, arguments: dict):
        while arguments:
            a, b = arguments.popitem()
            if self.__getattribute__(a) == b:
                pass
            else:
                self.__setattr__(a, b)
                self.modified = True


class Chart:
    def __init__(self, status: ChartStatus, geometry: dict):
        """

        :param status:
        :param geometry: {"width": int, "height": int, "x_offset": int, "y_offset": int}
        """
        self.status = status
        self.geometry = geometry
        self.projection = pyrr.matrix44.create_orthogonal_projection_matrix(
            -self.geometry["x_offset"],
            -self.geometry["x_offset"] + self.geometry["width"],
            -1440 - self.geometry["y_offset"] + self.geometry["height"],
            -self.geometry["y_offset"] + self.geometry["height"],
            -1600,
            1600
        )
