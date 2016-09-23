# Pre-work - *TipTop app*

TipTop is a tip calculator application for iOS.

Submitted by: **Quentin Picard**

Time spent: 8 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://github.com/Spugnam/TipTop-App/blob/master/TipTopDemo5.gif' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

Describe any challenges encountered while building the app.

Challenges: I struggled to activate the persistence on the segmented control. I thought I had to find a different property to
force the % manually but selectedSegmentIndex worked fine.
I struggled to publish my project on Github (new tool for me although I'm familiar with version management). Turns out I had an empty project online with the same name blocking the upload. 
I added the local currency format for the tip and full amount, but I couldn't do it for the bill textfield (it makes the conversion to a Double fail and return 0). I found a fix online but it seemed complex and I didn't get to it.
I can call the settings view with a left swipe, but the right swipe to come back crashes the app. This was Swipe Gesture. Pan Gesture I couldn't get to work. My code never gets triggered.
I couldn't figure out NSDate to add the timer for the bill amount. I need more time on this

## License

    Copyright [2016] [Quentin Picard]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
