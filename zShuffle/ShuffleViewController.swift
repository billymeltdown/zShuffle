//
//  ShuffleViewController.swift
//  zShuffle
//
//  Created by Billy Gray on 9/10/17.
//  Copyright © 2017 Zetetic. All rights reserved.
//

import UIKit

class ShuffleViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Subscribe to notifications of changes to our model
        let nc = NotificationCenter.default
        nc.addObserver(forName: Notification.Name.cardsDidShuffle, object: nil, queue: nil, using: dataModelChanged)
        // TODO: Set up a shuffle button in the nav bar
        let rbi = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(ShuffleViewController.shuffleTheDeck(sender:)))
        self.navigationItem.setRightBarButton(rbi, animated: false)
        // Shuffle the deck
        DataModel.sharedModel.deck?.shuffle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func dataModelChanged(notification:Notification) -> Void {
        // TODO: get oldValues from notification object, map indexes changed, and animate row moves/swapping
        self.tableView.reloadData()
    }
    
    // MARK: UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (DataModel.sharedModel.deck?.cards.count)!
    }
    
    // MARK: UITableViewDelegate
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath)
        cell.textLabel?.text = DataModel.sharedModel.deck?.cards[indexPath.row]
        return cell
    }
    
    @IBAction func shuffleTheDeck(sender: UIBarButtonItem) {
        DataModel.sharedModel.deck?.shuffle()
    }
}

