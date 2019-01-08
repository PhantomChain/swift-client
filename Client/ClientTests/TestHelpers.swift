// 
// This file is part of PHANTOM Swift Client.
//
// (c) PhantomChain <info@phantom.org>
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//

import Foundation

/// Set headers for the requests
let headers: HTTPHeaders = [
    "Content-Type": "application/json",
    "User-Agent": "phantom-swift-client (https://github.com/PhantomChain/swift-client)"
]
public typealias HTTPHeaders = [String: String]

/// Mock function to handle an API GET request
func mockHandleApiGet(_ url: String, _ parameters: [String: Any]?, completionHandler: @escaping ([String: Any]?) -> Void) {
    completionHandler(["url": url, "parameters": parameters ?? "", "headers": headers])
}

// Mock function to handle an API POST request
func mockHandleApiPost(_ url: String, _ parameters: [String: Any]?, _ body: [String: Any]?, completionHandler: @escaping ([String: Any]?) -> Void) {
    completionHandler(["url": url, "parameters": parameters ?? "", "body": body ?? "", "headers": headers])
}
