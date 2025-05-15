//
//  main.m
//  PictureReading
//
//  Created by Uli Kusterer on 30.09.24.
//

#import "SOEDecodePICT.h"

int main(int argc, const char* argv[]) {
	@autoreleasepool {
		NSData *imgData = [NSData dataWithContentsOfFile: @"PICT 128.data"];
		NSImage * img = SOEDecodePICT(imgData);
		NSLog(@"%@", img);
		if ([[img TIFFRepresentation] writeToFile: @"PICT 128.tiff" atomically: YES]) {
			NSLog(@"Written to %@/PICT 128.tiff", [NSFileManager.defaultManager currentDirectoryPath]);
		}
		
		imgData = [NSData dataWithContentsOfFile: @"PICT 137.data"];
		img = SOEDecodePICT(imgData);
		NSLog(@"%@", img);
		if ([[img TIFFRepresentation] writeToFile: @"PICT 137.tiff" atomically: YES]) {
			NSLog(@"Written to %@/PICT 137.tiff", [NSFileManager.defaultManager currentDirectoryPath]);
		}
	}
}
