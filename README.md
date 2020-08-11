# Allen Real Estate

Real Estate Client App written in Dart/Flutter.

![demo gif](https://github.com/willallendev/allen-estate/blob/develop/animation.gif)

![UI Design](https://i.imgur.com/SAYERIX.png)


#### ⚠⚠⚠This project has NOT reach version 1.0.0 yet⚠⚠⚠
File structure, apis, and file names may change till we reach beta.


## Getting Started

This project depends on the [`build_runner`](https://pub.dev/packages/build_runner) package for code generation, make sure to run `pub run build_runner build` on the root directory otherwise the project won't built as auto-generated files are not checked into VCS. 

After files has been generated by running `build_runner build` you may proceed as any othe regular flutter project.

## App Architecture 🏨📏
* MVVM architecture
* Each layer only depends on the layer below
* Locator pattern is achieved by using [`get_it`](https://pub.dev/packages/get_it) package
* Data binding is achieved by using `ChangeNotifier` class and [`provider`](https://pub.dev/packages/provider) package

![](https://i.imgur.com/2z2yrO9.png)

*A---->B (A depends on B)*

## File Structure 💾

The project is divider into two main folders in the lib folder

![](https://i.imgur.com/T1xF6ME.png)

*Main code folders*


The **core** folder contains most if not all of the business logic written in pure dart code and it does not depend on the flutter framework

![](https://i.imgur.com/IOlPzHu.png)

*core folder content*

The **iu** folder contains all the flutter code, the only folder that depends on the **core** business logic is in lib>ui>containers, you may consider it as the glue between the business logic and the presentation layer

![](https://i.imgur.com/M00nE8s.png)

*core folder content*

***

## TODO 🛒 

### Home Screen
* Add pull to refresh
* Change mock rest client implementation for real one (mock backend is not ready)
* Add data persistency to improve user experience

### Real Estate List Screen
* Add filters UI and business logic
* Add retry button on page fetching error

### Real Estate Single Screen
* General UI and business logic

****
##### Note for me: please add testing for your own good 😞😩
