# InformationApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**countryRetrieveAll**](InformationApi.md#countryretrieveall) | **GET** /country/retrieve_all | Country list |
| [**poolRetrieveAll**](InformationApi.md#poolretrieveall) | **POST** /pool/retrieve_all | Pool list |
| [**poolRetrieveValid**](InformationApi.md#poolretrievevalid) | **POST** /pool/retrieve_valid | Suggested Pools |
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


## requestBalance

> any requestBalance()

Balance

This HTTP POST request is used to retrieve the balance for a specific SMSPool. The request is sent to the URL &#x60;https://api.smspool.net/request/balance&#x60;.  ### Request Parameters  This request require the \\&#x60;key\\&#x60; param which is your API key  ### Response  The response to this request will have a status code of 200 if the request is successful. The response body will be in JSON format and will include a &#x60;balance&#x60; field. However, the last execution of this request returned an empty string for the &#x60;balance&#x60; field.  Please note that the actual value of the &#x60;balance&#x60; field may vary depending on the user and its configuration.

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

