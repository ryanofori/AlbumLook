//
//  URLBuilder.swift
//  Vema Album
//
//  Created by Ryan Ofori on 7/6/22.
//

import Foundation
class URLBuilder {
    let fullURL = """
        https://rss.applemarketingtools.com/api/v2/us/music/most-played/10/albums.json
    """
    let startURL = "https://rss.applemarketingtools.com/api"
    let apiVersion = "/v2"
    let musicType = "/music"
    let storefront = "/us"
    let type = "/albums"
    let feed = "/most-played"
    let resultLimit = "/100"
    let format = ".json"
    
}
