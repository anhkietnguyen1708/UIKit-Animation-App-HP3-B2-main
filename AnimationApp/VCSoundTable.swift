//
//  VCSoundTable.swift
//  AnimationApp
//
//  Created by Nguyễn Anh Kiệt on 29/9/24.
//

import UIKit

class VCSoundTable: UIViewController {
    
    var soundNames: [String] = [
        "Track1", "Track2", "Track3", "Track4", "Track5",
        "Track6", "Track7", "Track8", "Track9", "Track10"
    ]
    
    // Phương thức được gọi sau khi view được load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Thực hiện các tác vụ bổ sung sau khi view được load
    }
}
        
extension VCSoundTable: UITableViewDataSource, UITableViewDelegate {
            // Trả về số lượng hàng trong table view
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return soundNames.count
            }
            
           
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                cell.textLabel?.text = soundNames[indexPath.row]
                cell.detailTextLabel?.text = "Đây là chi tiết của \(soundNames[indexPath.row])"
                return cell
            }
            
            
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                print("Bạn đã chọn \(soundNames[indexPath.row])")
            }
        }

