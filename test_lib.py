import lib

def test_power():
    assert lib.getfibonacci(0) == 0
    assert lib.getfibonacci(1) == 1
    assert lib.getfibonacci(2) == 1
    assert lib.getfibonacci(3) == 2
    assert lib.getfibonacci(4) == 3
    assert lib.getfibonacci(5) == 5
    assert lib.getfibonacci(6) == 8
    assert lib.getfibonacci(7) == 13
    assert lib.getfibonacci(8) == 21
