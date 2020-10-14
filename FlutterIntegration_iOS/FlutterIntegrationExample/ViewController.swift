//
//  ViewController.swift
//  FlutterIntegrationExample
//
//  Created by WWT on 10/9/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var checkOutButton: UIButton!
    @IBOutlet weak var checkOutGermanButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkOutButton.layer.cornerRadius = 5
        checkOutGermanButton.layer.cornerRadius = 5
    }

    @IBAction func checkOutButtonPressed(_ sender: Any) {
    }

    @IBAction func checkOutGermanButtonPressed(_ sender: Any) {
    }

}

