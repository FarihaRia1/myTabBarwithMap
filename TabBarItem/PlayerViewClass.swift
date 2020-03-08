//
//  PlayerViewClass.swift
//  TabBarItem
//
//  Created by apple on 2/27/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class PlayerViewClass: UIView {
    
    override static var layerClass: AnyClass{
        
        return AVPlayerLayer.self;
    }
    
    var PlayerLayer: AVPlayerLayer{
        return layer as! AVPlayerLayer;
    }
    
    var player: AVPlayer? {
        get {
            return PlayerLayer.player;
        }
        set{
            PlayerLayer.player = newValue;
        }
    }
}
