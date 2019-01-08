//
// This file is part of PHANTOM Swift Client.
//
// (c) PhantomChain <info@phantom.org>
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//

import Foundation

public enum PhantomError: Error {
    case invalidResponse
    case invalidOffset
    case invalidLimit
    case unknownConnection
}
