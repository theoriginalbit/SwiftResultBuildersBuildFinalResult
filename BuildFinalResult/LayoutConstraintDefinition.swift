import UIKit

protocol LayoutConstraintDefinition {
    var constraints: [NSLayoutConstraint] { get }
}

struct AllEdges: LayoutConstraintDefinition {
    let constraints: [NSLayoutConstraint]

    init(_ anchor: some AnchorPoint, to parent: some AnchorPoint) {
        constraints = [
            anchor.topAnchor.constraint(equalTo: parent.topAnchor),
            anchor.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
            anchor.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            anchor.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
        ]
    }
}

struct PredefinedConstraints: LayoutConstraintDefinition {
    let constraints: [NSLayoutConstraint]

    init(_ constraints: [NSLayoutConstraint]) {
        self.constraints = constraints
    }
}
