# ESIMsApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**esimDelete**](ESIMsApi.md#esimdelete) | **POST** /esim/delete | Delete eSIM |
| [**esimHistory**](ESIMsApi.md#esimhistory) | **POST** /esim/history | View eSIM history |
| [**esimLabelUpdate**](ESIMsApi.md#esimlabelupdate) | **POST** /esim/label/update | Update eSIM label |
| [**esimPlans**](ESIMsApi.md#esimplans) | **POST** /esim/plans | View eSIM plans per country |
| [**esimPricing**](ESIMsApi.md#esimpricing) | **POST** /esim/pricing | View eSIM countries |
| [**esimProfile**](ESIMsApi.md#esimprofile) | **POST** /esim/profile | View eSIM profile |
| [**esimPurchase**](ESIMsApi.md#esimpurchase) | **POST** /esim/purchase | Purchase eSIM |
| [**esimTopup**](ESIMsApi.md#esimtopup) | **POST** /esim/topup | Top up eSIM |
| [**esimTopupPlans**](ESIMsApi.md#esimtopupplans) | **POST** /esim/topup_plans | Top Up Plans |



## esimDelete

> any esimDelete(transactionId)

Delete eSIM

### Example

```ts
import {
  Configuration,
  ESIMsApi,
} from '@smspool/sdk';
import type { EsimDeleteRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new ESIMsApi(config);

  const body = {
    // string | transactionId retrieved from /esim/purchase
    transactionId: transactionId_example,
  } satisfies EsimDeleteRequest;

  try {
    const data = await api.esimDelete(body);
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
| **transactionId** | `string` | transactionId retrieved from /esim/purchase | [Defaults to `undefined`] |

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


## esimHistory

> any esimHistory(start, length, search)

View eSIM history

### Example

```ts
import {
  Configuration,
  ESIMsApi,
} from '@smspool/sdk';
import type { EsimHistoryRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new ESIMsApi(config);

  const body = {
    // number | Start page (optional)
    start: 56,
    // number | Amount of rows per page (optional)
    length: 56,
    // string | Alphanumeric search (optional)
    search: search_example,
  } satisfies EsimHistoryRequest;

  try {
    const data = await api.esimHistory(body);
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
| **start** | `number` | Start page | [Optional] [Defaults to `undefined`] |
| **length** | `number` | Amount of rows per page | [Optional] [Defaults to `undefined`] |
| **search** | `string` | Alphanumeric search | [Optional] [Defaults to `undefined`] |

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


## esimLabelUpdate

> any esimLabelUpdate(transactionId, label)

Update eSIM label

Set or clear the label of one of your eSIMs. The label is returned as &#x60;label&#x60; by **View eSIM history**, so you can use it to tell your eSIMs apart.  A label can be up to 30 characters long and may only contain letters, numbers and spaces. Leave &#x60;label&#x60; out, or send it empty, to remove the label.

### Example

```ts
import {
  Configuration,
  ESIMsApi,
} from '@smspool/sdk';
import type { EsimLabelUpdateRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new ESIMsApi(config);

  const body = {
    // string | transactionId retrieved from /esim/purchase
    transactionId: transactionId_example,
    // string | The new label: letters, numbers and spaces, at most 30 characters. Empty or left out removes the label. (optional)
    label: label_example,
  } satisfies EsimLabelUpdateRequest;

  try {
    const data = await api.esimLabelUpdate(body);
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
| **transactionId** | `string` | transactionId retrieved from /esim/purchase | [Defaults to `undefined`] |
| **label** | `string` | The new label: letters, numbers and spaces, at most 30 characters. Empty or left out removes the label. | [Optional] [Defaults to `undefined`] |

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


## esimPlans

> any esimPlans(country)

View eSIM plans per country

### Example

```ts
import {
  Configuration,
  ESIMsApi,
} from '@smspool/sdk';
import type { EsimPlansRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new ESIMsApi(config);

  const body = {
    // string | ISO 3166 country code
    country: country_example,
  } satisfies EsimPlansRequest;

  try {
    const data = await api.esimPlans(body);
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
| **country** | `string` | ISO 3166 country code | [Defaults to `undefined`] |

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


## esimPricing

> any esimPricing(start, length, search)

View eSIM countries

### Example

```ts
import {
  Configuration,
  ESIMsApi,
} from '@smspool/sdk';
import type { EsimPricingRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new ESIMsApi(config);

  const body = {
    // number | Start page (optional)
    start: 56,
    // number | Amount of rows per page (optional)
    length: 56,
    // string | Search query for country (optional)
    search: search_example,
  } satisfies EsimPricingRequest;

  try {
    const data = await api.esimPricing(body);
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
| **start** | `number` | Start page | [Optional] [Defaults to `undefined`] |
| **length** | `number` | Amount of rows per page | [Optional] [Defaults to `undefined`] |
| **search** | `string` | Search query for country | [Optional] [Defaults to `undefined`] |

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


## esimProfile

> any esimProfile(transactionId)

View eSIM profile

### Example

```ts
import {
  Configuration,
  ESIMsApi,
} from '@smspool/sdk';
import type { EsimProfileRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new ESIMsApi(config);

  const body = {
    // string | transactionId retrieved from /esim/purchase (optional)
    transactionId: transactionId_example,
  } satisfies EsimProfileRequest;

  try {
    const data = await api.esimProfile(body);
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
| **transactionId** | `string` | transactionId retrieved from /esim/purchase | [Optional] [Defaults to `undefined`] |

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


## esimPurchase

> any esimPurchase(plan)

Purchase eSIM

### Example

```ts
import {
  Configuration,
  ESIMsApi,
} from '@smspool/sdk';
import type { EsimPurchaseRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new ESIMsApi(config);

  const body = {
    // number | The plan ID which is obtained from /esim/pricing
    plan: 56,
  } satisfies EsimPurchaseRequest;

  try {
    const data = await api.esimPurchase(body);
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
| **plan** | `number` | The plan ID which is obtained from /esim/pricing | [Defaults to `undefined`] |

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


## esimTopup

> any esimTopup(transactionId, plan)

Top up eSIM

### Example

```ts
import {
  Configuration,
  ESIMsApi,
} from '@smspool/sdk';
import type { EsimTopupRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new ESIMsApi(config);

  const body = {
    // string | Transaction ID retrieved from eSIM history
    transactionId: transactionId_example,
    // number | Topup plan retrieved from \\\"Top Up Plans\\\"
    plan: 56,
  } satisfies EsimTopupRequest;

  try {
    const data = await api.esimTopup(body);
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
| **transactionId** | `string` | Transaction ID retrieved from eSIM history | [Defaults to `undefined`] |
| **plan** | `number` | Topup plan retrieved from \\\&quot;Top Up Plans\\\&quot; | [Defaults to `undefined`] |

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


## esimTopupPlans

> any esimTopupPlans(plan)

Top Up Plans

### Example

```ts
import {
  Configuration,
  ESIMsApi,
} from '@smspool/sdk';
import type { EsimTopupPlansRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new ESIMsApi();

  const body = {
    // number | `plan` retrieved from eSIM history
    plan: 56,
  } satisfies EsimTopupPlansRequest;

  try {
    const data = await api.esimTopupPlans(body);
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
| **plan** | `number` | &#x60;plan&#x60; retrieved from eSIM history | [Defaults to `undefined`] |

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

