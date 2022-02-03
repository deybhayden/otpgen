#!/usr/bin/python
# https://github.com/pyotp/pyotp
import os
import pyotp

totp = pyotp.TOTP(os.environ["MFA_SEED"])
print(totp.now())
