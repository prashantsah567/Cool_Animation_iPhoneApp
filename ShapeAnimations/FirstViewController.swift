//
//  FirstViewController.swift
//  ShapeAnimations
//
//  Created by Prashant Shah on 5/3/22.
//

import UIKit
import ViewAnimator

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemPurple
        
        myView.animate(animations: [AnimationType.rotate(angle: .pi/5)], delay: 1, duration: 2)
    }
    
}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemPurple
        
        myView.animate(animations: [AnimationType.zoom(scale: 4)], delay: 1, duration: 2)
    }
    
}

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemOrange
        
        
        let animations: [Animation] = [
            AnimationType.from(direction: .bottom, offset: 300),
            AnimationType.rotate(angle: .pi/4),
            AnimationType.zoom(scale: 3)
        ]
        myView.animate(animations: animations, delay: 1, duration: 2, usingSpringWithDamping: 5, initialSpringVelocity: 7)
    }
    
}

class RandomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemGreen
        
        myView.animate(animations: [AnimationType.random()], delay: 1, duration: 2)
    }
    
}
