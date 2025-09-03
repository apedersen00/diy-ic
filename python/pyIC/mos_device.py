## mos_device.py

class MosDevice():
    def __init__(self) -> None:
        self.gmid   = 0
        self.vgs    = 0 # [V]
        self.gmro   = 0
        self.ft     = 0 # [Hz]
        self.l      = 0 # [um]
        self.w      = 0 # [w]
        self.gm     = 0 # [S]
        self.ro     = 0 # [Ohm]
        self.id     = 0 # [nA]
    
    def load_op(self, op) -> None:
        self.gmid   = op['gmid']
        self.vgs    = op['vgs']
        self.gmro   = op['gmro']
        self.ft     = op['ft']
        self.l      = op['l']
        self.w      = op['w']
        self.gm     = op['gm']
        self.ro     = op['ro']
        self.id     = op['id']
