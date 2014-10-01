//
//  Theme.swift
//  Link
//
//  Created by darktiny on 9/29/14.
//  Copyright (c) 2014 darktiny. All rights reserved.
//

import UIKit

let defaultNavigationBarFontSize: CGFloat = 22;
let defaultTabBarFontSize: CGFloat = 14;

struct Theme {
    
    static func setupThemeWithPrimaryColor(primaryColor:UIColor, secondaryColor:UIColor, fontName:String, lightStatusBar: Bool) {
        if (lightStatusBar) {
            UIApplication.sharedApplication().statusBarStyle = .LightContent
        }
        
        customizeNavigationBarColor(primaryColor, textColor: secondaryColor, fontName: fontName, fontSize: defaultNavigationBarFontSize, buttonColor: secondaryColor)
        customizeNavigationBarButtonColor(secondaryColor)
        customizeTabBarColor(primaryColor, textColor: secondaryColor, fontName: fontName, fontSize: defaultTabBarFontSize)
        customizeSwitchOnColor(primaryColor)
        customizeSearchBarColor(primaryColor, buttonTintColor: secondaryColor)
        customizeActivityIndicatorColor(primaryColor)
        customizeButtonColor(primaryColor)
        customizeSegmentedControlWithMainColor(primaryColor, secondaryColor:secondaryColor)
        customizeSliderColor(primaryColor)
        customizePageControlCurrentPageColor(primaryColor);
        customizeToolbarTintColor(primaryColor);
    }
    
    
    // UINavigationBar
    static func customizeNavigationBarColor(barColor: UIColor, textColor:UIColor, buttonColor:UIColor) {
        UINavigationBar.appearance().barTintColor = barColor
        UINavigationBar.appearance().tintColor = buttonColor
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:textColor]
    }
    
    static func customizeNavigationBarColor(barColor:UIColor, textColor:UIColor, fontName:String, fontSize:CGFloat, buttonColor:UIColor) {
        UINavigationBar.appearance().barTintColor = barColor
        UINavigationBar.appearance().tintColor = buttonColor
        
        let font = UIFont(name: fontName, size: fontSize)
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: textColor, NSFontAttributeName: font]
    }
    
    
    // UIBarButtonItem
    static func customizeNavigationBarButtonColor(buttonColor: UIColor) {
        UIButton.appearance().setTitleColor(buttonColor, forState: .Normal)
    }
    
    // UITabBar
    static func customizeTabBarColor(barColor:UIColor, textColor:UIColor) {
        UITabBar.appearance().barTintColor = barColor;
        UITabBar.appearance().tintColor = textColor;
    }
    
    static func customizeTabBarColor(barColor:UIColor, textColor:UIColor, fontName:String, fontSize:CGFloat) {
        UITabBar.appearance().barTintColor = barColor;
        UITabBar.appearance().tintColor = textColor;
        
        let font = UIFont(name: fontName, size: fontSize)
        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName: font], forState: .Normal)
    }
    
    // UIButton
    static func customizeButtonColor(buttonColor: UIColor) {
        UIButton.appearance().setTitleColor(buttonColor, forState:.Normal);
    }
    
    // UISwitch
    static func customizeSwitchOnColor(switchOnColor: UIColor) {
        UISwitch.appearance().onTintColor = switchOnColor;
    }
    
    // UISearchBar
    static func customizeSearchBarColor(barColor: UIColor, buttonTintColor:UIColor) {
        UISearchBar.appearance().barTintColor = barColor;
        UISearchBar.appearance().tintColor = barColor;
        UIBarButtonItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: buttonTintColor], forState: .Normal)
    }
    
    // UIActivityIndicator
    static func customizeActivityIndicatorColor(color: UIColor) {
        UIActivityIndicatorView.appearance().color = color;
    }
    
    // UISegmentedControl
    static func customizeSegmentedControlWithMainColor(mainColor:UIColor, secondaryColor:UIColor) {
        UISegmentedControl.appearance().tintColor = mainColor;
    }
    
    // UISlider
    static func customizeSliderColor(sliderColor: UIColor) {
        UISlider.appearance().minimumTrackTintColor = sliderColor;
    }
    
    // UIToolbar
    static func customizeToolbarTintColor(tintColor: UIColor) {
        UIToolbar.appearance().tintColor = tintColor;
    }
    
    // UIPageControl
    static func customizePageControlCurrentPageColor(mainColor: UIColor) {
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.lightGrayColor();
        UIPageControl.appearance().currentPageIndicatorTintColor = mainColor;
        UIPageControl.appearance().backgroundColor = UIColor.clearColor();
    }
    
    static func colorWithR(r: CGFloat, G g:CGFloat, B b:CGFloat) -> UIColor {
        let red = r / 255.0
        let green = g / 255.0
        let blue = b / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
