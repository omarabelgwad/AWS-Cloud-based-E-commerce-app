const amplifyconfig = '''{
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "gradprojectapptrial": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://bqbhkhtr5vgmjhvex36lvaxaju.appsync-api.eu-north-1.amazonaws.com/graphql",
                    "region": "eu-north-1",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-br2ldqs4fbaufaz6wosutzicfq"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://bqbhkhtr5vgmjhvex36lvaxaju.appsync-api.eu-north-1.amazonaws.com/graphql",
                        "Region": "eu-north-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-br2ldqs4fbaufaz6wosutzicfq",
                        "ClientDatabasePrefix": "gradprojectapptrial_API_KEY"
                    },
                    "gradprojectapptrial_AWS_IAM": {
                        "ApiUrl": "https://bqbhkhtr5vgmjhvex36lvaxaju.appsync-api.eu-north-1.amazonaws.com/graphql",
                        "Region": "eu-north-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "gradprojectapptrial_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "eu-north-1:988fc056-4e52-4185-8a8d-8f3d242b28be",
                            "Region": "eu-north-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "eu-north-1_EqbiSZ4aw",
                        "AppClientId": "4n0g68j9c2oleir48or2nsptvu",
                        "Region": "eu-north-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [
                            "EMAIL",
                            "PHONE_NUMBER"
                        ],
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                }
            }
        }
    }
}''';
