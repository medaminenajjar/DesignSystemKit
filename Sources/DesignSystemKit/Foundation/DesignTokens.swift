import Foundation

public struct DesignTokens {
    public enum Spacing {
        public static let xSmall: CGFloat = 4
        public static let small: CGFloat = 8
        public static let medium: CGFloat = 16
        public static let large: CGFloat = 24
        public static let xLarge: CGFloat = 32
    }

    public enum Radius {
        public static let verySmall: CGFloat = 4
        public static let small: CGFloat = 6
        public static let medium: CGFloat = 10
        public static let large: CGFloat = 16
        public static let full: CGFloat = 999
    }

    public enum Duration {
        public static let fast: Double = 0.15
        public static let normal: Double = 0.3
        public static let slow: Double = 0.6
        public static let verySlow: Double = 1.5
    }

    public enum Opacity {
        public static let none: Double = 0.0
        public static let veryLow: Double = 0.1
        public static let low: Double = 0.3
        public static let disabled: Double = 0.4
        public static let inactive: Double = 0.6
        public static let subtle: Double = 0.8
        public static let full: Double = 1.0
    }
}
