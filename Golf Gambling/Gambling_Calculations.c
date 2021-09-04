//
//  Gambling_Calculations.c
//  Golf Gambling
//
//  Created by Drew Seidel on 9/15/20.
//  Copyright © 2020 Drew Seidel. All rights reserved.
//

#include "Gambling_Calculations.h"

int golf(int num1, int num2);

int golf(int num1, int num2)
{
    int result;
    if (num1 > num2)
        result = num1;
    else
        result = num2;
    return result;
}
