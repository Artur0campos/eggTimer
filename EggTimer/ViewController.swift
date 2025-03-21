import UIKit

class ViewController: UIViewController {
    
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var seconds = 60
    var timer: Timer?
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        print(eggTimes[hardness] ??  "Error")
        
        seconds = eggTimes[hardness] ?? 60
        timerLabel.text = "\(seconds) seconds"
        
        timer?.invalidate()
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {

        if seconds > 0 {
            timerLabel.text = "\(seconds) seconds"
            seconds -= 1
        }
        
        else {
            timer?.invalidate()
            timerLabel.text = "Done!"
        }
    }
    
}
