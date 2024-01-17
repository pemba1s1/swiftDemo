//
//  ViewController.swift
//  firstproject
//
//  Created by user237120 on 1/11/24.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var step = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func dec(_ sender: Any) {
        count = count - step
        counter.text = String(count)
    }


    @IBOutlet weak var stepDisplay: UILabel!
    @IBOutlet weak var counter: UILabel!
    
    @IBAction func inc(_ sender: Any) {
        count = count + step
        counter.text = String(count)
    }
    
    
    @IBAction func `switch`(_ sender: UISwitch) {
        let stepValue = sender
        if stepValue.isOn { step = 2 }
        else { step = 1 }
        stepDisplay.text = String(step)
    }
    
    
    @IBAction func slider(_ sender: UISlider) {
        let sliderValue = sender
        step = Int(sliderValue.value)
        stepDisplay.text = String(step)
    }
    

    @IBAction func reset(_ sender: UIButton) {
        step = 1
        count = 0
        counter.text = String(count)
        stepDisplay.text = String(step)
    }
    
}

