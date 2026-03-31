//
//  UILabel+Lotto.swift
//  M4Lotto
//
//  Created by Settimi, Niccolo B. on 3/31/26.
//

import UIKit

extension UILabel {
    func setLottoNumber(number: Int)
    {
        self.layer.cornerRadius = self.bounds.width / 2
        self.clipsToBounds = true
        self.text = String(number)
        
        let colors = getColors(for: number)
        guard let color1 = colors?.0, let color2 = colors?.1 else
        {
            return
        }
        
        self.backgroundColor = color1
        self.textColor = color2
    }
    
    fileprivate func getColors(for num: Int) -> (UIColor, UIColor)?
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
}
