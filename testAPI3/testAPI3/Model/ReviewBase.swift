/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct ReviewBase : Codable {
	let id : String?
	let author : String?
	let content : String?
	let iso_639_1 : String?
	let media_id : Int?
	let media_title : String?
	let media_type : String?
	let url : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case author = "author"
		case content = "content"
		case iso_639_1 = "iso_639_1"
		case media_id = "media_id"
		case media_title = "media_title"
		case media_type = "media_type"
		case url = "url"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		author = try values.decodeIfPresent(String.self, forKey: .author)
		content = try values.decodeIfPresent(String.self, forKey: .content)
		iso_639_1 = try values.decodeIfPresent(String.self, forKey: .iso_639_1)
		media_id = try values.decodeIfPresent(Int.self, forKey: .media_id)
		media_title = try values.decodeIfPresent(String.self, forKey: .media_title)
		media_type = try values.decodeIfPresent(String.self, forKey: .media_type)
		url = try values.decodeIfPresent(String.self, forKey: .url)
	}

}
