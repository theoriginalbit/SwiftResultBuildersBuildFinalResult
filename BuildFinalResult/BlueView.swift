import UIKit

class BlueView: UIView {
    init() {
        super.init(frame: .zero)
        backgroundColor = .blue
        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
