# CarrierApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**carrierPaidLookup**](CarrierApi.md#carrierpaidlookup) | **POST** /carrier/paid_lookup | Lookup |



## carrierPaidLookup

> any carrierPaidLookup(phonenumber)

Lookup

This API endpoint is used to perform a paid lookup for a phone number. The request is sent via an HTTP POST method to the following URL: &#x60;https://api.smspool.net/carrier/paid_lookup&#x60;  &#x60;&#x60;&#x60; json {   \&quot;success\&quot;: true,   \&quot;phonenumber\&quot;: \&quot;\&quot;,   \&quot;country\&quot;: \&quot;\&quot;,   \&quot;carrier\&quot;: \&quot;\&quot;,   \&quot;carrier_type\&quot;: \&quot;\&quot;,   \&quot;charge\&quot;: 0 }   &#x60;&#x60;&#x60;  The &#x60;success&#x60; field indicates whether the lookup was successful or not. The &#x60;phonenumber&#x60; field represents the phone number for which the lookup was performed. The &#x60;country&#x60; field indicates the country associated with the phone number. The &#x60;carrier&#x60; field provides the name of the carrier associated with the phone number. The &#x60;carrier_type&#x60; field specifies the type of carrier. The &#x60;charge&#x60; field represents the cost charged for the lookup operation.  Please note that specific values for &#x60;phonenumber&#x60;, &#x60;country&#x60;, &#x60;carrier&#x60;, and &#x60;carrier_type&#x60; were not provided in the response, and the &#x60;charge&#x60; field had a value of 0.  To use this endpoint, send an HTTP POST request to the provided URL with the necessary parameters. The request should include the phone number for which you want to perform the lookup. The response will contain the details of the carrier and associated information.  Make sure to handle any errors that may occur during the lookup process and check the &#x60;success&#x60; field in the response to determine the outcome of the operation.

### Example

```ts
import {
  Configuration,
  CarrierApi,
} from '@smspool/sdk';
import type { CarrierPaidLookupRequest } from '@smspool/sdk';

async function example() {
  console.log("🚀 Testing @smspool/sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CarrierApi(config);

  const body = {
    // number
    phonenumber: 56,
  } satisfies CarrierPaidLookupRequest;

  try {
    const data = await api.carrierPaidLookup(body);
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
| **phonenumber** | `number` |  | [Defaults to `undefined`] |

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

