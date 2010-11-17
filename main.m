#import "NSDictionary+CGStructs.h"

int main (int argc, const char * argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  // Store CGStructs to a dictionary
  NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
  [dictionary setPoint:CGPointMake(100, 200) forKey:@"pointValue"];
  [dictionary setSize:CGSizeMake(500, 600) forKey:@"sizeValue"];
  [dictionary setRect:CGRectMake(10, 20, 50, 60) forKey:@"rectValue"];

  // Write the dictionary to disk
  NSString *filePath = [@"~/Desktop/CGStructs.plist" stringByExpandingTildeInPath];
  [dictionary writeToFile:filePath atomically:YES];

  // Read the file into a new dictionary
  NSDictionary *newDictionary = [NSDictionary dictionaryWithContentsOfFile:filePath];

  // Grab the values and log them out
  CGPoint point = [newDictionary pointForKey:@"pointValue"];
  CGSize size = [newDictionary sizeForKey:@"sizeValue"];
  CGRect rect = [newDictionary rectForKey:@"rectValue"];
  NSLog(@"Point: %.0f, %.0f", point.x, point.y);
  NSLog(@"Size: %.0f, %.0f", size.width, size.height);
  NSLog(@"Rect: %.0f, %.0f - %.0f, %.0f", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);

  [pool drain];
  return 0;
}
