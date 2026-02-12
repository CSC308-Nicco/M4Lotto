//
//  ViewController.swift
//  M4Lotto
//
//  Created by Settimi, Niccolo B. on 2/10/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel1: UILabel!
    @IBOutlet weak var numLabel2: UILabel!
    @IBOutlet weak var numLabel3: UILabel!
    @IBOutlet weak var numLabel4: UILabel!
    @IBOutlet weak var numLabel5: UILabel!
    @IBOutlet weak var numLabel6: UILabel!
    @IBOutlet weak var numLabel7: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupNumberLabel(_ label: UILabel, _ rand: Int)
    {
        label.text = "\(rand)"
        
        switch rand
        {
            case 1...10:
            label.backgroundColor = UIColor.red
            label.textColor = .white
            
            case 11...20:
            label.backgroundColor = UIColor.green
            label.textColor = .black
                
            case 21...30:
            label.backgroundColor = UIColor.blue
            label.textColor = .white
                
            case 31...40:
            label.backgroundColor = UIColor.yellow
            label.textColor = .black
                
            case 41...45:
            label.backgroundColor = UIColor.green
            label.textColor = .black
            
            default:
                break;
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let labels = [numLabel1, numLabel2, numLabel3, numLabel4, numLabel5, numLabel6, numLabel7]
        
        var numbers: [Int] = []
        
        while numbers.count < labels.count
        {
            let num = Int.random(in: 1...45)
            if (!numbers.contains(num))
            {
                numbers.append(num)
            }
        }
        
        let sortedNums = numbers.sorted()
        
        for (index,label) in labels.enumerated()
        {
            if (label == nil)
            {
                continue
            }
            
            label?.layer.cornerRadius = label!.bounds.width / 2
            label?.clipsToBounds = true;
            
            setupNumberLabel(label!, sortedNums[index])
        }
        
        numLabel7.backgroundColor = .purple
        numLabel7.textColor = .white
    
    }


}

