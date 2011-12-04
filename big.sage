#!/usr/bin/sage
# vim: set syn=python:

import sys

def check_prime(p):
    if p.denominator() == 1:
        return is_prime(int(p))
    else:
        return False

def do_ruth_aaron(p):
    d = 20*p + 1
    v = 5*p*(9*p - 8)
    n = (d**2 + (4*v + 1)*d - 4)/2
    M = n*(n + 2*v)

    if not check_prime(n) \
    or not check_prime(n + 2*v) \
    or not check_prime(2*n - d) \
    or not check_prime(90*(p**2) - 61*p - 6):
        return None
    else:
        return (M - 1, M)

def main():
    for p in Primes():
        pair = do_ruth_aaron(p)

        if pair is not None:
            p1, p2 = pair
            print p1, p2

            sys.stdout.flush()

try:
    main()
except KeyboardInterrupt:
    pass
