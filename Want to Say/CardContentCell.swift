//
//  CardContentCell.swift
//  Want to Say
//
//  Created by Puyan Lin on 2015/12/3.
//  Copyright © 2015年 Puyan. All rights reserved.
//

import UIKit

class CardContentCell: UITableViewCell {

    @IBOutlet var tvContent: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func rowHeight(content content:String,screenWidth:CGFloat) -> CGFloat {
        
        let tvTemp = UITextView(frame: CGRect(x: 0, y: 0, width: screenWidth-100, height: 272))
        tvTemp.text = content
        
        tvTemp.sizeToFit()
        
        var height = tvTemp.bounds.height + 28
        
        height = height < 300 ? 300:height
        
        //print(height)
        
        return height
    }


}
