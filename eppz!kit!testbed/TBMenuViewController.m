//
//  TBMenuViewController.m
//  eppz!kit
//
//  Created by Borbás Geri on 11/8/13.
//  Copyright (c) 2013 eppz! development, LLC.
//
//  donate! by following http://www.twitter.com/_eppz
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "TBMenuViewController.h"


@implementation TBMenuViewController


-(IBAction)buttonTouchedUp:(TBButton*) button
{
    NSLog(@"Present <%@>", button.controllerClassName);
    
    // Instantiate, present controller.
    Class controllerClass = NSClassFromString(button.controllerClassName);
    UIViewController *controller = [[controllerClass alloc] initWithNibName:button.controllerClassName bundle:nil];
    [self presentModalViewController:controller animated:YES];
}

// Automatismo.
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSString *autoLoadControllerName = @"TBRepresentableViewController";
    Class controllerClass = NSClassFromString(autoLoadControllerName);
    UIViewController *controller = [[controllerClass alloc] initWithNibName:autoLoadControllerName bundle:nil];
    [self presentModalViewController:controller animated:YES];
}


@end
