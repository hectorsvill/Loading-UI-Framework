Skip to content
 
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@hectorsvill 
2
4 48 LambdaSchool/ios-projects
 Code  Issues 0  Pull requests 70  Projects 0  Wiki  Security  Insights
You’re editing a file in a project you don’t have write access to. We’ve created a fork of this project for you to commit your proposed changes to. Submitting a change to this file will write it to a new branch in your fork, so you can send a pull request.
ios-projects
/
Sprint 9
/
Creating Frameworks
/
README.md
 

1
# Loading UI Framework
2
​
3
The goal of this project is practice creating a framework, including thinking about the public API you want to expose. This project covers the concepts covered in the Creating Frameworks module. After completing the lesson material and this project, you should be able to:
4
​
5
- create a framework for sharing code between multiple apps
6
- include sub-projects with a framework in an Xcode app project
7
- use Swift’s access control modifiers appropriately to make code private, internal, or public
8
- make good decisions about abstraction, API surface, and modularity when creating a framework
9
​
10
Your assignment is to write a framework called "Loading UI" or similar. At a minimum, the framework should include a view controller that can be presented to show a loading animation like the one in the animated GIF below:
11
​
12
![Animated GIF](LoadingUI.gif)
13
​
14
You can expand on this by completing the tasks in the Go Farther section. As you work on this project, think about the API you want to expose to users of the framework. It should be as simple as possible to use the framework in an app for various scenarios.
15
​
16
## Part 0 - Animation Help
17
​
18
You're encouraged to figure out how to implement the animation itself on your own using the concepts you learned in Sprint 6 - User Interface. However, an animation like this will take a little time to get right, and will stretch you beyond what you've already learned. This project is focused on creating a framework, and if you feel it would be a better use of your time to focus on that, you are welcome to use the `IndeterminateLoadingView` class in `IndeterminateLoadingView.swift` in this repo. If you decide to write the animation on your own, here are some hints:
19
​
20
- There are a number of ways to do this, but [`CAShapeLayer`](https://developer.apple.com/documentation/quartzcore/cashapelayer) is a good one. Note the `strokeStart` and `strokeEnd` properties which are animatable.
21
- You can create a circular `UIBezierPath` using `UIBezierPath(ovalIn: rect)` where `rect` is a square `CGRect`.
22
- `CAAnimation` has a delegate property that allows you to be notified when an animation finishes. You can use this to trigger another animation.
23
- You may find the `PolarPoint` struct found in this repo helpful. It makes circular geometry and drawing code easier. Note that I didn't use it in my solution to this project, but depending on the approach to drawing you take, you might find it useful.
24
​
25
## Part 1 - Create a Framework and Setup a Test App
26
​
27
Start by creating a new framework project. You should also set up a test app so you can excersise, test, and debug your framework code.
28
​
29
1. Create a parent directory for this project. Call it e.g. `LoadingUIFrameworkDevelopment`
30
2. Inside `LoadingUIFrameworkDevelopment`, create a new Cocoa Touch Framework project called `LoadingUI` (or whatever name you'd prefer).
31
3. Inside `LoadingUIFrameworkDevelopment`, create another app project called `LoadingUITest` (or similar). The folder for `LoadingUITest` should be a sibling to the `LoadingUI` folder.
32
4. Open `LoadingUITest`, and add the `LoadingUI` framework project as a subproject.
33
5. Add the LoadingUI.framework as an embedded binary in the target settings for `LoadingUITest`.
34
6. `import LoadingUI` in `ViewController`. Make sure the project builds.
35
​
@hectorsvill
Propose file change
Commit summary 
Update README.md
Optional extended description
Add an optional extended description…
 
© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
