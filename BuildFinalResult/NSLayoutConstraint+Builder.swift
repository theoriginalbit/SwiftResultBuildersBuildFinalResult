import UIKit

extension NSLayoutConstraint {
    static func activate(@LayoutConstraintBuilder _ builder: () -> [NSLayoutConstraint]) {
        activate(builder())
    }
}
