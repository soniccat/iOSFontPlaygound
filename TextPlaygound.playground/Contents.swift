//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

var str = "Hello, playground"

var font = UIFont.systemFontOfSize(80)
print(font.fontName)
print(kNumberSpacingType)

/*
let figureCaseDict = [
    UIFontFeatureTypeIdentifierKey: kNumberSpacingType,
    UIFontFeatureSelectorIdentifierKey: kMonospacedNumbersSelector,
]
*/

/*
let figureCaseDict = [
    UIFontFeatureTypeIdentifierKey: kVerticalPositionType,
    UIFontFeatureSelectorIdentifierKey: kInferiorsSelector,
]
*/

/*
let figureCaseDict = [
    UIFontFeatureTypeIdentifierKey: kStylisticAlternativesType,
    UIFontFeatureSelectorIdentifierKey: 2,
]
*/

let figureCaseDict = [
    UIFontFeatureTypeIdentifierKey: kLowerCaseType,
    UIFontFeatureSelectorIdentifierKey: 1,
]

let attributes = [
    UIFontDescriptorFeatureSettingsAttribute: [ figureCaseDict ],
]
let descriptor = font.fontDescriptor().fontDescriptorByAddingAttributes(attributes)

font = UIFont(descriptor: descriptor, size: 0)
print(CTFontCopyFeatures(font))

var view = UIView(frame: CGRectMake(0, 0, 800, 300))
var label = UILabel(frame: view.bounds)
label.font = font
label.numberOfLines = 0
label.textAlignment = NSTextAlignment.Center
label.text = "Some Text123\n123456789\n987654321"

view.addSubview(label)



