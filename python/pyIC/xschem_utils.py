## xschem_utils.py

import os
import re
from typing import Dict, List

class XschemUtils():
    @staticmethod
    def edit_device(file: str, param: Dict[str, Dict[str, str]]) -> None:
        """
        Parses a .sch file and updates W, L, ng, and M according to
        given dictionary. For example:
        {
            'M1': {'w': 1, 'l': 1, 'ng': 1, 'm': 1} 
            'M2': {'w': 5, 'l': 1, 'ng': 1, 'm': 2} 
        }

        It is advised to git commit before running this function.

        Args:
            file: path to .sch
            param: dictionary of parameters
        """
        if not os.path.isfile(file):
            raise FileNotFoundError(f'File not found: {file}')
        
        if not param:
            return
        
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()
        
        # TODO: This is a garbage way to handle entire-file search and replace
        for device, params in param.items():
            for i, line in enumerate(lines):
                if f"{{name={device}\n" in line:
                    for par, val in params.items():
                        for j in range(0, 10):
                            if f'{par.lower()}=' in lines[i+j]:
                                lines[i+j] = f'{par.lower()}={val}\n'
                                break
                    break
        
        with open(file, 'w', encoding='utf-8') as f:
            f.writelines(lines)
        print('Succesfully updated device(s).')

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
        
        # TODO: Avoid regex if possible :(
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
        print('Succesfully updated annotations.')
