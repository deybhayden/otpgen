# generate-otp

Generate OTP Codes from MFA seeds. Inspired from [Managing AWS Root Passwords & MFA](https://summitroute.com/blog/2018/06/20/managing_aws_root_passwords_and_mfa/)

## install

Requires Python 3.11+.

```bash
uv sync
```

## development

Install and run the development tools:

```bash
uv sync --extra dev --python 3.11
uv run --locked --extra dev black --check .
uv run --locked --extra dev flake8 get_mfa_code.py
```

## usage

Follow the steps on the article above in setting up a virtual device for MFA on the AWS root user. Once you have the MFA seed, you can use it below:

```bash
export MFA_SEED="123495Ad3"
./get_mfa_code.py $MFA_SEED
```
