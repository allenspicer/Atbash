//
//  main.m
//  Atbash
//
//  Created by Allen Spicer on 5/4/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {


//        
//        NSMutableDictionary *cipher = [NSMutableDictionary dictionaryWithObjects:alphabet forKeys:reversealphabet count:];
//        
//        NSCharacterSet * set = NSCharacterSet characterSetWithCharactersInString:@"a"
//        
//        cipher valueForKey:
        
        
        
        
//        -(BOOL) isZipCode:(NSString*)zipString{
//            BOOL rc = NO;
//    NSCharacterSet * set = [NSCharacterSet characterSetWithCharactersInString:@"1234567890"];
//            set = [set invertedSet];
//            NSRange myRange = [zipString rangeOfCharacterFromSet:set];
//            rc = (myRange.location == NSNotFound);
//            rc = ([zipString length]==5) && rc;
//            return rc;
//        }
        
        
NSString * alphabetString = @"a b c d e f g h i j k l m n o p q r s t u v w x y z";
NSString * reversealphabetString = @"Z Y X W V U T S R Q P O N M L K J I H G F E D C B A";

NSArray *alphabetArray = [alphabetString componentsSeparatedByString:@" "];
NSArray *reverseAlphabetArray = [reversealphabetString componentsSeparatedByString:@" "];
        
static const NSInteger numberOfLetters = 26;
NSMutableDictionary *cipher = [NSMutableDictionary dictionary];
        
NSInteger i=0;
while (i < numberOfLetters)
        {
        [cipher setValue:alphabetArray[i] forKey:reverseAlphabetArray[i]];
        i++;
        }
        
        NSLog(@"%@", cipher);
                                       

//        NSInteger i;
//        
//        for (i = 0; i < N_ENTRIES; i++) {
//            
//            char charValue = 'a' + i;
//            keyArray[i] = [NSString stringWithFormat:@"%c", charValue];
//            valueArray[i] = [NSNumber numberWithChar:charValue];
//        }
//        
//        asciiDict = [NSDictionary dictionaryWithObjects:(id *)valueArray
//                                                forKeys:(id *)keyArray count:N_ENTRIES];
//
        

    }
    return 0;
}
