import UIKit

protocol StackDefinition {}

struct StackSubview: StackDefinition {
    let view: UIView
}

struct CustomSpacing: StackDefinition {
    let spacing: CGFloat

    init(_ spacing: CGFloat) {
        self.spacing = spacing
    }
}
