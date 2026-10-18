# VoucherApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**voucherBulkGenerate**](VoucherApi.md#voucherbulkgenerate) | **POST** /voucher/bulk_generate | Bulk generate vouchers |
| [**voucherDelete**](VoucherApi.md#voucherdelete) | **POST** /voucher/delete | Delete voucher |
| [**voucherGenerate**](VoucherApi.md#vouchergenerate) | **POST** /voucher/generate | Generate voucher |
| [**voucherRetrieve**](VoucherApi.md#voucherretrieve) | **POST** /voucher/retrieve | Retrieve vouchers |



## voucherBulkGenerate

> any voucherBulkGenerate(amount, quantity)

Bulk generate vouchers

### Example

```ts
import {
  Configuration,
  VoucherApi,
} from '@smspool/sdk';
import type { VoucherBulkGenerateRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VoucherApi(config);

  const body = {
    // number
    amount: 8.14,
    // number
    quantity: 56,
  } satisfies VoucherBulkGenerateRequest;

  try {
    const data = await api.voucherBulkGenerate(body);
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
| **amount** | `number` |  | [Defaults to `undefined`] |
| **quantity** | `number` |  | [Defaults to `undefined`] |

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
| **200** | JSON response |  -  |
| **401** | Malformed API key |  -  |
| **403** | Unknown or revoked API key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## voucherDelete

> any voucherDelete(voucher)

Delete voucher

### Example

```ts
import {
  Configuration,
  VoucherApi,
} from '@smspool/sdk';
import type { VoucherDeleteRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VoucherApi(config);

  const body = {
    // string | Your voucher code
    voucher: voucher_example,
  } satisfies VoucherDeleteRequest;

  try {
    const data = await api.voucherDelete(body);
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
| **voucher** | `string` | Your voucher code | [Defaults to `undefined`] |

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
| **200** | JSON response |  -  |
| **401** | Malformed API key |  -  |
| **403** | Unknown or revoked API key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## voucherGenerate

> any voucherGenerate(amount)

Generate voucher

### Example

```ts
import {
  Configuration,
  VoucherApi,
} from '@smspool/sdk';
import type { VoucherGenerateRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VoucherApi(config);

  const body = {
    // number | The amount per promocode
    amount: 8.14,
  } satisfies VoucherGenerateRequest;

  try {
    const data = await api.voucherGenerate(body);
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
| **amount** | `number` | The amount per promocode | [Defaults to `undefined`] |

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
| **200** | JSON response |  -  |
| **401** | Malformed API key |  -  |
| **403** | Unknown or revoked API key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## voucherRetrieve

> any voucherRetrieve()

Retrieve vouchers

### Example

```ts
import {
  Configuration,
  VoucherApi,
} from '@smspool/sdk';
import type { VoucherRetrieveRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VoucherApi(config);

  try {
    const data = await api.voucherRetrieve();
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
| **200** | JSON response |  -  |
| **401** | Malformed API key |  -  |
| **403** | Unknown or revoked API key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

