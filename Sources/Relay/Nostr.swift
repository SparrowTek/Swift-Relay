//
//  Nostr.swift
//  
//
//  Created by Thomas Rademaker on 2/20/23.
//

import Compute

struct Nostr {
    static func register(_ router: Router) {
        router.get("/connect", connect)
    }
    
    static func connect(req: IncomingRequest, res: OutgoingResponse) async throws {
        guard req.isUpgradeWebsocketRequest() else { return try await res.status(400).send("INVALID_WEBSOCKET_REQUEST") }
        try req.upgradeWebsocket(to: .fanout, hostname: "localhost")
    }
}
