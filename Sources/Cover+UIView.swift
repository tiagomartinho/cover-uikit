import UIKit
import AVFoundation

extension UIView {

    public func add(videoName: String, alpha: CGFloat = 1.0) -> Player? {
        return add(videoNames: [videoName], alpha: alpha)
    }

    public func add(videoNames: [String], alpha: CGFloat = 1.0) -> Player? {
        let videoPaths = videoNames.compactMap(PathExtractor.extract)
        let items = videoPaths.compactMap(buildPlayerItem)
        let player = AVQueuePlayer(items: items)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.player?.isMuted = true

        let playerView = buildPlayerView(playerLayer: playerLayer)
        playerView.alpha = alpha
        add(playerView)

        player.play()

        guard let templateItem = items.first else { return nil }
        let playerLooper = AVPlayerLooper(player: player, templateItem: templateItem)
        return Player(playerLooper: playerLooper, player: player)
    }

    private func buildPlayerItem(path: String) -> AVPlayerItem {
        let videoURL = URL(fileURLWithPath: path)
        let asset = AVAsset(url: videoURL)
        return AVPlayerItem(asset: asset)
    }

    private func buildPlayerView(playerLayer: AVPlayerLayer) -> PlayerView {
        let playerView = PlayerView()
        playerView.playerLayer = playerLayer
        playerLayer.videoGravity = .resizeAspectFill
        playerView.layer.addSublayer(playerLayer)
        return playerView
    }

    private func add(_ playerView: UIView) {
        addAndPin(view: playerView)
        let blackView = UIView()
        blackView.backgroundColor = .black
        addAndPin(view: blackView)
    }

    private func addAndPin(view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        sendSubview(toBack: view)
    }
}
