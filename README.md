Structure

 frontend/: Folder contains the website.
o main.js: Folder contains visitor counter code.
 api/: Folder contains the dotnet API deployed on Azure Functions.
o Counter.cs: Contains the visitor counter code.


Frontend resources
The front-end is a static site with HTML, CSS, and JavaScript with a visitor counter
The visitor counter data fetched via an API call to an Azure Function.
I created a site from scratch watching w3School video and a couple of YouTube videos for design ideas. It took me a few days to put the site
together and running. I however decided to use a template I found online at the last minute

 This JavaScript [article](https://www.freecodecamp.org/news/how-to-fetch-data-from-an-api-using-the-fetch-api-in-javascript/) explains how to fetch data from an API using the Fetch
API in JavaScript.

  My HTML resume is deployed online as an Azure Storage static website.https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website

Backend resources

The back-end is an HTTP triggered Azure Functions with Cosmos DB input and
output binding. The Function is triggered, it retrieves the CosmosDB item, adds 1 to
it, and saves it and returns its value to the caller.

 Create a Cosmos DB account https://learn.microsoft.com/en-us/azure/cosmos-db/nosql/quickstart-portal

 Create an HTTP triggered Azure Function in Visual Studio Code.https://learn.microsoft.com/en-gb/azure/azure-functions/functions-develop-vs-code?tabs=node-v4%2Cpython-v2%2Cisolated-process%2Cquick-create&pivots=programming-language-csharp

 Azure Functions Cosmos DB bindings https://docs.microsoft.com/en-us/azure/azure-functions/functions-bindings-cosmosdb-v2

 Retrieve a Cosmos DB item with Functions binding.https://docs.microsoft.com/azure/azure-functions/functions-bindings-cosmosdb-v2-input?tabs=csharp

 Write to a Cosmos DB item with Functions binding.https://docs.microsoft.com/azure/azure-functions/functions-bindings-cosmosdb-v2-output?tabs=csharp

 Enable CORS with Azure Functions locally https://learn.microsoft.com/azure/azure-functions/functions-develop-local#local-settings-file

 Configure CORS in the Azure portal for Azure Container Apps https://learn.microsoft.com/en-us/azure/container-apps/cors?tabs=arm&pivots=azure-portal

Testing Resources
CI/CD Resources

 This is how you can deploy a blob storage static site with [GitHub actions.](https://learn.microsoft.com/en-gb/azure/storage/blobs/storage-blobs-static-site-github-actions?tabs=userlevel)

 This is how you can deploy an Azure Function to Azure with GitHub Actions.https://github.com/marketplace/actions/azure-functions-action

 Implement .NET testing in GitHub Actions. https://docs.github.com/en/actions/use-cases-and-examples/building-and-testing/building-and-testing-net

TO DO

 Implement tests into CICD.

 Create IaC files.

 Improve tests and tests documentation.
