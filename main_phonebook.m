#import<Foundation/Foundation.h>
#import "Phone.h"
#import "PhoneBook.h"

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	Phone *p1 = [[Phone alloc] init];
	Phone *p2 = [[Phone alloc] init];
	Phone *p3 = [[Phone alloc] init];
	
	PhoneBook *book = [[PhoneBook alloc]init];
	[book initial];
	
	[p1 setName:@"abc"];
	[p1 setEmail:@"a@b.c"];
	[p1 setNum:98214345];
	
	[p2 setName:@"def"];
	[p2 setEmail:@"d@e.f"];
	[p2 setNum:85412536];
	
	[p3 setName:@"xyz"];
	[p3 setEmail:@"x@y.z"];
	[p3 setNum:74523641];
	
	//adding
	[book addEntry:p1];
	[book addEntry:p2];
	[book addEntry:p3];
	
	
	
	//remove
	[book delEntry:p2];
	
	//list all
	[book listAll];
	
	//count
	NSLog(@"Number of Entries: %d\n", [book countAll]);
	
	//Compare
	[book searchWithName:@"def"];
	
	[pool release];
	
	return 0;
}
