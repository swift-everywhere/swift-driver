//===--------------- Driver.swift - Swift Driver --------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2019 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

public struct FileMetadata {
    public let mTime: TimePoint
    public let hash: String?
    init(mTime: TimePoint, hash: String? = nil) {
        self.mTime = mTime
        if let hash = hash, !hash.isEmpty {
          self.hash = hash
        } else {
          self.hash = nil
        }
    }
}

