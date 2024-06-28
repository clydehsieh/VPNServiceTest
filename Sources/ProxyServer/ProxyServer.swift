//
//  ProxyServer.swift
//
//
//  Created by ClydeHsieh on 2024/6/19.
//

import Foundation

public class ProxyServer {
    
    private var defaultURL: URL?
    
    public init(defaultURL: URL? = nil) {
        self.defaultURL = defaultURL
    }
    
    public func getURL() -> URL?  {
        defaultURL
    }
}
