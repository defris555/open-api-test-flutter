# postoplan_api.api.LanguageApi

## Load the API package
```dart
import 'package:postoplan_api/api.dart';
```

All URIs are relative to *https://stage.postoplan.app/oapi/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**languageList**](LanguageApi.md#languagelist) | **GET** /language/list | List of available languages


# **languageList**
> List<Language> languageList()

List of available languages

### Example 
```dart
import 'package:postoplan_api/api.dart';
// TODO Configure API key authorization: api-key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api-key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api-key').apiKeyPrefix = 'Bearer';

final api_instance = LanguageApi();

try { 
    final result = api_instance.languageList();
    print(result);
} catch (e) {
    print('Exception when calling LanguageApi->languageList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Language>**](Language.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

