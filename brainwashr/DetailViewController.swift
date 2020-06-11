//
//  DetailViewController.swift
//  brainwashr
//
//  Created by Pieter-Jan Delaruelle on 10/06/2020.
//  Copyright © 2020 Pieter-Jan Delaruelle. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var promptName: UILabel!
    @IBOutlet weak var promptMessage: UILabel!
    @IBOutlet weak var promptDescription: UILabel!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let name = promptName {
                name.text = detail.name
            }
            if let message = promptMessage {
                message.text = detail.message
            }
            if let description = promptDescription {
                description.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Prompt? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

