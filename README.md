Hopefully this will be useful to some people, simple CGPoint, CGSize and CGRect storage and retrieval from NSDictionary.

To store values into a NSMutableDictionary:

    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    [dictionary setPoint:CGPointMake(100, 200) forKey:@"pointValue"];
    [dictionary setSize:CGSizeMake(500, 600) forKey:@"sizeValue"];
    [dictionary setRect:CGRectMake(10, 20, 50, 60) forKey:@"rectValue"];

To retrieve values from a NSDictionary:

    CGPoint point = [newDictionary pointForKey:@"pointValue"];
    CGSize size = [newDictionary sizeForKey:@"sizeValue"];
    CGRect rect = [newDictionary rectForKey:@"rectValue"];
