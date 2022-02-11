#!/usr/bin/env python
import sys
import pyotp

if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit("Exactly 1 argument is expected: mfa_seed_value")

    totp = pyotp.TOTP(sys.argv[1])
    print(totp.now())
