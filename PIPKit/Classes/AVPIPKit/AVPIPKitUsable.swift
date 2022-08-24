//
//  AVPIPKitUsable.swift
//  PIPKit
//
//  Created by Kofktu on 2022/01/03.
//

import Foundation
import UIKit
import AVKit

public extension PIPKit {
 
    static var isAVPIPKitSupported: Bool {
        return AVPictureInPictureController.isPictureInPictureSupported()
    }
     
}

public enum AVPIPKitRenderPolicy {
    
    case once
    case preferredFramesPerSecond(Int)
    
}

extension AVPIPKitRenderPolicy {
    
    var preferredFramesPerSecond: Int {
        switch self {
        case .once:
            return 1
        case .preferredFramesPerSecond(let preferredFramesPerSecond):
            return preferredFramesPerSecond
        }
    }
    
}

public protocol AVPIPKitUsable {
    
    var renderer: AVPIPKitRenderer { get }
    
    func startPictureInPicture()
    func stopPictureInPicture()
    
}

public extension AVPIPKitUsable {
    
    var isAVKitPIPSupported: Bool {
        PIPKit.isAVPIPKitSupported
    }
    
}

