1.create a apollo-codegen-config.json file in the root of your project

* ./apollo-ios-cli init --schema-namespace YOUR_API_NAME --module-type swiftPackageManager
This will create a apollo-codegen-config.json file in the root of your project.

2.Add the Schema Download Configuration


"schemaDownloadConfiguration": {
    "downloadMethod": {
        "introspection": {
            "endpointURL": "YOUR_ENDPOINT_URL",
            "httpMethod": {
                "POST": {}
            },
            "includeDeprecatedInputValues": false,
            "outputFormat": "SDL"
        }
    },
    "downloadTimeout": 60,
    "headers": [],
    "outputPath": "PATH/TO/YOUR/SCHEMA.GRAPHQLS"
}

3. fetch schema
./apollo-ios-cli fetch-schema

4. Generate the API folder


in config file, changed to
 "schemaNamespace" : "RICKANDMORTYAPI",
  "input" : {
    "operationSearchPaths" : [
      "./RICKANDMORTYGRAPHQL/*.graphql"
    ],
    "schemaSearchPaths" : [
      "./RICKANDMORTYGRAPHQL/*.GRAPHQLS"
    ]
  },

then in terminal of the project type;
./apollo-ios-cli generate


5. Add the API Folder as a Local Package

add package choose
local then choose api folder



references ;

https://www.apollographql.com/docs/ios/get-started
https://www.delasign.com/blog/swift-graphql-call/
