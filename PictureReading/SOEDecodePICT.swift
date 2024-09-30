//
//  main.swift
//  PictureReading
//
//  Created by Uli Kusterer on 30.09.24.
//

import Cocoa

@_cdecl("SOEDecodePICT") func decodePICT(pict: NSData) -> NSImage? {
	var format: ImageFormat = .unknown
	guard let bir = Picture.rep(pict as Data, format: &format) else { return nil }
	let img = NSImage(size: NSSize(width: bir.pixelsWide, height: bir.pixelsHigh))
	img.addRepresentation(bir)
	return img
}
