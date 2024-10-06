//
//  VCSoundTable.swift
//  AnimationApp
//
//  Created by huy bin on 29/9/24.
//

import UIKit

class VCSoundTable: UIViewController{
    
    @IBOutlet weak var soundTable: UITableView!
    var soundNames: [String] = [
        "sound1", "sound2", "sound3", "sound4", "sound5", "sound6", "sound7", "sound8", "sound9", "sound10",
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        
        print("Soundtable show!")
        
        for soundName in soundNames {
                print(soundName)
        }
    }
    



}
extension VCSoundTable:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return soundNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = soundNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("\(soundNames[indexPath.row]) is selected")
        
    }
    
    
}
