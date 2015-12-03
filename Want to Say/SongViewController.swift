//
//  ViewController.swift
//  Want to Say
//
//  Created by Puyan Lin on 2015/11/25.
//  Copyright © 2015年 Puyan. All rights reserved.
//

import UIKit
import AVFoundation

class SongViewController: UIViewController {

    @IBOutlet var imgTitle: UIImageView!
    @IBOutlet var btnMore: UIButton!
    var ding:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("hbd", ofType: "m4a")
        print(path)
        try! ding = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path!), fileTypeHint: nil)
        ding.prepareToPlay()
        ding.play()
        
        btnMore.alpha = 0
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        UIView.animateWithDuration(3) { () -> Void in
            self.imgTitle.frame = CGRect(x: 225, y: 225, width: self.view.bounds.width-450, height:self.view.bounds.height-450)
            self.btnMore.alpha = 0.8
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

