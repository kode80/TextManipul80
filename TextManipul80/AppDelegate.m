//
//  AppDelegate.m
//  TextManipul80
//
//  Created by Benjamin S Hopkins on 5/3/15.
//  Copyright (c) 2015 kode80. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction) processText:(id)sender
{
    NSString *delimiter = [self formatString:self.delimiter.stringValue];
    NSString *prefix = [self formatString:self.prefix.stringValue];
    NSString *postfix = [self formatString:self.postfix.stringValue];
    
    NSArray *components = [self.text.string componentsSeparatedByString:delimiter];
    NSMutableString *output = [NSMutableString string];
    
    for( NSString *component in components)
    {
        [output appendFormat:@"%@%@%@", prefix, component, postfix];
    }
    
    self.text.string = output;
}

- (NSString *) formatString:(NSString *)input
{
    NSMutableString *output = [(input ? input : @"") mutableCopy];
    
    [output replaceOccurrencesOfString:@"\\n"
                            withString:@"\n"
                               options:0
                                 range:NSMakeRange( 0, output.length)];
    
    [output replaceOccurrencesOfString:@"\\r"
                            withString:@"\r"
                               options:0
                                 range:NSMakeRange( 0, output.length)];
    
    [output replaceOccurrencesOfString:@"\\t"
                            withString:@"\t"
                               options:0
                                 range:NSMakeRange( 0, output.length)];
    
    
    return [NSString stringWithString:output];
}

@end
