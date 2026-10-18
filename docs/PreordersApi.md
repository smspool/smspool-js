# PreordersApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**preorderCancel**](PreordersApi.md#preordercancel) | **POST** /preorder/cancel | Cancel |
| [**preorderCheck**](PreordersApi.md#preordercheck) | **POST** /preorder/check | Check |
| [**preorderCreate**](PreordersApi.md#preordercreate) | **POST** /preorder/create | Create |
| [**preorderPrice**](PreordersApi.md#preorderprice) | **POST** /preorder/price | Price |
| [**preorderRetrieve**](PreordersApi.md#preorderretrieve) | **POST** /preorder/retrieve | Retrieve |



## preorderCancel

> any preorderCancel(orderid)

Cancel

### Example

```ts
import {
  Configuration,
  PreordersApi,
} from 'smspool-sdk';
import type { PreorderCancelRequest } from 'smspool-sdk';

async function example() {
  console.log("🚀 Testing smspool-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PreordersApi(config);

  const body = {
    // string
    orderid: orderid_example,
  } satisfies PreorderCancelRequest;

  try {
    const data = await api.preorderCancel(body);
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
| **orderid** | `string` |  | [Defaults to `undefined`] |

### Return type

**any**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Error |  -  |
| **401** | Malformed API key |  -  |
| **403** | Unknown or revoked API key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## preorderCheck

> any preorderCheck(orderid)

Check

### Example

```ts
import {
  Configuration,
  PreordersApi,
} from 'smspool-sdk';
import type { PreorderCheckRequest } from 'smspool-sdk';

async function example() {
  console.log("🚀 Testing smspool-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PreordersApi(config);

  const body = {
    // string
    orderid: orderid_example,
  } satisfies PreorderCheckRequest;

  try {
    const data = await api.preorderCheck(body);
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
| **orderid** | `string` |  | [Defaults to `undefined`] |

### Return type

**any**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Malformed API key |  -  |
| **403** | Unknown or revoked API key |  -  |
| **404** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## preorderCreate

> any preorderCreate(service, country, pool, maxPrice, areacode)

Create

### Example

```ts
import {
  Configuration,
  PreordersApi,
} from 'smspool-sdk';
import type { PreorderCreateRequest } from 'smspool-sdk';

async function example() {
  console.log("🚀 Testing smspool-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PreordersApi(config);

  const body = {
    // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
    service: service_example,
    // string | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint
    country: country_example,
    // string
    pool: pool_example,
    // number
    maxPrice: 8.14,
    // string (optional)
    areacode: areacode_example,
  } satisfies PreorderCreateRequest;

  try {
    const data = await api.preorderCreate(body);
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
| **country** | `string` | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint | [Defaults to `undefined`] |
| **pool** | `string` |  | [Defaults to `undefined`] |
| **maxPrice** | `number` |  | [Defaults to `undefined`] |
| **areacode** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

**any**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Error |  -  |
| **401** | Malformed API key |  -  |
| **403** | Unknown or revoked API key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## preorderPrice

> any preorderPrice(service, country, pool)

Price

### Example

```ts
import {
  Configuration,
  PreordersApi,
} from 'smspool-sdk';
import type { PreorderPriceRequest } from 'smspool-sdk';

async function example() {
  console.log("🚀 Testing smspool-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PreordersApi(config);

  const body = {
    // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
    service: service_example,
    // string | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint
    country: country_example,
    // string
    pool: pool_example,
  } satisfies PreorderPriceRequest;

  try {
    const data = await api.preorderPrice(body);
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
| **country** | `string` | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint | [Defaults to `undefined`] |
| **pool** | `string` |  | [Defaults to `undefined`] |

### Return type

**any**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Malformed API key |  -  |
| **403** | Unknown or revoked API key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## preorderRetrieve

> any preorderRetrieve()

Retrieve

This API endpoint allows you to retrieve preorders from the SMS Pool system. It is an HTTP POST request sent to the URL &#x60;https://api.smspool.net/preorder/retrieve&#x60;.  ### Request Parameters  This endpoint requires the \\&#x60;key\\&#x60; parameter which is your API key.

### Example

```ts
import {
  Configuration,
  PreordersApi,
} from 'smspool-sdk';
import type { PreorderRetrieveRequest } from 'smspool-sdk';

async function example() {
  console.log("🚀 Testing smspool-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PreordersApi(config);

  try {
    const data = await api.preorderRetrieve();
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
| **401** | Malformed API key |  -  |
| **403** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

