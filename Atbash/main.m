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
        
NSString *translation = [[NSString alloc]init];
NSString *  alphabetString = @"a b c d e f g h i j k l m n o p q r s t u v w x y z";
NSString * reversealphabetString = @"Z Y X W V U T S R Q P O N M L K J I H G F E D C B A";

NSArray *alphabetArray = [alphabetString componentsSeparatedByString:@" "];
NSArray *reverseAlphabetArray = [reversealphabetString componentsSeparatedByString:@" "];
        
static const NSInteger numberOfLetters = 26;
NSMutableDictionary *cipher = [NSMutableDictionary dictionary];
        
NSInteger i=0;
while (i < numberOfLetters)
        {
        [cipher setValue:reverseAlphabetArray[i] forKey:alphabetArray[i]];
        i++;
        }
        
NSLog(@"%@", cipher);

//request char string from user
char  input[20];
scanf("%s", input);


//go through characters with loop
i = 0;
        
while (i < 20){
    
    NSString* characterString = [NSString stringWithFormat:@"%c", input[i]];
    
    if (![characterString isEqual: @""]) {
    
    NSString * translatedCharacterString = [cipher objectForKey:characterString];
    
    translation = [translation stringByAppendingString:translatedCharacterString];

                 i++; }

NSLog(@"%@", translation);
}
        

        
    }
    return 0;
}
