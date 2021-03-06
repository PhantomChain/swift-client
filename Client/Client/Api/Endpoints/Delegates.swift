//
// This file is part of PHANTOM Swift Client.
//
// (c) PhantomChain <info@phantom.org>
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//

import Foundation

public class Delegates {

    private let connection: Connection
    private let apiGetHandler: ApiGetHandler
    private var endpoint: String {
        return "\(connection.host)/delegates"
    }

    public init(connection: Connection, _ apiGetHandler: @escaping ApiGetHandler = handleApiGet) {
        self.connection = connection
        self.apiGetHandler = apiGetHandler
    }

    /// Retrieves the given delegate
    /// id can be one of: Username, Address or Public Key
    public func get(byName id: String, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler("\(endpoint)/\(id)", [:], completionHandler)
    }

    public func get(byAddress id: String, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler("\(endpoint)/\(id)", [:], completionHandler)
    }

    public func get(byKey id: String, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler("\(endpoint)/\(id)", [:], completionHandler)
    }

    /// Retrieves all delegates
    public func all(limit: Int = 100, page: Int = 1, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler(endpoint, ["limit": limit, "page": page], completionHandler)
    }

    /// Retrieves all forged blocks of a given delegate
    public func blocks(byName id: String, limit: Int = 100, page: Int = 1, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler("\(endpoint)/\(id)/blocks", ["limit": limit, "page": page], completionHandler)
    }

    public func blocks(byAddress id: String, limit: Int = 100, page: Int = 1, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler("\(endpoint)/\(id)/blocks", ["limit": limit, "page": page], completionHandler)
    }

    public func blocks(byKey id: String, limit: Int = 100, page: Int = 1, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler("\(endpoint)/\(id)/blocks", ["limit": limit, "page": page], completionHandler)
    }

    /// Retrieves all voters of a given delegate
    public func voters(byName id: String, limit: Int = 100, page: Int = 1, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler("\(endpoint)/\(id)/voters", ["limit": limit, "page": page], completionHandler)
    }

    public func voters(byAddress id: String, limit: Int = 100, page: Int = 1, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler("\(endpoint)/\(id)/voters", ["limit": limit, "page": page], completionHandler)
    }

    public func voters(byKey id: String, limit: Int = 100, page: Int = 1, completionHandler: @escaping ([String: Any]?) -> Void) {
        apiGetHandler("\(endpoint)/\(id)/voters", ["limit": limit, "page": page], completionHandler)
    }
}
