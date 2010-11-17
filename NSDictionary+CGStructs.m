#import "NSDictionary+CGStructs.h"

@implementation NSDictionary (CGStructs)

- (CGPoint)pointForKey:(NSString *)key
{
  CGPoint point = CGPointZero;
  NSDictionary *dictionary = [self valueForKey:key];
  BOOL success = CGPointMakeWithDictionaryRepresentation((CFDictionaryRef)dictionary, &point);
  if (success) return point;
  else return CGPointZero;
}

- (CGSize)sizeForKey:(NSString *)key
{
  CGSize size = CGSizeZero;
  NSDictionary *dictionary = [self valueForKey:key];
  BOOL success = CGSizeMakeWithDictionaryRepresentation((CFDictionaryRef)dictionary, &size);
  if (success) return size;
  else return CGSizeZero;
}

- (CGRect)rectForKey:(NSString *)key
{
  CGRect rect = CGRectZero;
  NSDictionary *dictionary = [self valueForKey:key];
  BOOL success = CGRectMakeWithDictionaryRepresentation((CFDictionaryRef)dictionary, &rect);
  if (success) return rect;
  else return CGRectZero;
}

@end

@implementation NSMutableDictionary (CGStructs)

- (void)setPoint:(CGPoint)value forKey:(NSString *)key
{
  [self setValue:(NSDictionary *)CGPointCreateDictionaryRepresentation(value)
          forKey:key];
}

- (void)setSize:(CGSize)value forKey:(NSString *)key
{
  [self setValue:(NSDictionary *)CGSizeCreateDictionaryRepresentation(value)
          forKey:key];
}

- (void)setRect:(CGRect)value forKey:(NSString *)key
{
  [self setValue:(NSDictionary *)CGRectCreateDictionaryRepresentation(value)
          forKey:key];
}

@end
