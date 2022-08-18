import UIKit

extension UIScrollView {
    static func vertical(@ScrollViewBuilder _ builder: () -> UIScrollView) -> UIScrollView {
        builder()
    }
}
