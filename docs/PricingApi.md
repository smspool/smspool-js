# PricingApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**requestPrice**](PricingApi.md#requestprice) | **POST** /request/price | Retrieve specific price &amp; Success Rate |
| [**requestPricing**](PricingApi.md#requestpricing) | **POST** /request/pricing | Retrieve all pricing |



## requestPrice

> any requestPrice(country, service, pool, skipSuccessRate)

Retrieve specific price &amp; Success Rate

### Example

```ts
import {
  Configuration,
  PricingApi,
} from '@smspool/sdk';
import type { RequestPriceRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new PricingApi();

  const body = {
    // string | Country retrieved from \\\'\\\'Country list\\\" endpoint
    country: country_example,
    // string | Service retrieved from \\\'\\\'Service list\\\" endpoint
    service: service_example,
    // string | Pool retrieved from \\\'\\\'Pool list\\\" endpoint (optional)
    pool: pool_example,
    // string (optional)
    skipSuccessRate: skipSuccessRate_example,
  } satisfies RequestPriceRequest;

  try {
    const data = await api.requestPrice(body);
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
| **country** | `string` | Country retrieved from \\\&#39;\\\&#39;Country list\\\&quot; endpoint | [Defaults to `undefined`] |
| **service** | `string` | Service retrieved from \\\&#39;\\\&#39;Service list\\\&quot; endpoint | [Defaults to `undefined`] |
| **pool** | `string` | Pool retrieved from \\\&#39;\\\&#39;Pool list\\\&quot; endpoint | [Optional] [Defaults to `undefined`] |
| **skipSuccessRate** | `string` |  | [Optional] [Defaults to `undefined`] |

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


## requestPricing

> any requestPricing(country, service, pool, maxPrice)

Retrieve all pricing

### Example

```ts
import {
  Configuration,
  PricingApi,
} from '@smspool/sdk';
import type { RequestPricingRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new PricingApi();

  const body = {
    // string | Optional parameter to request services per country (optional)
    country: country_example,
    // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint (optional)
    service: service_example,
    // string (optional)
    pool: pool_example,
    // number (optional)
    maxPrice: 8.14,
  } satisfies RequestPricingRequest;

  try {
    const data = await api.requestPricing(body);
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
| **country** | `string` | Optional parameter to request services per country | [Optional] [Defaults to `undefined`] |
| **service** | `string` | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | [Optional] [Defaults to `undefined`] |
| **pool** | `string` |  | [Optional] [Defaults to `undefined`] |
| **maxPrice** | `number` |  | [Optional] [Defaults to `undefined`] |

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

