# postoplan_api.api.AuthApi

## Load the API package
```dart
import 'package:postoplan_api/api.dart';
```

All URIs are relative to *https://stage.postoplan.app/oapi/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authGetUser**](AuthApi.md#authgetuser) | **GET** /auth/user | User info
[**authLogin**](AuthApi.md#authlogin) | **POST** /auth/login | Log in


# **authGetUser**
> User authGetUser()

User info

### Example 
```dart
import 'package:postoplan_api/api.dart';
// TODO Configure API key authorization: api-token
//defaultApiClient.getAuthentication<ApiKeyAuth>('api-token').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api-token').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();

try { 
    final result = api_instance.authGetUser();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authGetUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[api-token](../README.md#api-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authLogin**
> AuthResponse authLogin(authRequest)

Log in

### Example 
```dart
import 'package:postoplan_api/api.dart';
// TODO Configure API key authorization: api-key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api-key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api-key').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final authRequest = AuthRequest(); // AuthRequest | 

try { 
    final result = api_instance.authLogin(authRequest);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authRequest** | [**AuthRequest**](AuthRequest.md)|  | [optional] 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

