## xschem_utils.py

import os
import re
from typing import Dict

class XschemUtils():
    @staticmethod
    def rename_annotations(file: str, annotations: Dict[str, str]) -> None:
        """
        Parses a .sch file and renames devices according to given dictionary.
        For example: {'M4': 'M2'} will rename M4 -> M2.

        It is advised to git commit before running this function.

        Args:
            file: path to .sch
            annotations: dictionary of devices to rename
        """
        if not os.path.isfile(file):
            raise FileNotFoundError(f'File not found: {file}')
        
        if not annotations:
            return
        
        with open(file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        pattern = re.compile(r'\{name=([^}\s]+)')

        def _replace_name(match: re.Match) -> str:
            old_name = match.group(1)
            new_name = annotations.get(old_name)
            if new_name is None:
                return match.group(0)
            return f'{{name={new_name}}}'[:-1]
        
        new_content = pattern.sub(lambda m: (
            f'{{name={annotations[m.group(1)]}}}'[:-1] if m.group(1) in annotations else m.group(0)
        ), content)

        if new_content == content:
            return
        
        with open(file, 'w', encoding='utf-8') as f:
            f.write(new_content)
