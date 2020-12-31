//
//  SubscriptionProtocol.swift
//
//
//  Created by Nikhil John on 29/12/20.
//

import Foundation

public struct FayeSubscriptionModel: Encodable, Equatable {
    
    /// Subscription URL
    let subscription: BayeuxChannel.RawValue
    
    /// Channel type for request
    let channel: BayeuxChannel
    
    /// Uniqle client id for socket
    var clientId: String?
    
    /// Model must conform to Hashable
    var hashValue: Int {
        return subscription.hashValue
    }
    
    public init(subscription: String, channel: BayeuxChannel, clientId: String?) {
        self.subscription = subscription
        self.channel = channel
        self.clientId = clientId
    }
}

extension String {
    func encodeToBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
}
