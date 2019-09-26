import Foundation
import currentBranch
import SwiftShell

guard let path = main.arguments.first else {
    print("Missing path as parameter")
    exit(1)
}

let parts = currentBranch(at: path).split(separator: "-")
print("[\(parts.dropLast(parts.count - 2).joined(separator: "-"))]", terminator: "")
