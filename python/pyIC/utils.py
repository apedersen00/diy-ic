## utils.py

import math

class IcUtils():
    @staticmethod
    def eng_format(value: float, unit='') -> str:
        """
        Converts a float to a string in engineering notation.
        """
        if value == 0:
            return f"0 {unit}"
        exponent = int(math.floor(math.log10(abs(value)) / 3) * 3)
        mantissa = value / 10**exponent
        return f"{mantissa:.3f}e{exponent} {unit}".strip()
