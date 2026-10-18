#!/usr/bin/env bash
# Sets the package metadata npm shows. The generator's template hard-codes
# "OpenAPI client for <name>" and "OpenAPI-Generator" as the author.
set -euo pipefail
cd "$(dirname "$0")/.."
python3 - package.json <<'PY'
import json, sys
path = sys.argv[1]
data = json.load(open(path))
data["description"] = "Official JavaScript and TypeScript client for the SMSPool API: SMS verification numbers, rentals, pre-orders and eSIMs."
data["author"] = "SMSPool (https://www.smspool.net)"
data["keywords"] = ["smspool", "sms", "sms-verification", "otp", "phone-verification", "api", "sdk", "typescript"]
data["homepage"] = "https://api.smspool.net/docs"
data["bugs"] = {"url": "https://github.com/smspool/smspool-js/issues"}
with open(path, "w") as f:
    json.dump(data, f, indent=2, ensure_ascii=False)
    f.write("\n")
PY
