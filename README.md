ZYActivity
===================

iOS 6 introduced the UIActivity, as an inheritable class. In order to create custom activities programmers would have to override the following:
    - (NSString *)activityType;
    - (NSString *)activityTitle;
    - (UIImage *)activityImage;
    - (BOOL)canPerformWithActivityItems:(NSArray *)activityItems;
    - (void)prepareWithActivityItems:(NSArray *)activityItems;

Plus one and just one of the following:
    - (UIViewController *)activityViewController;
    - (void)performActivity;

Since this is a strange implementation, I decided to make one that was a bit friendlier to the user, having only to override the following:
    - (NSString *)activityTitle;
    - (UIImage *)activityImage;
    - (BOOL)canPerformWithActivityItems:(NSArray *)activityItems;
    - (UIViewController *)performWithActivityItems:(NSArray *)activityItems;


License
=======

Copyright (c) 2012 Mariano Abdala.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

