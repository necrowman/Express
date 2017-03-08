//===--- Package.swift -----------------------------------------------------===//
//
//Copyright (c) 2015-2016 Daniel Leping (dileping)
//
//This file is part of Swift Express.
//
//Swift Express is free software: you can redistribute it and/or modify
//it under the terms of the GNU Lesser General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//(at your option) any later version.
//
//Swift Express is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU Lesser General Public License for more details.
//
//You should have received a copy of the GNU Lesser General Public License
//along with Swift Express.  If not, see <http://www.gnu.org/licenses/>.
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
    name: "Express",
   
    targets: [
        Target(
            name: "Express"
        ),
        Target(
        	name:"Demo", 
        	dependencies:[.Target(name:"Express")]
        )
    ],
    dependencies: [
    	.Package(url: "https://github.com/reactive-swift/Future.git", "0.2.0-alpha.1"),
    	.Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", majorVersion: 15),
    	.Package(url: "https://github.com/crossroadlabs/PathToRegex.git", majorVersion: 0, minor: 4),
    	.Package(url: "https://github.com/kylef/Stencil.git", majorVersion: 0, minor: 8),
        //.Package(url: "https://github.com/groue/GRMustache.swift", majorVersion: 2, minor: 0),
    	.Package(url: "https://github.com/crossroadlabs/CEVHTP.git", majorVersion: 0, minor: 4),
    ],
    exclude: ["doc"]
)
