//
//  ColorsDetailViewController.swift
//  Rainbow
//
//  Created by Claudia Contreras on 1/28/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class ColorsDetailViewController: UIViewController {
    //a place to store the color that was selected
    var cellColor: MyColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }

}
