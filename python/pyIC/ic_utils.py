## utils.py

import math
import subprocess
import numpy as np
from tabulate import tabulate

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

    @staticmethod
    def parallel(res_list):
        sum = 0
        for res in res_list:
            sum += 1 / res
        return 1 / sum

    @staticmethod
    def getop(path: str, model: str, length: float, vds: float, gmid: float, id: float):
        result = subprocess.run(
            ["poetry", "run", "python", "main.py", "getop", model, str(length), str(vds), str(gmid), str(id)],
            cwd=path,
            capture_output=True,
            text=True
        )
        result_dict = {}
        result = result.stdout.split('\n')

        gmoverid    = float(result[1].split(' ')[-1])
        gmro        = float(result[3].split(' ')[-1])
        ft          = float(result[4].split(' ')[-1])
        gm          = gmoverid * (id * 1e-9)

        result_dict['gmid'] = gmoverid
        result_dict['vgs']  = float(result[2].split(' ')[-1])
        result_dict['gmro'] = gmro
        result_dict['ft']   = ft
        result_dict['l']    = length
        result_dict['w']    = float(result[5].split(' ')[-1])
        result_dict['gm']   = gm
        result_dict['ro']   = gmro / gm
        result_dict['id']   = id
        result_dict['cgg']  = (gm / (2 * np.pi)) / ft
        
        return result_dict

    @staticmethod
    def printop(op) -> None:
        table = []
        for key, item in op.items():
            val = item
            if key == 'id':
                val = item * 1e-9
            table.append([key, IcUtils.eng_format(val)])
        print(tabulate(table, tablefmt='rounded_outline', disable_numparse=True, colalign=['left', 'right']))
