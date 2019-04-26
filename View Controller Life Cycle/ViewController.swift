//
//  ViewController.swift
//  View Controller Life Cycle
//
//  Created by Denis Bystruev on 26/04/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    func printMessage(_ message: String = "", line: Int = #line, function: String = #function) {
        print("\(title ?? "nil"): line \(line) of \(function) \(message)")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        printMessage()
        
        super.viewWillTransition(to: size, with: coordinator)
        
        guard let stackView = stackView else { return }
        
        let isHorizontal = size.height < size.width
        stackView.axis = isHorizontal ? .horizontal : .vertical
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printMessage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        printMessage()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        printMessage()
    }
}

