# generate-otp

Generate OTP Codes from MFA seeds. Inspired from [Managing AWS Root Passwords & MFA](https://summitroute.com/blog/2018/06/20/managing_aws_root_passwords_and_mfa/)

## install

```bash
uv sync
```

## development

Use Python 3.10+ to install and run all development tools:

```bash
uv sync --extra dev --python 3.10
uv run --locked --extra dev black --check .
uv run --locked --extra dev flake8 get_mfa_code.py
```

OTP generation still supports Python 3.8+. On Python 3.8 and 3.9, the `dev`
extra omits Black because patched releases require Python 3.10+.

## usage

Follow the steps on the article above in setting up a virtual device for MFA on the AWS root user. Once you have the MFA seed, you can use it below:

```bash
export MFA_SEED="123495Ad3"
./get_mfa_code.py $MFA_SEED
```
