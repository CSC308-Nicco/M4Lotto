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
    
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        coordinator.animate { _ in
            for label in self.numLabels {
                label.layer.cornerRadius = label.bounds.width / 2
            }
        }

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        var numbers: [Int] = Int.sortedRandomArray(count: 7, ranRange: 1...45)
        
        for (index,label) in numLabels.enumerated()
        {
            guard let numLabel = label as UILabel? else {
                continue
            }
            
            label.setLottoNumber(number: numbers[index])
            
        }
        
        numLabel7.backgroundColor = .purple
        numLabel7.textColor = .white
    
    }


}
