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

    @staticmethod
    def db2gain(db_val: float) -> float:
        """
        Converts a dB20 value to gain.
        """
        val = 10 ** (db_val / 20)
        return val
    
    @staticmethod
    def gain2db(gain_val: float) -> float:
        """
        Converts a gain value to dB20.
        """
        val = 20 * math.log10(gain_val)
        return val