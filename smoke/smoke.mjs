import { Configuration, InformationApi, ResponseError } from "@smspool/sdk";

const api = new InformationApi(new Configuration({ basePath: "https://api.smspool.net" }));
const countries = await api.countryRetrieveAll();
if (!Array.isArray(countries) || !countries.length) throw new Error("no countries");
console.log("countries:", countries.length, JSON.stringify(countries[0]));
const rates = await api.requestSuccessRate({ service: "1" });
if (!rates) throw new Error("no success rates");
console.log("success_rate (form POST):", JSON.stringify(rates).slice(0, 80));

const authed = new InformationApi(new Configuration({ basePath: "https://api.smspool.net", accessToken: "0".repeat(32) }));
try {
  await authed.requestBalance();
  throw new Error("expected an auth error");
} catch (e) {
  if (!(e instanceof ResponseError) || ![401, 403].includes(e.response.status)) throw e;
  console.log("bad key ->", e.response.status, (await e.response.text()).slice(0, 80));
}
console.log("TYPESCRIPT OK");
