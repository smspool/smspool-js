# SMSApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**purchaseSms**](SMSApi.md#purchasesms) | **POST** /purchase/sms | Order SMS |
| [**requestActive**](SMSApi.md#requestactive) | **POST** /request/active | Active orders |
| [**requestArchive**](SMSApi.md#requestarchive) | **POST** /request/archive | Archive all orders |
| [**requestAreacodes**](SMSApi.md#requestareacodes) | **POST** /request/areacodes | Request available areacodes |
| [**requestHistory**](SMSApi.md#requesthistory) | **POST** /request/history | Order History |
| [**smsActivate**](SMSApi.md#smsactivate) | **POST** /sms/activate | Activate SMS |
| [**smsAllStock**](SMSApi.md#smsallstock) | **POST** /sms/all_stock | One-time stock for all services |
| [**smsCancel**](SMSApi.md#smscancel) | **POST** /sms/cancel | Cancel SMS |
| [**smsCancelAll**](SMSApi.md#smscancelall) | **POST** /sms/cancel_all | Cancel All SMS |
| [**smsCheck**](SMSApi.md#smscheck) | **POST** /sms/check | Check SMS |
| [**smsCheckResend**](SMSApi.md#smscheckresend) | **POST** /sms/check_resend | Check Resend |
| [**smsClearCache**](SMSApi.md#smsclearcache) | **POST** /sms/clear_cache | Clear SMS Cache |
| [**smsMissed**](SMSApi.md#smsmissed) | **POST** /sms/missed | Missed SMS |
| [**smsReactivate**](SMSApi.md#smsreactivate) | **POST** /sms/reactivate | Reactivate SMS |
| [**smsResend**](SMSApi.md#smsresend) | **POST** /sms/resend | Resend |
| [**smsStock**](SMSApi.md#smsstock) | **POST** /sms/stock | One-time SMS stock |
| [**smsUnarchive**](SMSApi.md#smsunarchive) | **POST** /sms/unarchive | Unarchive order |



## purchaseSms

> any purchaseSms(service, country, pool, maxPrice, pricingOption, quantity, areacode, exclude, createToken, activationType, carrier, phonenumber, software)

Order SMS

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { PurchaseSmsRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // string | The service or number retrieved from the `Service List` endpoint
    service: service_example,
    // string | The country in ISO format or number retrieved from the `Country List` endpoint (optional)
    country: country_example,
    // string | The pool or number retrieved from the `Pool List` endpoint (optional) (optional)
    pool: pool_example,
    // number | The max price you are willing to pay per number (optional)
    maxPrice: 8.14,
    // number | Set to 0 if you\\\'d like the cheapest numbers, set to 1 for highest success rate (optional)
    pricingOption: 56,
    // number | Quantity of numbers ordered (optional)
    quantity: 56,
    // string | Areacodes you would like to include or exclude in JSON format (optional)
    areacode: areacode_example,
    // number | Set exclude to 1 if you would like to exclude all listed area codes. (optional)
    exclude: 56,
    // number | Optional param; set to 1 if you\\\'d like to create a token link that anyone can access. (optional)
    createToken: 56,
    // string | Options: SMS, VOICE, FLASH. SMS will receive regular SMS, VOICE will receive phone calls that mentions the SMS and FLASH is for FLASH calls for verification. (optional)
    activationType: activationType_example,
    // number | Options: 1 or 2. Pick a carrier (only works for pool Foxtrot US) (optional)
    carrier: 56,
    // number | In case you want to select a specific phone number to order (optional)
    phonenumber: 56,
    // number (optional)
    software: 56,
  } satisfies PurchaseSmsRequest;

  try {
    const data = await api.purchaseSms(body);
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
| **service** | `string` | The service or number retrieved from the &#x60;Service List&#x60; endpoint | [Defaults to `undefined`] |
| **country** | `string` | The country in ISO format or number retrieved from the &#x60;Country List&#x60; endpoint | [Optional] [Defaults to `undefined`] |
| **pool** | `string` | The pool or number retrieved from the &#x60;Pool List&#x60; endpoint (optional) | [Optional] [Defaults to `undefined`] |
| **maxPrice** | `number` | The max price you are willing to pay per number | [Optional] [Defaults to `undefined`] |
| **pricingOption** | `number` | Set to 0 if you\\\&#39;d like the cheapest numbers, set to 1 for highest success rate | [Optional] [Defaults to `undefined`] |
| **quantity** | `number` | Quantity of numbers ordered | [Optional] [Defaults to `undefined`] |
| **areacode** | `string` | Areacodes you would like to include or exclude in JSON format | [Optional] [Defaults to `undefined`] |
| **exclude** | `number` | Set exclude to 1 if you would like to exclude all listed area codes. | [Optional] [Defaults to `undefined`] |
| **createToken** | `number` | Optional param; set to 1 if you\\\&#39;d like to create a token link that anyone can access. | [Optional] [Defaults to `undefined`] |
| **activationType** | `string` | Options: SMS, VOICE, FLASH. SMS will receive regular SMS, VOICE will receive phone calls that mentions the SMS and FLASH is for FLASH calls for verification. | [Optional] [Defaults to `undefined`] |
| **carrier** | `number` | Options: 1 or 2. Pick a carrier (only works for pool Foxtrot US) | [Optional] [Defaults to `undefined`] |
| **phonenumber** | `number` | In case you want to select a specific phone number to order | [Optional] [Defaults to `undefined`] |
| **software** | `number` |  | [Optional] [Defaults to `undefined`] |

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
| **422** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## requestActive

> any requestActive()

Active orders

The recommended endpoint to retrieve your current active orders, this will display all your orders at the same time. We recommend using this endpoint to iterate through your active orders to retrieve your SMS messages.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { RequestActiveRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  try {
    const data = await api.requestActive();
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


## requestArchive

> any requestArchive()

Archive all orders

This API endpoint is used to archive a request in the SMS Pool system. The HTTP POST request should be sent to &#x60;https://api.smspool.net/request/archive&#x60;.  ### Request Parameters  The \\&#x60;key\\&#x60; parameter is required for this endpoint, this is your API key.  ### Response  The response for this API endpoint will have a status code of 200, indicating a successful request. The response body will be in JSON format and will contain the following properties:  - &#x60;success&#x60; (integer): A flag indicating the success of the request. A value of 0 indicates failure. - &#x60;message&#x60; (string): An optional message providing additional information about the request. In this case, the message is empty.       Please note that the response may contain additional properties not mentioned here, but they can be ignored for the purpose of this documentation.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { RequestArchiveRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  try {
    const data = await api.requestArchive();
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


## requestAreacodes

> any requestAreacodes(service, country, pool)

Request available areacodes

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { RequestAreacodesRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new SMSApi();

  const body = {
    // string | The service or number retrieved from the `Service List` endpoint
    service: service_example,
    // string | The country in ISO format or number retrieved from the `Country List` endpoint
    country: country_example,
    // string | The pool or number retrieved from the `Pool List` endpoint (optional)
    pool: pool_example,
  } satisfies RequestAreacodesRequest;

  try {
    const data = await api.requestAreacodes(body);
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
| **service** | `string` | The service or number retrieved from the &#x60;Service List&#x60; endpoint | [Defaults to `undefined`] |
| **country** | `string` | The country in ISO format or number retrieved from the &#x60;Country List&#x60; endpoint | [Defaults to `undefined`] |
| **pool** | `string` | The pool or number retrieved from the &#x60;Pool List&#x60; endpoint (optional) | [Defaults to `undefined`] |

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
| **200** | JSON response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## requestHistory

> any requestHistory(start, length, search)

Order History

This API endpoint is used to retrieve the history of SMS requests. It is an HTTP POST request that should be made to the following URL: &#x60;https://api.smspool.net/request/history&#x60;.  The request requires the \\&#x60;key\\&#x60; parameter which is your API key.  The response returned by the API is a JSON array. Each element in the array represents a historical SMS request and contains the following properties:  - &#x60;cost&#x60;: The cost of the SMS request. - &#x60;order_code&#x60;: The order code associated with the SMS request. - &#x60;phonenumber&#x60;: The phone number to which the SMS was sent. - &#x60;code&#x60;: The code associated with the SMS request. - &#x60;full_code&#x60;: The full code associated with the SMS request. - &#x60;short_name&#x60;: The short name associated with the SMS request. - &#x60;service&#x60;: The service associated with the SMS request. - &#x60;status&#x60;: The status of the SMS request. - &#x60;pool&#x60;: The pool associated with the SMS request. - &#x60;timestamp&#x60;: The timestamp of the SMS request. - &#x60;completed_on&#x60;: The completion date of the SMS request. - &#x60;expiry&#x60;: The expiry time of the SMS request. - &#x60;time_left&#x60;: The time left for the SMS request to expire.       Please note that the values for the properties are not provided in the response example, so they may be empty or null.  The last execution of this API request returned a response with a status code of 200, indicating a successful execution. The response body contained an array of SMS request history objects.  Please refer to the API documentation for more details on how to use this endpoint and interpret the response.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { RequestHistoryRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // number | Which row you\\\'d like to start from (optional)
    start: 56,
    // number | Max length of all rows (optional)
    length: 56,
    // string | Search query for phone number, order_code, service or country (optional)
    search: search_example,
  } satisfies RequestHistoryRequest;

  try {
    const data = await api.requestHistory(body);
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
| **start** | `number` | Which row you\\\&#39;d like to start from | [Optional] [Defaults to `undefined`] |
| **length** | `number` | Max length of all rows | [Optional] [Defaults to `undefined`] |
| **search** | `string` | Search query for phone number, order_code, service or country | [Optional] [Defaults to `undefined`] |

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
| **403** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## smsActivate

> any smsActivate(orderid)

Activate SMS

This endpoint will forcefully activate an SMS to set it available for future resends, please keep in mind that these orders are NOT eligible for a refund after activating them.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsActivateRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // string
    orderid: orderid_example,
  } satisfies SmsActivateRequest;

  try {
    const data = await api.smsActivate(body);
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
| **404** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## smsAllStock

> any smsAllStock(country, service, pool)

One-time stock for all services

This API endpoint is used to retrieve one-time SMS stock in the SMSPool system. The HTTP POST request should be sent to &#x60;https://api.smspool.net/sms/stock&#x60;.  ### Request Parameters  The \\&#x60;key\\&#x60; parameter is required for this endpoint, this is your API key.  ### Response  The response for this API endpoint will have a status code of 200, indicating a successful request. The response body will be in JSON format and will contain the following properties:  - &#x60;success&#x60; (integer): A flag indicating the success of the request. A value of 0 indicates failure.      - &#x60;message&#x60; (string): An optional message providing additional information about the request. In this case, the message is empty.       Please note that the response may contain additional properties not mentioned here, but they can be ignored for the purpose of this documentation.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsAllStockRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new SMSApi();

  const body = {
    // string | Country retrieved from \\\'\\\'Country list\\\" endpoint (optional) (optional)
    country: country_example,
    // string | Service retrieved from \\\'\\\'Service list\\\" endpoint (optional) (optional)
    service: service_example,
    // string | Pool retrieved from \\\'\\\'Pool list\\\" endpoint (optional) (optional)
    pool: pool_example,
  } satisfies SmsAllStockRequest;

  try {
    const data = await api.smsAllStock(body);
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
| **country** | `string` | Country retrieved from \\\&#39;\\\&#39;Country list\\\&quot; endpoint (optional) | [Optional] [Defaults to `undefined`] |
| **service** | `string` | Service retrieved from \\\&#39;\\\&#39;Service list\\\&quot; endpoint (optional) | [Optional] [Defaults to `undefined`] |
| **pool** | `string` | Pool retrieved from \\\&#39;\\\&#39;Pool list\\\&quot; endpoint (optional) | [Optional] [Defaults to `undefined`] |

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


## smsCancel

> any smsCancel(orderid, orderids, expiry, ban)

Cancel SMS

# Cancel your SMS order  ## Responses  | **Success** | {\&quot;success\&quot;:1} | | **Fail** | {\&quot;success\&quot;:0} |

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsCancelRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // string (optional)
    orderid: orderid_example,
    // string (optional)
    orderids: orderids_example,
    // number (optional)
    expiry: 56,
    // number (optional)
    ban: 56,
  } satisfies SmsCancelRequest;

  try {
    const data = await api.smsCancel(body);
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
| **orderid** | `string` |  | [Optional] [Defaults to `undefined`] |
| **orderids** | `string` |  | [Optional] [Defaults to `undefined`] |
| **expiry** | `number` |  | [Optional] [Defaults to `undefined`] |
| **ban** | `number` |  | [Optional] [Defaults to `undefined`] |

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


## smsCancelAll

> any smsCancelAll()

Cancel All SMS

# Cancel your SMS order  ## Responses  | **Success** | {\&quot;success\&quot;:1} | | **Fail** | {\&quot;success\&quot;:0} |

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsCancelAllRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  try {
    const data = await api.smsCancelAll();
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


## smsCheck

> any smsCheck(orderid)

Check SMS

You may run into ratelimits while using this endpoint for high rate requests, we recommend using /request/active instead as it will list all your orders at the same time.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsCheckRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // string
    orderid: orderid_example,
  } satisfies SmsCheckRequest;

  try {
    const data = await api.smsCheck(body);
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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## smsCheckResend

> any smsCheckResend(orderid)

Check Resend

Check if the order can be resent or not.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsCheckResendRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // string
    orderid: orderid_example,
  } satisfies SmsCheckResendRequest;

  try {
    const data = await api.smsCheckResend(body);
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
| **404** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## smsClearCache

> any smsClearCache()

Clear SMS Cache

# Clear your previous SMS cache to allocate previous numbers again  ## Responses  | **Success** | {\&quot;success\&quot;:1} |   | **Fail** | {\&quot;success\&quot;:0} |

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsClearCacheRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  try {
    const data = await api.smsClearCache();
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


## smsMissed

> any smsMissed(phonenumber, limit)

Missed SMS

Some messages arrive on a number from your one-time orders but cannot finish the order, such as Ticketmaster and Seated codes or Hark reward payouts. This returns those messages, the same ones the Missed SMS tool on the website shows. Only numbers from pool Foxtrot are covered.  The newest messages come first. &#x60;url&#x60;, &#x60;code&#x60; and &#x60;email&#x60; hold the first link, code and email address found in the message, or an empty string.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsMissedRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // number | Only return messages for this number, including the country code. Leave it out for all your numbers. (optional)
    phonenumber: 56,
    // number | Maximum number of messages. Defaults to 100, at most 500. (optional)
    limit: 56,
  } satisfies SmsMissedRequest;

  try {
    const data = await api.smsMissed(body);
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
| **phonenumber** | `number` | Only return messages for this number, including the country code. Leave it out for all your numbers. | [Optional] [Defaults to `undefined`] |
| **limit** | `number` | Maximum number of messages. Defaults to 100, at most 500. | [Optional] [Defaults to `undefined`] |

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


## smsReactivate

> any smsReactivate(orderid)

Reactivate SMS

This endpoint will reactivate an order, please keep in mind that these orders are NOT eligible for a refund after activating them.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsReactivateRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // string
    orderid: orderid_example,
  } satisfies SmsReactivateRequest;

  try {
    const data = await api.smsReactivate(body);
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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## smsResend

> any smsResend(orderid)

Resend

# Resend  Resend the order. Keep in mind that some pools will have a charge per resend. You can see whether the resend will have a charge using the \&quot;Check Resend\&quot; endpoint  ## Responses  | **Success** | {\&quot;success\&quot;:1,\&quot;message\&quot;:\&quot;Number has been requested again\&quot;,\&quot;resend\&quot;:0} |   | **Fail** | {\&quot;success\&quot;:0,\&quot;message\&quot;:\&quot;Phonenumber could not be requested again, try later again.\&quot;,\&quot;resend\&quot;:0} |

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsResendRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // string
    orderid: orderid_example,
  } satisfies SmsResendRequest;

  try {
    const data = await api.smsResend(body);
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
| **404** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## smsStock

> any smsStock(country, service, pool, includePrice)

One-time SMS stock

This API endpoint is used to retrieve one-time SMS stock in the SMSPool system. The HTTP POST request should be sent to &#x60;https://api.smspool.net/sms/stock&#x60;.  ### Request Parameters  The \\&#x60;key\\&#x60; parameter is required for this endpoint, this is your API key.  ### Response  The response for this API endpoint will have a status code of 200, indicating a successful request. The response body will be in JSON format and will contain the following properties:  - &#x60;success&#x60; (integer): A flag indicating the success of the request. A value of 0 indicates failure.      - &#x60;message&#x60; (string): An optional message providing additional information about the request. In this case, the message is empty.       Please note that the response may contain additional properties not mentioned here, but they can be ignored for the purpose of this documentation.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsStockRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const api = new SMSApi();

  const body = {
    // string | Country retrieved from \\\'\\\'Country list\\\" endpoint
    country: country_example,
    // string | Service retrieved from \\\'\\\'Service list\\\" endpoint
    service: service_example,
    // string | Pool retrieved from \\\'\\\'Pool list\\\" endpoint (optional)
    pool: pool_example,
    // number (optional)
    includePrice: 56,
  } satisfies SmsStockRequest;

  try {
    const data = await api.smsStock(body);
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
| **includePrice** | `number` |  | [Optional] [Defaults to `undefined`] |

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


## smsUnarchive

> any smsUnarchive(orderid)

Unarchive order

Move an archived order back to your active orders, so it shows up in **Active orders** and on your dashboard again. Use **Archive all orders** to archive them.

### Example

```ts
import {
  Configuration,
  SMSApi,
} from '@smspool/sdk';
import type { SmsUnarchiveRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new SMSApi(config);

  const body = {
    // string | The order ID retrieved from /purchase/sms
    orderid: orderid_example,
  } satisfies SmsUnarchiveRequest;

  try {
    const data = await api.smsUnarchive(body);
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
| **orderid** | `string` | The order ID retrieved from /purchase/sms | [Defaults to `undefined`] |

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

