# StatusApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**up**](StatusApi.md#up) | **GET** /up | Health check |



## up

> any up()

Health check

For uptime monitors. Needs no API key. &#x60;db&#x60; and &#x60;cache&#x60; say whether the database and the cache answered; &#x60;status&#x60; is &#x60;ok&#x60; when both did. The result is refreshed every few seconds.

### Example

```ts
import {
  Configuration,
  StatusApi,
} from '@smspool/sdk';
import type { UpRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new StatusApi();

  try {
    const data = await api.up();
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
| **503** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

