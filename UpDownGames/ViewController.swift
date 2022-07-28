//
//  ViewController.swift
//  UpDownGames
//
//  Created by 손호준 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {
    var randomValue: Int = 0
    var tryCount: Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var minmunValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        reset()
        
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
        
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        reset()
    }
    func reset() {
        print("reset!")
        randomValue = Int.random(in: 0...30)
        print(randomValue)
        tryCount = 0
        tryCountLabel.text = "0/5"
        slider.minimumValue=0
        slider.maximumValue=30
        slider.value=15
        minmunValueLabel.text="0"
        maximumValueLabel.text="30"
        sliderValueLabel.text="15"
    }

}

