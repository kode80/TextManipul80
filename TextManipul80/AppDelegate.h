//
//  AppDelegate.h
//  TextManipul80
//
//  Created by Benjamin S Hopkins on 5/3/15.
//  Copyright (c) 2015 kode80. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, readwrite, weak) IBOutlet NSTextField *delimiter;
@property (nonatomic, readwrite, weak) IBOutlet NSTextField *prefix;
@property (nonatomic, readwrite, weak) IBOutlet NSTextField *postfix;
@property (nonatomic, readwrite, strong) IBOutlet NSTextView *text;

- (IBAction) processText:(id)sender;

@end

