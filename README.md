# Cover

An easy way to add background videos in loop to your login screen

## Demo

<p align="center">
<img src="https://github.com/tiagomartinho/cover-uikit/blob/master/demo.gif" width="400" title="Demo">
</p>

## Requirements

* Swift 4.1 or higher
* iOS 10.0 or higher
* tvOS 10.0 or higher

## Features

* Supports iOS and tvOS
* 3 lines of code to integrate in your app
* +/- 100 lines of Swift code

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Webhose into your Xcode project using CocoaPods, add to your `Podfile`:

```ruby
pod 'Cover', '0.1'
```

Then, run the following command:

```bash
$ pod install
```

## Sample

We provide a sample app where you can see how to use the library.

There are three lines of code you need to add:

### 1. Import the Framework

```swift
import Cover
```

### 2. Declare a reference to the player in your View Controller

```swift
var player: Player?
```

### 3. Instantiate and add the player to the view in your viewDidLoad method

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    player = view.add(videoName: "Video.mp4", alpha: 0.5)
}
```

The videoName is the name of the video that you have included in your app target.
