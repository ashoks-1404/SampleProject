// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

// MARK: - IntroSDK
public class IntroSDK {

    // Shared instance for easy access
    public static let shared = IntroSDK()

    // SDK details
    public let introTitle: String
    public let introMessage: String
    public let introImage: UIImage?

    private init() {
        // Initialize Intro details
        self.introTitle = "Welcome to MySDK"
        self.introMessage = "Discover powerful features to supercharge your app."
        self.introImage = UIImage(named: "intro_image") // Replace with actual image asset name
    }

    // Method to launch the Intro View Controller
    public func launchIntroViewController(from presentingViewController: UIViewController) {
        let introVC = IntroViewController()
        introVC.introTitle = introTitle
        introVC.introMessage = introMessage
        introVC.introImage = introImage

        let navigationController = UINavigationController(rootViewController: introVC)
        presentingViewController.present(navigationController, animated: true, completion: nil)
    }
}
