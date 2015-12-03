//
//  TableViewController.swift
//  Want to Say
//
//  Created by Puyan Lin on 2015/11/26.
//  Copyright © 2015年 Puyan. All rights reserved.
//

import UIKit

class CardTableViewController: UITableViewController {
    
    let toWho:[String] = ["博閔、書涵，開機愉快：","博閔：","書涵："]
    let contents:[String] = ["生日快樂～是一支你們兄妹倆獨有的app！但是，待會或哪天你們重置了這台Apple TV，就會跟著煙消玉殞～\n\n不過，我有個辦法可以阻止它發生！\n\n我知道到這裡就給你們看破手腳發現這是個陽春的app了，但是其實這是拋磚引玉之術，如果這個app能更完整然後完成上架的話，那從這裡刪掉你們也可以隨時載回來！我想要把這個app發展成留言或party用app，現在我向你們證明我的技術應該可以做到，但是在使用者的體驗的規劃上我能力還差一大截，如果可以，我希望你們可以幫我一起想想跟規劃得讓他更完整，然後成功上架，如果真的有因此獲利，那我們利益均霑。那才真的是我想送你們的「生日大禮」，哈哈！\n\n快點，幫我想想，上架能賣錢的話就可以賺新年紅包了～馬上就要過年了嘛！\n\n然後，新年快樂。哈哈。",
        "生日快樂，新年快樂～\n\n不知道看這個app的時候你到底換iPhone了沒，換了的話你可以用AirPlay，沒換也沒關係，至少你體驗到了這個遙控器非常好用，能完美搭配這玩具～\n\n程式能這樣在生活中的用品上被使用、操作，感覺就是超好呀，你真的很有資質，如果你願意的話，不要偷懶再加把勁，你真的很快能進來這一行一起研發讓世界更美好的東西，加油！\n\n其實我要給你的禮物也不只這個，我還想邀你一起完成這個tvOS上的app，雖然它是類iOS的開發系統就是了，repository在：\nhttps://github.com/puyanlin/tvOSWanttoSay.git\n\nYO!","生日快樂！\n\n去年送妳哥電視棒，妳的iOS只有少數的app能用，今年Apple TV可不一樣了，妳可以隨時把妳的iPhone靠它投影上電視啦！（不過會有點耗電就是了...）\n\n很抱歉每次去找妳哥瘋總是會吵到妳～肥宅我沒有妹妹，很難想像有個妹妹是什麼感覺，我其實覺得像妳哥這樣有個有話講妹妹還不錯～\n\n不知道妳看到這裡，有沒有發想出什麼idea可以在這個裝置上實現，如果妳有什麼靈感，我們可以來試試看～\n\n最後，新年快樂啦！還有我想說我真的一直覺得妳蠻可愛的，哈哈哈。"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "實在很抱歉比你們先拆了這台的Apple TV，不過不這麼做沒辦法偷灌這個呀..."
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        cell.textLabel?.text = "書涵好可愛"
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "莊氏兄妹生日快樂，新年快樂"
        case 1:
            cell.textLabel?.text = "博閔生日快樂！"
        case 2:
            cell.textLabel?.text = "書涵這是電子生日卡片～"
        default: break;
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let contentViewController:CardContentTableViewController = CardContentTableViewController(style: UITableViewStyle.Plain)
        contentViewController.toText = toWho[indexPath.row]
        contentViewController.content = contents[indexPath.row]
        showViewController(contentViewController, sender: nil)
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
