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
        let helloWorldFlutterVC = HelloWorldFlutterViewController(engine: FlutterEngineManager.shared.helloWorldEngine)
        present(helloWorldFlutterVC, animated: true, completion: nil)
    }

    @IBAction func checkOutGermanButtonPressed(_ sender: Any) {
    }

}

