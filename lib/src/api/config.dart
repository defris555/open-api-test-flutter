import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties: AdditionalProperties(
        pubName: 'postoplan_api', pubAuthor: 'postoplan team'),
    inputSpecFile:
        'https://postoplan-app-stage.s3.eu-central-1.amazonaws.com/dev/uploads/uploads/openapi-spec.yaml',
    generatorName: Generator.dart,
    outputDirectory: 'api/postoplan_api')
class Config extends OpenapiGeneratorConfig {}
