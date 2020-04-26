//
//  TableViewController.swift
//  Table
//
//  Created by Kas Song on 2020.04.26.
//  Copyright © 2020 Kas Song. All rights reserved.
//

import UIKit

var items = ["책 구매", "철수와 약속", "스터디 준비하기"]
var itemsImageFile = ["cart.png", "clock.png", "pencil.png"]

class TableViewController: UITableViewController {
    @IBOutlet var tvListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int { // 테이블 안의 섹션 갯수를 설정한다. 보통 한개이며, 2개를 입력해보니 같은 내용이 리스트 아래에 복사되어 나타난다.
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // array 의 갯수에 맞게 row 생성을 도와준다.
        return items.count
    }

    // 테이블 뷰에 주석처리 된 상태로 미리 존재하는 함수
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // 이곳에서 각 셀의 데이터를 입력하는 것으로 보인다.
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) // prototype cell 의 이름을 indentifier 에 입력한다.

        cell.textLabel?.text = items[(indexPath as NSIndexPath).row] // 셀의 텍스트 레이블에 위에서 선언된 텍스트 변수 할당
        cell.imageView?.image = UIImage(named: itemsImageFile[(indexPath as NSIndexPath).row]) // 셀의 이미지 레이블에 위에서 선언된 이미지 변수 할당

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
