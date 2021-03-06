//
//  EPPZViewController.m
//  eppz!kit!testbed
//
//  Created by Borbás Geri on 7/15/13.
//  Copyright (c) 2013 eppz! development, LLC.
//
//  donate! by following http://www.twitter.com/_eppz
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "TBHtmlStringViewController.h"
#import "TBGameUser.h"


@implementation TBHtmlStringViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self testFiles];
    [self testDateExtensions];
    [self testTagFinder];
}

-(void)testFiles
{ NSLog(@"%@", FILES.documentsDirectory); }

-(void)testDateExtensions
{ [NSDate testDisplayStringOfInterval]; }

-(void)testTagFinder
{
    self.label_1.htmlString = @"Something really <strong>useful</strong> with tons of <strong>strong</strong> tags to be able to test this harmless <strong>tag finder</strong> snippet.";
    self.label_2.htmlString = @"<strong>Something</strong> really <strong>useful</strong> with tons of <strong>strong</strong> tags to be able to test this harmless <strong>tag finder</strong> snippet.";
    self.label_3.htmlString = @"Something really <strong>useful</strong> with actually only one strong tags.";
    self.label_4.htmlString = @"Something really useful without any strong tags.";
    self.labelThatMustWork.boldRange = NSMakeRange(0, 5);
}


@end
