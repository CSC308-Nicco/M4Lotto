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
    
    
    func getColors(for num: Int) -> (UIColor, UIColor)?
    {
        switch num
        {
            case 1...10:
            return (.red, .white)
            
            case 11...20:
            return (.green, .black)
                
            case 21...30:
            return (.blue, .white)
                
            case 31...40:
            return (.yellow, .black)
                
            case 41...45:
            return (.green, .black)
            
            default:
                return nil
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
            guard let numLabel = label else
            {
                continue
            }
            
            numLabel.layer.cornerRadius = numLabel.bounds.width / 2
            numLabel.clipsToBounds = true
            
            let colors = getColors(for: sortedNums[index])
            guard let color1 = colors?.0, let color2 = colors?.1 else
            {
                return
            }
            
            numLabel.backgroundColor = color1
            numLabel.textColor = color2
        }
        
        numLabel7.backgroundColor = .purple
        numLabel7.textColor = .white
    
    }


}

