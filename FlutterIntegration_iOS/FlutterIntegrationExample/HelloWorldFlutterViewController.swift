//
//  HelloWorldFlutterViewController.swift
//  FlutterIntegrationExample
//
//  Created by WWT on 10/9/20.
//

import UIKit
import Flutter

class HelloWorldFlutterViewController: FlutterViewController {
    init(engine: FlutterEngine) {
        super.init(engine: engine, nibName: nil, bundle: nil)
        
        FlutterMethodChannel(name: "HelloWorldMethodChannel", binaryMessenger: engine.binaryMessenger).setMethodCallHandler { (call, result) in
            if call.method == "dismiss" {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
