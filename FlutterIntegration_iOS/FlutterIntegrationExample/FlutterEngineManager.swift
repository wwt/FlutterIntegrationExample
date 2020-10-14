//
//  FlutterEngineManager.swift
//  FlutterIntegrationExample
//
//  Created by WWT on 10/9/20.
//

import Foundation
import Flutter

class FlutterEngineManager {

    static var shared: FlutterEngineManager = FlutterEngineManager()
    public var helloWorldEngine: FlutterEngine
    public var helloWorldGermanEngine: FlutterEngine

    init() {

        helloWorldEngine = FlutterEngine(name: "hello_world")
        helloWorldGermanEngine = FlutterEngine(name: "hello_world_german")

    }

}
