//
//  NotificationViewController.swift
//  TabBarItem
//
//  Created by apple on 2/24/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import AVKit

class NotificationViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var videwtable: UITableView!
    
    var videourl = [NSURL(string: "https://v.pinimg.com/videos/720p/77/4f/21/774f219598dde62c33389469f5c1b5d1.mp4"),
                    NSURL(string: "https://v.pinimg.com/videos/720p/75/40/9a/75409a62e9fb61a10b706d8f0c94de9a.mp4"),
                    NSURL(string: "https://v.pinimg.com/videos/720p/0d/29/18/0d2918323789eabdd7a12cdd658eda04.mp4"),
                    NSURL(string: "https://v.pinimg.com/videos/720p/dd/24/bb/dd24bb9cd68e9e25d1def88cad0a9ea7.mp4"),
                    NSURL(string: "https://v.pinimg.com/videos/720p/5f/aa/3d/5faa3d057eb31dd05876f622ea2e7502.mp4"),
                    NSURL(string: "https://v.pinimg.com/videos/720p/62/81/60/628160e025f9d61b826ecc921b9132cd.mp4"),
                    NSURL(string: "https://v.pinimg.com/videos/720p/65/b0/54/65b05496c385c89f79635738adc3b15d.mp4"),
                    NSURL(string: "https://v.pinimg.com/videos/720p/86/a1/c6/86a1c63fc58b2e1ef18878b7428912dc.mp4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videwtable.rowHeight = 301
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videourl.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VideoTableViewCell
         
        let avPlayer = AVPlayer(url: videourl[indexPath.row]! as URL)
        cell.videocell.PlayerLayer.player = avPlayer
        cell.videocell.player?.play()
        
        return cell
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
