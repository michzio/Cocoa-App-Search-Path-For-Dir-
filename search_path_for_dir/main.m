//
//  main.m
//  search_path_for_dir
//
//  Created by Michal Ziobro on 23/09/2016.
//  Copyright © 2016 Michal Ziobro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    if(argc != 3)
        return 1;
    
    @autoreleasepool {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(atoi(argv[1]), atoi(argv[2]), YES);
        NSString *path = [paths objectAtIndex:0];
        [path writeToFile:@"/dev/stdout" atomically:NO encoding:NSUTF8StringEncoding error:nil];
    }
    return 0;
}
