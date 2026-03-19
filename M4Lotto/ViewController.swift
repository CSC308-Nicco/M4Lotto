//
//  ViewController.swift
//  M4Lotto
//
//  Created by Settimi, Niccolo B. on 2/10/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel7: UILabel!
    
    @IBOutlet var numLabels: [UILabel]!
    
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
    
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        coordinator.animate { _ in
            for label in self.numLabels {
                label.layer.cornerRadius = label.bounds.width / 2
            }
        }

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        var numbers: [Int] = []
        
        while numbers.count < numLabels.count
        {
            let num = Int.random(in: 1...45)
            if (!numbers.contains(num))
            {
                numbers.append(num)
            }
        }
        
        numbers.sort()
        
        for (index,label) in numLabels.enumerated()
        {
            guard let numLabel = label as UILabel? else {
                continue
            }
            
            numLabel.layer.cornerRadius = label.bounds.width / 2
            numLabel.clipsToBounds = true
            numLabel.text = String(numbers[index])
            
            let colors = getColors(for: numbers[index])
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

