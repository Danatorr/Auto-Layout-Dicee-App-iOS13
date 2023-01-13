import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //        let diceRoll1 = Int.random(in: 1..<6)
        //        let diceRoll2 = Int.random(in: 1..<6)
                
                let diceImageArray = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
                
                let diceRollSoundFilePath = Bundle.main.path(forResource: "dice-roll-sound", ofType: "mp3")!
                let soundFileURL = URL(fileURLWithPath: diceRollSoundFilePath)
                
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: soundFileURL)

                    audioPlayer?.play()
                } catch {
                    print("Error playing sound file")
                }
                
                sleep(3)
                 
                diceImageView1.image = UIImage(imageLiteralResourceName: (diceImageArray[Int.random(in: 0...5)]))
                diceImageView2.image = UIImage(imageLiteralResourceName: (diceImageArray[Int.random(in: 0...5)]))
                
        //        switch diceRoll1{
        //        case 1:
        //            diceImage1.image = UIImage(imageLiteralResourceName: "DiceOne")
        //        case 2:
        //            diceImage1.image = UIImage(imageLiteralResourceName: "DiceTwo")
        //        case 3:
        //            diceImage1.image = UIImage(imageLiteralResourceName: "DiceThree")
        //        case 4:
        //            diceImage1.image = UIImage(imageLiteralResourceName: "DiceFour")
        //        case 5:
        //            diceImage1.image = UIImage(imageLiteralResourceName: "DiceFive")
        //        case 6:
        //            diceImage1.image = UIImage(imageLiteralResourceName: "DiceSix")
        //        default:
        //            return
        //        }
        //
        //        switch diceRoll2{
        //        case 1:
        //            diceImage2.image = UIImage(imageLiteralResourceName: "DiceOne")
        //        case 2:
        //            diceImage2.image = UIImage(imageLiteralResourceName: "DiceTwo")
        //        case 3:
        //            diceImage2.image = UIImage(imageLiteralResourceName: "DiceThree")
        //        case 4:
        //            diceImage2.image = UIImage(imageLiteralResourceName: "DiceFour")
        //        case 5:
        //            diceImage2.image = UIImage(imageLiteralResourceName: "DiceFive")
        //        case 6:
        //            diceImage2.image = UIImage(imageLiteralResourceName: "DiceSix")
        //        default:
        //            return
        //        }

        
    }
    
}

