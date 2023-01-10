"""
    Credits: 
    https://stackoverflow.com/questions/29503339/how-to-get-all-values-from-python-enum-class
"""

from enum import Enum


class ExtendedEnum(Enum):
    @classmethod
    def list(cls):
        return [c.name for c in cls]
