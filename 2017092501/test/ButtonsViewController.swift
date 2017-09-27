//
//  ButtonsViewController.swift
//  test
//
//  Created by User on 9/27/17.
//  Copyright © 2017 DemetrioPerez. All rights reserved.
//

import UIKit

protocol  TransferProtocol : class
{
    func transferData(types:[String])
}

class ButtonsViewController: UIViewController {

    @IBOutlet weak var bakeryButton: UIButton!
    @IBOutlet weak var cafeButton: UIButton!
    @IBOutlet weak var superMarket: UIButton!
    @IBOutlet weak var restaurantButton: UIButton!
    @IBOutlet weak var barButton: UIButton!
    @IBOutlet weak var otherButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ButtonsViewController:TransferProtocol{
    func transferData(types:[String]){
       //Do whatever you want here
    }
}
