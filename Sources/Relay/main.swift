import Compute
import MongoDB

var mongoAPIKey: String {
    guard let configStore = try? ConfigStore(name: "env"), let apiKey = configStore.get("dataAPI") else { return "" }
    return apiKey
}

let client = MongoClient(
    endpoint: "https://data.mongodb-api.com/app/data-hcurz/endpoint/data/v1",
    cluster: "nostr",
    database: "nostr",
    apiKey: mongoAPIKey)

let router = Router()
Nostr.register(router)
try await router.listen()
