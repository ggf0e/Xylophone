import UIKit
import AVFoundation

final class ViewController: UIViewController {
    private var player: AVAudioPlayer!
    
    @IBAction private func KeyPressed(_ sender: UIButton) {
        playSouund(nameSound: sender.currentTitle!)
    }
    
    private func playSouund(nameSound: String) {
        let url = Bundle.main.url(forResource: nameSound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    

}

