UILabel-BackgroundAware
=======================

A UILabel category that adds a method for a UILabel to change it textColor to black or white regarding whats behind it, for example if you a really bright image behind it will change to black.

Example:
--------

![image](https://raw.github.com/Julioacarrettoni/UILabel-BackgroundAware/master/screenshot.png)

USAGE:
------

Just import "UILabel+BackgroundAware.h" on your prefix file or where you want to use it and after the background changes just call the method
`- (void) changeTextColorToUnmatchTheBG`
On the UILabel you want to change the color to, example:

`[label changeTextColorToUnmatchTheBG];`