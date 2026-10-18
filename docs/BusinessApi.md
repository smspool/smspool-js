# BusinessApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**businessCreate**](BusinessApi.md#businesscreate) | **POST** /business/create | Register user |
| [**businessUserHistory**](BusinessApi.md#businessuserhistory) | **POST** /business/user/history | History |
| [**businessUserUpdate**](BusinessApi.md#businessuserupdate) | **POST** /business/user/update | Update |
| [**businessUsers**](BusinessApi.md#businessusers) | **GET** /business/users | Retrieve users |



## businessCreate

> any businessCreate(username, password, dailySpendLimit)

Register user

### Example

```ts
import {
  Configuration,
  BusinessApi,
} from 'smspool-sdk';
import type { BusinessCreateRequest } from 'smspool-sdk';

async function example() {
  console.log("🚀 Testing smspool-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BusinessApi(config);

  const body = {
    // string
    username: username_example,
    // string
    password: password_example,
    // number | Optional daily spend cap in USD. Omit for no limit. (optional)
    dailySpendLimit: 8.14,
  } satisfies BusinessCreateRequest;

  try {
    const data = await api.businessCreate(body);
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
| **username** | `string` |  | [Defaults to `undefined`] |
| **password** | `string` |  | [Defaults to `undefined`] |
| **dailySpendLimit** | `number` | Optional daily spend cap in USD. Omit for no limit. | [Optional] [Defaults to `undefined`] |

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


## businessUserHistory

> any businessUserHistory(id)

History

### Example

```ts
import {
  Configuration,
  BusinessApi,
} from 'smspool-sdk';
import type { BusinessUserHistoryRequest } from 'smspool-sdk';

async function example() {
  console.log("🚀 Testing smspool-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BusinessApi(config);

  const body = {
    // number | User ID retrievd from `Retrieve users` endpoint
    id: 56,
  } satisfies BusinessUserHistoryRequest;

  try {
    const data = await api.businessUserHistory(body);
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
| **id** | `number` | User ID retrievd from &#x60;Retrieve users&#x60; endpoint | [Defaults to `undefined`] |

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


## businessUserUpdate

> any businessUserUpdate(id, password, balance, active, dailySpendLimit)

Update

### Example

```ts
import {
  Configuration,
  BusinessApi,
} from 'smspool-sdk';
import type { BusinessUserUpdateRequest } from 'smspool-sdk';

async function example() {
  console.log("🚀 Testing smspool-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BusinessApi(config);

  const body = {
    // number | User ID retrievd from `Retrieve users` endpoint
    id: 56,
    // string | Leave empty if you do not wish to update the password (optional)
    password: password_example,
    // number | Leave empty if you do not wish to update the balance, sets the balance by the requested value (optional)
    balance: 8.14,
    // number | Disable/enable user account (optional) (optional)
    active: 56,
    // number | Daily spend cap in USD. Leave empty to leave unchanged, send -1 to remove the cap, 0 to block all spending. (optional)
    dailySpendLimit: 8.14,
  } satisfies BusinessUserUpdateRequest;

  try {
    const data = await api.businessUserUpdate(body);
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
| **id** | `number` | User ID retrievd from &#x60;Retrieve users&#x60; endpoint | [Defaults to `undefined`] |
| **password** | `string` | Leave empty if you do not wish to update the password | [Optional] [Defaults to `undefined`] |
| **balance** | `number` | Leave empty if you do not wish to update the balance, sets the balance by the requested value | [Optional] [Defaults to `undefined`] |
| **active** | `number` | Disable/enable user account (optional) | [Optional] [Defaults to `undefined`] |
| **dailySpendLimit** | `number` | Daily spend cap in USD. Leave empty to leave unchanged, send -1 to remove the cap, 0 to block all spending. | [Optional] [Defaults to `undefined`] |

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


## businessUsers

> any businessUsers()

Retrieve users

### Example

```ts
import {
  Configuration,
  BusinessApi,
} from 'smspool-sdk';
import type { BusinessUsersRequest } from 'smspool-sdk';

async function example() {
  console.log("🚀 Testing smspool-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BusinessApi(config);

  try {
    const data = await api.businessUsers();
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
| **403** | Unknown or revoked API key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

