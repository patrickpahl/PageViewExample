import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    // Storyboard: Gave each vc a restorationId of 'firstVC', etc.
    // To show pageview buttons at the bottom, go to the pageVC on the storyboard, Attributes inspector: page spacing 4, transition: scroll

    lazy var vcArray: [UIViewController] = {
        return [self.vcInstance(name: "firstVC"),
                self.vcInstance(name: "secondVC"),
                self.vcInstance(name: "thirdVC"),
                self.vcInstance(name: "fourthVC")]
    }()

    private func vcInstance(name: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = self
        self.delegate = self
        if let firstVC = vcArray.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }

    // This makes the background by the buttons the same color as the selected viewcontroller
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        for view in self.view.subviews {
//            if view is UIScrollView {
//                view.frame = UIScreen.main.bounds
//            } else if view is UIPageControl {
//                view.backgroundColor = .clear
//            }
//        }
//    }

    // What comes BEFORE it in the array
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        guard let viewControllerIndex = vcArray.index(of: viewController) else {
            return nil
        }

        let previousIndex = viewControllerIndex - 1

        // If you are at the 0th index, it will allow you to go to the last one in the array.
        guard previousIndex >= 0 else {
            return vcArray.last
        }

        guard vcArray.count > previousIndex else {
            return nil
        }

        return vcArray[previousIndex]
    }

    // What comes AFTER it in the array
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

        guard let viewControllerIndex = vcArray.index(of: viewController) else {
            return nil
        }

        let nextIndex = viewControllerIndex + 1

        guard nextIndex < vcArray.count else {
            return vcArray.first
        }

        guard vcArray.count > nextIndex else {
            return nil
        }

        return vcArray[nextIndex]
    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return vcArray.count
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = vcArray.index(of: firstViewController) else {
                return 0
        }
        return firstViewControllerIndex
    }

}
