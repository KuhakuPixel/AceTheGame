from ACEG.utils.str_utils import str_is_hex


def test_str_is_hex():
    assert str_is_hex("0x2323") == True
    assert str_is_hex("0xa2323") == True
    assert str_is_hex("0xa2323") == True
    assert str_is_hex("0xffff") == True
    assert str_is_hex("0xFFFFF") == True
    assert str_is_hex("-0xFFFFF") == True
    assert str_is_hex("-0xabcdef123") == True
    # should also work without 0x base
    assert str_is_hex("afabb") == True
    # hex digit cant contain g
    assert str_is_hex("0xgfff") == False
    # invalid 0x base
    assert str_is_hex("0xxgfff") == False
    # not valid because negative sign
    # contains space, expect the caller to
    # validate the string
    assert str_is_hex("- 0x123") == False

