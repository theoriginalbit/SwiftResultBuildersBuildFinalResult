import UIKit

struct ContentInsets {
    let insets: UIEdgeInsets

    init(_ insets: UIEdgeInsets) {
        self.insets = insets
    }

    init(vertical inset: CGFloat) {
        insets = .init(top: inset, left: 0, bottom: inset, right: 0)
    }
}
