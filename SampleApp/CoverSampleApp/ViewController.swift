import UIKit
import Cover

class ViewController: UIViewController {

    var player: Player?

    override func viewDidLoad() {
        super.viewDidLoad()
        player = view.add(videoName: "Video.mp4", alpha: 0.5)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        player?.play()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        player?.pause()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
