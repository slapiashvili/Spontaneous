//
//  DetailImageLoader.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 08.02.24.
//

import UIKit

final class DetailImageLoader {
    private var girlImages: [UIImage] = []
    private var imageIndex = 0
    private var timer: Timer?
    private weak var girlImageView: UIImageView?

    init(girlImageView: UIImageView) {
        self.girlImageView = girlImageView
        loadImages()
        startImageTimer()
    }

    private func loadImages() {
        for i in 1...15 {
            if let image = UIImage(named: "ggggirl\(i)") {
                girlImages.append(image)
            }
        }
    }

    private func startImageTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 0.2,
            target: self,
            selector: #selector(updateGirlImage),
            userInfo: nil,
            repeats: true
        )
    }
    
    func stopAndSetImage(index: Int) {
        timer?.invalidate()
        girlImageView?.image = girlImages[index]
    }

    @objc private func updateGirlImage() {
        guard let girlImageView = girlImageView else {
            timer?.invalidate()
            return
        }

        if imageIndex == girlImages.count * 2 {
            timer?.invalidate()
        } else {
            UIView.transition(with: girlImageView, duration: 0.5, options: .transitionCrossDissolve, animations: {
                girlImageView.image = self.girlImages[self.imageIndex % self.girlImages.count]
            }, completion: { _ in
                self.imageIndex += 1
            })
        }
    }
}

