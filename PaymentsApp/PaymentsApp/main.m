//
//  main.m
//  PaymentsApp
//
//  Created by Nathan Wainwright on 2018-08-04.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *prompt = [[NSString alloc] init];
        NSUInteger dollaDolla = arc4random_uniform(900) + 100;
        char inputChars[255];
        
        PaymentGateway *theMonster = [[PaymentGateway alloc] init];
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%lu", rand);
        NSLog(@"Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon");
        printf("%s", [prompt UTF8String]);
        fgets(inputChars, 255, stdin);
        NSString *inputwithEnter = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        
        int userNumber = [finalInputString intValue];
    
        //NSLog(@"ENTERED: %d", userNumber);
        
        switch (userNumber) {
            case 1:
                //Paypal
                break;
                
            case 2:
                //Stripe
                break;
                
            case 3:
                //Amazon
                break;
                
            default:
                break;
        }
        
        [theMonster processPaymentAmount:dollaDolla];
        
        
        
        
    }
    return 0;
}
