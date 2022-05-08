//
//  ViewController.swift
//  ShapeAnimations
//
//  Created by Prashant Shah on 5/3/22.
//

import UIKit
//importing view animator that was installed using pod with terminal
import ViewAnimator

//adding parent classes for table
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //declaring a table
    private let myTable = UITableView()
    
    let data = ["Animation1", "Animation2","Animation3","Animation4","Animation5","Animation6","Animation7","Animation8","Animation9","Animation10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTable)
        myTable.frame = view.bounds
        myTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        myTable.delegate = self
        myTable.dataSource = self
    }
    
    //overriding the function view did appear so that our animation will appear after the view has been loaded
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let animation = AnimationType.from(direction: .top, offset: 300)
        
        //calling static method and passing array of animations
        UIView.animate(views: myTable.visibleCells,
                       animations: [animation],
                    duration: 1)
    }

    //1st function to count the number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    //2nd function to give properties to each table rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.backgroundColor = .systemYellow
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .systemPink
        }
        return cell
    }
    
    //3rd function to fix the height of the cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    //4th function applying the animation by selecting the row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row == 0 {
            let vc = FirstViewController()
            //not doing full size so we check other animations
            //vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
        else if indexPath.row == 1 {
            let vc = SecondViewController()
            present(vc, animated: true)
        }
        else if indexPath.row == 2 {
            let vc = ThirdViewController()
            present(vc, animated: true)
        }
        else {
            let vc = RandomViewController()
            present(vc, animated: true)
        }
    }
}

