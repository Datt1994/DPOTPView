# DPOTPView
[![Platform](https://img.shields.io/cocoapods/p/DPOTPView.svg?style=flat)](http://cocoapods.org/pods/DPOTPView)
[![Language: Swift 5](https://img.shields.io/badge/language-swift5-f48041.svg?style=flat)](https://developer.apple.com/swift)
[![License](https://img.shields.io/cocoapods/l/DPOTPView.svg?style=flat)](https://github.com/Datt1994/DPOTPView/blob/master/LICENSE)
[![Version](https://img.shields.io/cocoapods/v/DPOTPView.svg?style=flat)](http://cocoapods.org/pods/DPOTPView)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

![Look](https://github.com/Datt1994/DPOTPView/raw/master/Look.png)

Customisable OTP view and Passcode view

## Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C & Swift. You can install it with the following command:

```bash
$ gem install cocoapods
```
#### Podfile

To integrate DPOTPView into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

target 'TargetName' do
use_frameworks!
pod 'DPOTPView'
end
```

Then, run the following command:

```bash
$ pod install
```

## Installation with Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate `DPOTPView` into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "Datt1994/DPOTPView"
```

Run `carthage` to build the framework and drag the framework (`DPOTPView.framework`) into your Xcode project.

Note: [IBDesignables and IBInspectables](https://github.com/Carthage/Carthage/issues/335) will not work in interface builder.

Workaround: Create IBDesignable subclass of DPOTPView, Use this subclass as custom calss in interface builder.
```swift
@IBDesignable
class OTPView : DPOTPView {}    
```

## Installation with Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

To add the library as package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter its repository URL `https://github.com/Datt1994/DPOTPView.git`


## Add Manually 
  
  Download Project and copy-paste `DPOTPView.swift` file into your project 

## How to use
![AddClass](https://github.com/Datt1994/DPOTPView/raw/master/Add%20Class.png)

👆Add DPOTPView to UIView Custom Class.

![Properties](https://github.com/Datt1994/DPOTPView/raw/master/Property.png)

👆Use this properties as per your requirments.

## Code

**Set up through code**
```swift
let txtOTPView = DPOTPView(frame: CGRect(x: (self.view.frame.width - 250)/2, y: txtDPOTPView.frame.origin.y + 50, width: 250, height: 60))
txtOTPView.count = 5
txtOTPView.spacing = 10
txtOTPView.fontTextField = UIFont(name: "HelveticaNeue-Bold", size: CGFloat(25.0))!
txtOTPView.dismissOnLastEntry = true
txtOTPView.borderColorTextField = .black
txtOTPView.selectedBorderColorTextField = .blue
txtOTPView.borderWidthTextField = 2
txtOTPView.backGroundColorTextField = .lightGray
txtOTPView.cornerRadiusTextField = 8
txtOTPView.isCursorHidden = true
//txtOTPView.isSecureTextEntry = true
//txtOTPView.isBottomLineTextField = true
//txtOTPView.isCircleTextField = true
view.addSubview(txtOTPView)
```

**Usage**
```swift
txtDPOTPView.text = "1234" // set text
print(txtDPOTPView.text ?? "") // get text
txtDPOTPView.validate() // validate all text entry
_ = txtDPOTPView.becomeFirstResponder()
```

**Delegate Methods**
```swift
extension ViewController : DPOTPViewDelegate {
   func dpOTPViewAddText(_ text: String, at position: Int) {
        print("addText:- " + text + " at:- \(position)" )
    }
    
    func dpOTPViewRemoveText(_ text: String, at position: Int) {
        print("removeText:- " + text + " at:- \(position)" )
    }
    
    func dpOTPViewChangePositionAt(_ position: Int) {
        print("at:-\(position)")
    }
    func dpOTPViewBecomeFirstResponder() {
        
    }
    func dpOTPViewResignFirstResponder() {
        
    }
}
```
