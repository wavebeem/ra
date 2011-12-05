#!/usr/bin/sage
# vim: set syn=python:
import sys

def expand(pairs):
    return [pair[0]
        for pair in pairs
        for n    in xrange(pair[1])]

def main():
    n = 1
    while True:
        m = n + 1

        sum1 = sum(expand(list(factor(n))))
        sum2 = sum(expand(list(factor(m))))

        if sum1 == sum2:
            print n, m

            sys.stdout.flush()

        n += 1

try:
    main()
except KeyboardInterrupt:
    pass
