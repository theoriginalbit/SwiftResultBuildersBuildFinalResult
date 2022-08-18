import UIKit

extension UIStackView {
    static func vertical(alignment: Alignment = .fill,
                         distribution: Distribution = .fill,
                         spacing: CGFloat = 0,
                         @StackViewBuilder _ builder: () -> UIStackView) -> UIStackView {
        let stackView = builder()
        stackView.axis = .vertical
        stackView.alignment = alignment
        stackView.distribution = distribution
        stackView.spacing = spacing
        return stackView
    }

    static func horizontal(alignment: Alignment = .fill,
                           distribution: Distribution = .fill,
                           spacing: CGFloat = 0,
                           @StackViewBuilder _ builder: () -> UIStackView) -> UIStackView {
        let stackView = builder()
        stackView.axis = .horizontal
        stackView.alignment = alignment
        stackView.distribution = distribution
        stackView.spacing = spacing
        return stackView
    }
}
