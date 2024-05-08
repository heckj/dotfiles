#!/usr/bin/env bash
set -eoux pipefail


xcrun simctl delete all

xcrun simctl create iPhone47 "iPhone SE (3rd generation)"
xcrun simctl create iPhone55 "iPhone 8 Plus"
xcrun simctl create iPhone61 "iPhone 14 Pro"
xcrun simctl create iPhone65 "iPhone 11 Pro Max"
xcrun simctl create iPhone67 "iPhone 14 Pro Max"
xcrun simctl create iPad097 "iPad Pro (9.7-inch)"
xcrun simctl create iPad110 "iPad Pro (11-inch) (4th generation)"
xcrun simctl create iPad129-2G "iPad Pro (12.9-inch) (2nd generation)"
xcrun simctl create iPad129-3G "iPad Pro (12.9-inch) (6th generation)"
xcrun simctl create visionPro1  "Apple Vision Pro"
