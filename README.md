# DPOTPView
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
