/*    ____                 __           _______ _____
 *   / __/    _____ ___ __/ /__  ____  /_  __(_) _/ /_
 *  _\ \| |/|/ / _ `/ // / / _ \/ __/   / / / / _/ __/
 * /___/|__,__/\_,_/\_, /_/\___/_/     /_/ /_/_/ \__/
 *                 /___/
 * Utils & Extensions for Swift Projects
 * (c) 2018 Ciathyza
 */

import Foundation


///
/// Hashable wrapper for a metatype value.
///
public struct Metatype<T>:Hashable
{
	let base:T.Type
	
	
	public static func ==(lhs:Metatype, rhs:Metatype) -> Bool
	{
		return lhs.base == rhs.base
	}
	
	
	init(_ base:T.Type)
	{
		self.base = base
	}
	
	
	public var hashValue:Int
	{
		return ObjectIdentifier(base).hashValue
	}
}
