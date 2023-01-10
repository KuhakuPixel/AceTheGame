

def str_is_hex(val: str) -> bool:
    try: 
        int(val, 16)
        return True

    except ValueError:
        return False
