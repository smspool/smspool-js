# SMSPool JavaScript / TypeScript SDK

Official JavaScript / TypeScript client for the [SMSPool API](https://api.smspool.net/docs): one-time SMS
verification numbers, rentals, pre-orders, eSIMs and more.

Package: [`smspool-sdk`](https://www.npmjs.com/package/smspool-sdk) on npm.

## Install

```bash
npm install smspool-sdk
```

## Quick start

Get your API key from [your settings page](https://www.smspool.net/my/settings).

```ts
import { Configuration, InformationApi, SMSApi } from "smspool-sdk";

const config = new Configuration({ accessToken: "YOUR_API_KEY" });
console.log(await new InformationApi(config).requestBalance());
const countries = await new InformationApi(config).countryRetrieveAll();
const order = await new SMSApi(config).purchaseSms({ country: "US", service: "1" });
```

Works in Node 18+ and browsers (it uses `fetch`). Errors (HTTP 4xx/5xx) throw a
`ResponseError`; `e.response` is the `Response`.

## Calling endpoints

Every endpoint in the [API reference](https://api.smspool.net/docs) is a method named after
its path, on the class for its section: `/sms/check` is `smsCheck()` on `SMSApi`. Endpoints that need
your API key send it as a bearer token.

Responses are returned as decoded JSON exactly as the API sends them: many endpoints answer
`200` with `"success": 0` and a `message` when a request is refused, so check `success`.

- API reference with examples: https://api.smspool.net/docs

## How this SDK is made

The code is generated from the API's OpenAPI spec
([openapi.json](https://api.smspool.net/openapi.json)) with
[OpenAPI Generator](https://openapi-generator.tech). Do not edit generated files by hand:
a workflow regenerates them every week and opens a pull request when the API changed.
Hand-written files are listed in `.openapi-generator-ignore`.

## Releasing (maintainers)

1. Set the new version in `openapi-generator.yaml` (`npmVersion`).
2. Run `scripts/generate.sh` (needs Docker) and `scripts/smoke.sh`, then commit.
3. Tag and push: `git tag vX.Y.Z && git push origin vX.Y.Z`.

The Release workflow checks the tag against the version, runs the smoke test and publishes.
Publishing needs the `NPM_TOKEN` secret (an npm granular access token for `smspool-sdk`).

## License

MIT
