# InformationApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**countryRetrieveAll**](InformationApi.md#countryretrieveall) | **GET** /country/retrieve_all | Country list |
| [**poolRetrieveAll**](InformationApi.md#poolretrieveall) | **POST** /pool/retrieve_all | Pool list |
| [**poolRetrieveValid**](InformationApi.md#poolretrievevalid) | **POST** /pool/retrieve_valid | Suggested Pools |
| [**requestAutoCountry**](InformationApi.md#requestautocountry) | **POST** /request/auto_country | Pick the best country for a service |
| [**requestBalance**](InformationApi.md#requestbalance) | **POST** /request/balance | Balance |
| [**requestSuccessRate**](InformationApi.md#requestsuccessrate) | **POST** /request/success_rate | Retrieve country success rates per service |
| [**requestSuggestedCountries**](InformationApi.md#requestsuggestedcountries) | **POST** /request/suggested_countries | Suggested Countries |
| [**serviceRetrieveAll**](InformationApi.md#serviceretrieveall) | **GET** /service/retrieve_all | Service list |



## countryRetrieveAll

> any countryRetrieveAll(showAll)

Country list

This API endpoint is used to retrieve the full country list for SMSPool requests. It sends an HTTP GET request to the URL &#x60;https://api.smspool.net/country/retrieve_all&#x60;.

### Example

```ts
import {
  Configuration,
  InformationApi,
} from '@smspool/sdk';
import type { CountryRetrieveAllRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new InformationApi();

  const body = {
    // string (optional)
    showAll: showAll_example,
  } satisfies CountryRetrieveAllRequest;

  try {
    const data = await api.countryRetrieveAll(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **showAll** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

**any**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## poolRetrieveAll

> any poolRetrieveAll()

Pool list

This API endpoint is used to retrieve a list of our active pools for SMSPool requests. It sends an HTTP POST request to the URL &#x60;https://api.smspool.net/pool/retrieve_all&#x60;.

### Example

```ts
import {
  Configuration,
  InformationApi,
} from '@smspool/sdk';
import type { PoolRetrieveAllRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new InformationApi();

  try {
    const data = await api.poolRetrieveAll();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

**any**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## poolRetrieveValid

> any poolRetrieveValid(service, country, web, includeStock)

Suggested Pools

This API endpoint is used to retrieve suggested pools for SMSPool requests. It sends an HTTP POST request to the URL &#x60;https://api.smspool.net/pool/retrieve_valid&#x60;.  Please use either the service ID, or the service name as service param.

### Example

```ts
import {
  Configuration,
  InformationApi,
} from '@smspool/sdk';
import type { PoolRetrieveValidRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new InformationApi();

  const body = {
    // string | Service retrieved from \\\'\\\'Service list\\\" endpoint
    service: service_example,
    // string | Country retrieved from \\\'\\\'Country list\\\" endpoint
    country: country_example,
    // string | Return array format (optional)
    web: web_example,
    // string (optional)
    includeStock: includeStock_example,
  } satisfies PoolRetrieveValidRequest;

  try {
    const data = await api.poolRetrieveValid(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **service** | `string` | Service retrieved from \\\&#39;\\\&#39;Service list\\\&quot; endpoint | [Defaults to `undefined`] |
| **country** | `string` | Country retrieved from \\\&#39;\\\&#39;Country list\\\&quot; endpoint | [Defaults to `undefined`] |
| **web** | `string` | Return array format | [Optional] [Defaults to `undefined`] |
| **includeStock** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

**any**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## requestAutoCountry

> any requestAutoCountry(service, pricingOption)

Pick the best country for a service

Returns the country SMSPool would order from for this service when you do not want to choose one (the quick order\&#39;s \&quot;Pick for me\&quot;). It sends an HTTP POST request to the URL &#x60;https://api.smspool.net/request/auto_country&#x60;.  Every country with stock is scored on its expected success rate, weighed down when little stock backs it, minus a little per dollar, plus a bonus when it matches the country your request\&#39;s IP resolves to (a local number verifies more often). The IP country is only used for that comparison; it is neither stored nor returned. Ties go to more stock, then the lower price. With &#x60;pricing_option&#x3D;1&#x60; the cheapest country within reach of the best score wins instead.  &#x60;success_rate&#x60; is that expected rate. Where the service has at least 20 recent orders in the country it is the measured rate and &#x60;rate_measured&#x60; is true. With fewer, it is an estimate that blends those orders (&#x60;rate_orders&#x60; of them) with how the country does across all services and how the service does elsewhere, and &#x60;rate_measured&#x60; is false.  Send &#x60;auto_country&#x3D;1&#x60; to &#x60;/purchase/sms&#x60; to order with the same choice in one call.

### Example

```ts
import {
  Configuration,
  InformationApi,
} from '@smspool/sdk';
import type { RequestAutoCountryRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new InformationApi();

  const body = {
    // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
    service: service_example,
    // number | Set to 1 to prefer the cheapest country among those close to the best score; 0 (default) picks purely on the score. (optional)
    pricingOption: 56,
  } satisfies RequestAutoCountryRequest;

  try {
    const data = await api.requestAutoCountry(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **service** | `string` | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | [Defaults to `undefined`] |
| **pricingOption** | `number` | Set to 1 to prefer the cheapest country among those close to the best score; 0 (default) picks purely on the score. | [Optional] [Defaults to `undefined`] |

### Return type

**any**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## requestBalance

> any requestBalance()

Balance

Retrieves your account balance in USD.  ### Request Parameters  Only your API key, sent as a bearer token.  ### Response  A JSON object with a &#x60;balance&#x60; field: the balance as a string with two decimals, for example &#x60;\&quot;5.00\&quot;&#x60;.

### Example

```ts
import {
  Configuration,
  InformationApi,
} from '@smspool/sdk';
import type { RequestBalanceRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new InformationApi(config);

  try {
    const data = await api.requestBalance();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

**any**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Error |  -  |
| **401** | Malformed API key |  -  |
| **403** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## requestSuccessRate

> any requestSuccessRate(service, country)

Retrieve country success rates per service

This API endpoint is used to retrieve success per country for SMSPool requests. It sends an HTTP POST request to the URL &#x60;https://api.smspool.net/request/success_rate&#x60;.  Please use either the service ID, or the service name as service param.

### Example

```ts
import {
  Configuration,
  InformationApi,
} from '@smspool/sdk';
import type { RequestSuccessRateRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new InformationApi();

  const body = {
    // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
    service: service_example,
    // string | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint (optional)
    country: country_example,
  } satisfies RequestSuccessRateRequest;

  try {
    const data = await api.requestSuccessRate(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **service** | `string` | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | [Defaults to `undefined`] |
| **country** | `string` | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint | [Optional] [Defaults to `undefined`] |

### Return type

**any**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## requestSuggestedCountries

> any requestSuggestedCountries(service)

Suggested Countries

This API endpoint is used to retrieve suggested countries for SMS pool requests. It sends an HTTP POST request to the URL &#x60;https://api.smspool.net/request/suggested_countries&#x60;.  Please use either the service ID, or the service name as service param.

### Example

```ts
import {
  Configuration,
  InformationApi,
} from '@smspool/sdk';
import type { RequestSuggestedCountriesRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new InformationApi();

  const body = {
    // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
    service: service_example,
  } satisfies RequestSuggestedCountriesRequest;

  try {
    const data = await api.requestSuggestedCountries(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **service** | `string` | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | [Defaults to `undefined`] |

### Return type

**any**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## serviceRetrieveAll

> any serviceRetrieveAll(country)

Service list

This API endpoint is used to retrieve the full service list for SMSPool requests. It sends an HTTP GET request to the URL &#x60;https://api.smspool.net/service/retrieve_all&#x60;.

### Example

```ts
import {
  Configuration,
  InformationApi,
} from '@smspool/sdk';
import type { ServiceRetrieveAllRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new InformationApi();

  const body = {
    // string (optional)
    country: 1,
  } satisfies ServiceRetrieveAllRequest;

  try {
    const data = await api.serviceRetrieveAll(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **country** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

**any**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

