import UIKit

class MainView: UIView {
    init() {
        super.init(frame: .zero)
        backgroundColor = .white

        let scrollView = UIScrollView.vertical {
            ContentInsets(vertical: 16)

            UIStackView.vertical(spacing: 16) {
                UILabel(.largeTitle, .center, "Hello, there!")
                CustomSpacing(24)
                RedView()
                BlueView()
                RedView()
                BlueView()
                CustomSpacing(32)
                RedView()
                BlueView()
                CustomSpacing(76)
                RedView()
                BlueView()
                CustomSpacing(32)
                RedView()
                BlueView()
                CustomSpacing(32)
                RedView()
                BlueView()
            }
        }

        addSubview(scrollView.forAutoLayout())
        NSLayoutConstraint.activate {
            AllEdges(scrollView.frameLayoutGuide, to: self)
        }
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
