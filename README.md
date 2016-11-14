# 第13回: １時間でiPhoneアプリを作ろう
## 日付計算アプリ

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/sampleDateApp/blob/master/Assets/sample.png" /></div>
  
  当アカウントへ訪れていただき、誠にありがとうございます。第13回アプリ教室では、日付計算アプリを作ります。自分のペースで勉強したい、勉強前に予習したい、内容を復習したい場合、ご利用ください。
  
## アプリ教室に興味ある方、歓迎します。  
  Meetup  
  http://www.meetup.com/ios-dev-in-namba/
  
## 別途アプリ教室(有料)も開いております  
  http://learning-ios-dev.esy.es/  

## 問い合わせ
  株式会社ジーライブ
  http://geelive-inc.com  

## アプリ作成手順

#### 0, アプリ開発準備
> 0-1. Auto Layout, Size ClassesをOFFにします
<div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/sampleDateApp/blob/master/Assets/0.gif" /></div>

#### 1, Storyboardで、アプリのデザイン
> 1-1. main.storyboardを選択し、UI部品からUILabel, UIDatePicker, UIButtonを配置します。(ドラッグ&ドロップ)

> 1-2. StoryboardのUILabelを、ViewController.swiftに紐づけます

> 1-3. StoryboardのUIDatePickerを、ViewController.swiftに紐づけます

> 1-4. StoryboardのUIButtonを、ViewController.swiftに紐づけます（actionで）

#### 2, ViewController.swiftにコード記述
- 以下コードブロックを記入
  
```Swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDate: UIDatePicker!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calc(_ sender: Any) {
        // 現在日時
        let now = Date()

        // 誕生日
        let birthday = myDate.date

        // 人生最終予定日(８０歳を想定)
        let endday = Date(timeInterval: 60*60*24*365*80, since: birthday)

        // 現在日との差分を計算
        let span = endday.timeIntervalSince(now)
        
        // 秒数を日数に変換
        let anotherdays = Int(span/60/60/24)
        
        // labelに日数を表示
        myLabel.text = "あなたの人生の残日数は約\(anotherdays)日です。"
    }

}
```
