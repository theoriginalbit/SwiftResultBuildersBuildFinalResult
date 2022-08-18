import UIKit

@resultBuilder
enum ScrollViewBuilder {
    // MARK: - Required for the example usage

    static func buildBlock(_ insets: ContentInsets, _ subview: UIView) -> (ContentInsets, UIView) {
        (insets, subview)
    }

    static func buildFinalResult(_ components: (ContentInsets, UIView)) -> UIScrollView {
        let scrollView = UIScrollView()
        let (insetDefinition, contentView) = components
        scrollView.contentInset = insetDefinition.insets
        scrollView.addSubview(contentView.forAutoLayout())

        NSLayoutConstraint.activate {
            AllEdges(contentView, to: scrollView.contentLayoutGuide)
            scrollView.contentLayoutGuide.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor)
        }

        return scrollView
    }

    // MARK: - Developer convenience

    @available(*, unavailable, message: "first statement of ScrollViewBuilder must be ContentInsets")
    static func buildBlock(_ subview: UIView) -> (ContentInsets, UIView) {
        (ContentInsets(.zero), subview)
    }
}
