// 
// This file is part of PHANTOM Swift Client.
//
// (c) PhantomChain <info@phantom.org>
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//

import Foundation

public extension One {
    public class Signatures {

        private let connection: Connection
        private let apiHandler: ApiGetHandler
        private var endpoint: String {
            return "\(connection.host)/signatures"
        }

        public init(connection: Connection, _ apiHandler: @escaping ApiGetHandler = handleApiGet) {
            self.connection = connection
            self.apiHandler = apiHandler
        }

        /// Retrieves the fee for a second signature
        public func fee(completionHandler: @escaping ([String: Any]?) -> Void) {
            apiHandler("\(endpoint)/fee", [:], completionHandler)
        }
    }
}
