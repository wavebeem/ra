#!/usr/bin/sage
import sys

def main():
    n = 1
    while true:
        m = n + 1

        sum1 = sum(prime_factors(n))
        sum2 = sum(prime_factors(m))

        if sum1 == sum2:
            print n, m

            sys.stdout.flush()

        n += 1

try:
    main()
except KeyboardInterrupt:
    pass
