//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Richard Leung on 4/1/17.
//  Copyright © 2017 RichardLeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var startRecording: UIButton!
    @IBOutlet weak var stopRecording: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecording.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress..."
        stopRecording.isEnabled = true
        startRecording.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text = "Tap to Record."
        stopRecording.isEnabled = false
        startRecording.isEnabled = true
    }
}

