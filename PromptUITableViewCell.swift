//
//  PromptUITableCell.swift
//  brainwashr
//
//  Created by Pieter-Jan Delaruelle on 10/06/2020.
//  Copyright © 2020 Pieter-Jan Delaruelle. All rights reserved.
//

import UIKit


class PromptUITableViewCell: UITableViewCell {
    
    var promptName: String = ""
    var promptMessage: String = ""
    var promptDescription: String = ""
    
    @IBOutlet weak var promptDescriptionLabel: UILabel!
}
