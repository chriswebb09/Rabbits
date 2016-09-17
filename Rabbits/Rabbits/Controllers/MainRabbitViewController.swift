//
//  MainRabbitViewController.swift
//  Rabbits
//
//  Created by Christopher Webb-Orenstein on 9/16/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class MainRabbitViewController: UIViewController, UITableViewDataSource {
    
    let rabbitData = testData()
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(RabbitCell.self, forCellReuseIdentifier: RabbitCell.cellIdentifier)
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupNavigationBar() {
        navigationController?.title = "Rabbits"
        navigationController?.navigationBar.frame = CGRect(x:0, y:0, width:view.frame.width, height:view.frame.height * 0.5)
        navigationController?.navigationBar.barTintColor = Constants.barColor
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: Constants.baseFont, size: 25)!]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RabbitCell.cellIdentifier, for: indexPath) as! RabbitCell
        return cell
    }

}

