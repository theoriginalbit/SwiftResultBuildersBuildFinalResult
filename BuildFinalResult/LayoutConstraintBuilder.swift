import UIKit

@resultBuilder
enum LayoutConstraintBuilder {
    // MARK: - Required for the example usage

    static func buildBlock(_ definitions: [any LayoutConstraintDefinition]...) -> [any LayoutConstraintDefinition] {
        definitions.flatMap { $0 }
    }

    static func buildExpression(_ definition: some LayoutConstraintDefinition) -> [any LayoutConstraintDefinition] {
        [definition]
    }

    static func buildExpression(_ constraint: NSLayoutConstraint) -> [any LayoutConstraintDefinition] {
        [PredefinedConstraints([constraint])]
    }

    static func buildFinalResult(_ definitions: [any LayoutConstraintDefinition]) -> [NSLayoutConstraint] {
        definitions.flatMap(\.constraints)
    }

    // MARK: - Others for completeness

    static func buildEither(first definitions: [any LayoutConstraintDefinition]) -> [any LayoutConstraintDefinition] {
        definitions
    }

    static func buildEither(second definitions: [any LayoutConstraintDefinition]) -> [any LayoutConstraintDefinition] {
        definitions
    }

    static func buildArray(_ definitions: [[LayoutConstraintDefinition]]) -> [LayoutConstraintDefinition] {
        definitions.flatMap { $0 }
    }

    static func buildOptional(_ definitions: [LayoutConstraintDefinition]?) -> [LayoutConstraintDefinition] {
        definitions ?? []
    }

    static func buildLimitedAvailability(_ definitions: [LayoutConstraintDefinition]) -> [LayoutConstraintDefinition] {
        definitions
    }

    static func buildExpression(_ constraints: [NSLayoutConstraint]) -> [any LayoutConstraintDefinition] {
        [PredefinedConstraints(constraints)]
    }
}
