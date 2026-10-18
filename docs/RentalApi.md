# RentalApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**purchaseRental**](RentalApi.md#purchaserental) | **POST** /purchase/rental | Order Rental |
| [**rentalAutoExtend**](RentalApi.md#rentalautoextend) | **POST** /rental/auto_extend | Enable Auto Extend Rental |
| [**rentalExtend**](RentalApi.md#rentalextend) | **POST** /rental/extend | Extend Rental |
| [**rentalHistory**](RentalApi.md#rentalhistory) | **POST** /rental/history | Rental History |
| [**rentalInfo**](RentalApi.md#rentalinfo) | **POST** /rental/info | Retrieve Rental Info |
| [**rentalRefund**](RentalApi.md#rentalrefund) | **POST** /rental/refund | Refund Rental |
| [**rentalReset**](RentalApi.md#rentalreset) | **POST** /rental/reset | Reset Rental |
| [**rentalRetrieve**](RentalApi.md#rentalretrieve) | **POST** /rental/retrieve | Retrieve Active Rentals |
| [**rentalRetrieveAll**](RentalApi.md#rentalretrieveall) | **POST** /rental/retrieve_all | Retrieve Rental IDs |
| [**rentalRetrieveHistory**](RentalApi.md#rentalretrievehistory) | **POST** /rental/retrieve_history | Retrieve your rentals |
| [**rentalRetrieveMessages**](RentalApi.md#rentalretrievemessages) | **POST** /rental/retrieve_messages | Retrieve Rental Messages |
| [**rentalRetrievePricing**](RentalApi.md#rentalretrievepricing) | **POST** /rental/retrieve_pricing | Retrieve Rental Pricing |
| [**rentalRetrieveServices**](RentalApi.md#rentalretrieveservices) | **POST** /rental/retrieve_services | Retrieve Rental Services |
| [**rentalRetrieveStatus**](RentalApi.md#rentalretrievestatus) | **POST** /rental/retrieve_status | Retrieve Rental Status |
| [**rentalServicePrice**](RentalApi.md#rentalserviceprice) | **POST** /rental/service_price | Retrieve rental service price |
| [**rentalStock**](RentalApi.md#rentalstock) | **POST** /rental/stock | Retrieve Rental Stock |



## purchaseRental

> any purchaseRental(id, days, serviceId, createToken, city, state, zipcode)

Order Rental

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { PurchaseRentalRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  const body = {
    // number | Rental ID retrieved from Retrieve Rental IDs
    id: 56,
    // number
    days: 56,
    // number | Optional value on which service you\\\'d purchase the rental for (optional)
    serviceId: 56,
    // number | Create a rental token which allows you to share this specific rental (optional)
    createToken: 56,
    // string (optional)
    city: city_example,
    // string (optional)
    state: state_example,
    // string (optional)
    zipcode: zipcode_example,
  } satisfies PurchaseRentalRequest;

  try {
    const data = await api.purchaseRental(body);
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
| **id** | `number` | Rental ID retrieved from Retrieve Rental IDs | [Defaults to `undefined`] |
| **days** | `number` |  | [Defaults to `undefined`] |
| **serviceId** | `number` | Optional value on which service you\\\&#39;d purchase the rental for | [Optional] [Defaults to `undefined`] |
| **createToken** | `number` | Create a rental token which allows you to share this specific rental | [Optional] [Defaults to `undefined`] |
| **city** | `string` |  | [Optional] [Defaults to `undefined`] |
| **state** | `string` |  | [Optional] [Defaults to `undefined`] |
| **zipcode** | `string` |  | [Optional] [Defaults to `undefined`] |

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


## rentalAutoExtend

> any rentalAutoExtend(rentalCode)

Enable Auto Extend Rental

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalAutoExtendRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  const body = {
    // string | The retrieved rental code from the `Order rental` endpoint.
    rentalCode: rentalCode_example,
  } satisfies RentalAutoExtendRequest;

  try {
    const data = await api.rentalAutoExtend(body);
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
| **rentalCode** | `string` | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | [Defaults to `undefined`] |

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


## rentalExtend

> any rentalExtend(days, rentalCode)

Extend Rental

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalExtendRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  const body = {
    // number
    days: 56,
    // string | The retrieved rental code from the `Order rental` endpoint.
    rentalCode: rentalCode_example,
  } satisfies RentalExtendRequest;

  try {
    const data = await api.rentalExtend(body);
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
| **days** | `number` |  | [Defaults to `undefined`] |
| **rentalCode** | `string` | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | [Defaults to `undefined`] |

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


## rentalHistory

> any rentalHistory()

Rental History

Retrieve a history of all your rental actions.

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalHistoryRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  try {
    const data = await api.rentalHistory();
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


## rentalInfo

> any rentalInfo(rentalCode)

Retrieve Rental Info

Retrieve rental information

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalInfoRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  const body = {
    // string | The retrieved rental code from the `Order rental` endpoint.
    rentalCode: rentalCode_example,
  } satisfies RentalInfoRequest;

  try {
    const data = await api.rentalInfo(body);
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
| **rentalCode** | `string` | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | [Defaults to `undefined`] |

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


## rentalRefund

> any rentalRefund(rentalCode)

Refund Rental

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalRefundRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  const body = {
    // string | The retrieved rental code from the `Order rental` endpoint.
    rentalCode: rentalCode_example,
  } satisfies RentalRefundRequest;

  try {
    const data = await api.rentalRefund(body);
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
| **rentalCode** | `string` | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | [Defaults to `undefined`] |

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


## rentalReset

> any rentalReset(rentalCode)

Reset Rental

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalResetRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  const body = {
    // string | The retrieved rental code from the `Order rental` endpoint.
    rentalCode: rentalCode_example,
  } satisfies RentalResetRequest;

  try {
    const data = await api.rentalReset(body);
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
| **rentalCode** | `string` | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | [Defaults to `undefined`] |

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
| **404** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## rentalRetrieve

> any rentalRetrieve()

Retrieve Active Rentals

Retrieve a history of all your rental actions.

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalRetrieveRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  try {
    const data = await api.rentalRetrieve();
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


## rentalRetrieveAll

> any rentalRetrieveAll(type)

Retrieve Rental IDs

Retrieve available rental products. Each listing includes &#x60;is_refundable&#x60; (&#x60;0&#x60; or &#x60;1&#x60;), &#x60;refund_within&#x60; (hours after purchase a refund is allowed; &#x60;0&#x60; when not refundable), and &#x60;refund_min_days&#x60; (minimum duration that is eligible for a refund; &#x60;0&#x60; when there is no duration floor or the rental is never refundable). Refunds also require that no messages have been received.

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalRetrieveAllRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new RentalApi();

  const body = {
    // number | Choose whether the rental is extendable or not with a 0 or 1
    type: 56,
  } satisfies RentalRetrieveAllRequest;

  try {
    const data = await api.rentalRetrieveAll(body);
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
| **type** | `number` | Choose whether the rental is extendable or not with a 0 or 1 | [Defaults to `undefined`] |

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
| **404** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## rentalRetrieveHistory

> any rentalRetrieveHistory()

Retrieve your rentals

List every rental on your account that was not refunded, including expired ones. For the actions taken on your rentals (activations, extensions, refunds) use **Rental History** instead.  - &#x60;rental&#x60;: the rental ID from **Retrieve Rental IDs** - &#x60;rental_code&#x60;: use it with the other rental endpoints, such as **Retrieve Rental Messages** - &#x60;expiration_date&#x60;: Unix timestamp - &#x60;source&#x60;: the pool the number comes from - &#x60;state&#x60;: the US state of the number, or &#x60;Unknown&#x60;

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalRetrieveHistoryRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  try {
    const data = await api.rentalRetrieveHistory();
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


## rentalRetrieveMessages

> any rentalRetrieveMessages(rentalCode)

Retrieve Rental Messages

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalRetrieveMessagesRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  const body = {
    // string | The retrieved rental code from the `Order rental` endpoint.
    rentalCode: rentalCode_example,
  } satisfies RentalRetrieveMessagesRequest;

  try {
    const data = await api.rentalRetrieveMessages(body);
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
| **rentalCode** | `string` | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | [Defaults to `undefined`] |

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


## rentalRetrievePricing

> any rentalRetrievePricing(id, service)

Retrieve Rental Pricing

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalRetrievePricingRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new RentalApi();

  const body = {
    // number | The rental ID retrieved from `Retrieve Rental IDs`
    id: 56,
    // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint (optional)
    service: service_example,
  } satisfies RentalRetrievePricingRequest;

  try {
    const data = await api.rentalRetrievePricing(body);
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
| **id** | `number` | The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; | [Defaults to `undefined`] |
| **service** | `string` | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | [Optional] [Defaults to `undefined`] |

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


## rentalRetrieveServices

> any rentalRetrieveServices(rental)

Retrieve Rental Services

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalRetrieveServicesRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new RentalApi();

  const body = {
    // number | The rental ID retrieved from `Retrieve Rental IDs` (optional)
    rental: 56,
  } satisfies RentalRetrieveServicesRequest;

  try {
    const data = await api.rentalRetrieveServices(body);
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
| **rental** | `number` | The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; | [Optional] [Defaults to `undefined`] |

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


## rentalRetrieveStatus

> any rentalRetrieveStatus(rentalCode)

Retrieve Rental Status

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalRetrieveStatusRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  const body = {
    // string | The retrieved rental code from the `Order rental` endpoint.
    rentalCode: rentalCode_example,
  } satisfies RentalRetrieveStatusRequest;

  try {
    const data = await api.rentalRetrieveStatus(body);
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
| **rentalCode** | `string` | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | [Defaults to `undefined`] |

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


## rentalServicePrice

> any rentalServicePrice(id, serviceId)

Retrieve rental service price

Some rentals are bound to a single service. This returns the price of a rental for that service, with the custom pricing on your account applied.

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalServicePriceRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new RentalApi(config);

  const body = {
    // number | The rental ID retrieved from `Retrieve Rental IDs`
    id: 56,
    // number | The service ID retrieved from `Retrieve Rental Services`
    serviceId: 56,
  } satisfies RentalServicePriceRequest;

  try {
    const data = await api.rentalServicePrice(body);
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
| **id** | `number` | The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; | [Defaults to `undefined`] |
| **serviceId** | `number` | The service ID retrieved from &#x60;Retrieve Rental Services&#x60; | [Defaults to `undefined`] |

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


## rentalStock

> any rentalStock(id, days, serviceId)

Retrieve Rental Stock

### Example

```ts
import {
  Configuration,
  RentalApi,
} from '@smspool/sdk';
import type { RentalStockRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new RentalApi();

  const body = {
    // number | The rental ID retrieved from `Retrieve Rental IDs`
    id: 56,
    // number
    days: 56,
    // number (optional)
    serviceId: 56,
  } satisfies RentalStockRequest;

  try {
    const data = await api.rentalStock(body);
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
| **id** | `number` | The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; | [Defaults to `undefined`] |
| **days** | `number` |  | [Defaults to `undefined`] |
| **serviceId** | `number` |  | [Optional] [Defaults to `undefined`] |

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

