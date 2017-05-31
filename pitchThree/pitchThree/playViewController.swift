//
//  playViewController.swift
//  pitchThree
//
//  Created by Lea Overend on 5/31/17.
//  Copyright © 2017 loverend. All rights reserved.
//

import UIKit
import AVFoundation

class playViewController: UIViewController, AVAudioPlayerDelegate {

    var recievedAudio: URL?
    var audioPlayer: AVAudioPlayer?
    
    @IBOutlet weak var playSound: UIButton!
    @IBAction func playRecorded(_ sender: Any) {
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: (recievedAudio)!)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch Error{
          // print("error")
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
