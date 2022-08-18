import UIKit

@resultBuilder
enum StackViewBuilder {
    // MARK: - Required for the example usage

    static func buildBlock(_ definitions: [any StackDefinition]...) -> [any StackDefinition] {
        definitions.flatMap { $0 }
    }

    static func buildExpression(_ definition: some StackDefinition) -> [any StackDefinition] {
        [definition]
    }

    static func buildExpression(_ view: UIView) -> [any StackDefinition] {
        [StackSubview(view: view)]
    }

    static func buildFinalResult(_ components: [any StackDefinition]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [])

        var lastSubview: UIView?
        for definition in components {
            switch definition {
            case let definition as StackSubview:
                let view = definition.view
                stackView.addArrangedSubview(view)
                lastSubview = view

            case let definition as CustomSpacing:
                if let lastSubview {
                    stackView.setCustomSpacing(definition.spacing, after: lastSubview)
                }

            default:
                assertionFailure("Unhandled StackDefinition \(type(of: definition))")
            }
        }

        return stackView
    }

    // MARK: - Others for completeness

    static func buildEither(first definitions: [any StackDefinition]) -> [any StackDefinition] {
        definitions
    }

    static func buildEither(second definitions: [any StackDefinition]) -> [any StackDefinition] {
        definitions
    }

    static func buildArray(_ definitions: [[StackDefinition]]) -> [StackDefinition] {
        definitions.flatMap { $0 }
    }

    static func buildOptional(_ definitions: [StackDefinition]?) -> [StackDefinition] {
        definitions ?? []
    }

    static func buildLimitedAvailability(_ definitions: [StackDefinition]) -> [StackDefinition] {
        definitions
    }
}
