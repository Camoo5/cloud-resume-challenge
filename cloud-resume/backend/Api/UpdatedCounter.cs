using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Http;
using My.Namespace;


namespace Api.Function;
public class UpdatedCounter
{

    [CosmosDBOutput(databaseName: "ResumeCloud", "Counter", Connection = "CosmosDbConnectionString")]
    public Counter? NewCounter { get; set; }
    public HttpResponseData? HttpResponse { get; set; }
}