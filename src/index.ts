/**
 * This is extends from https://github.com/christophehurpeau/multiregexp
 */

import MultiRegExp from "./lib/MultiRegExp.js";
import type { ReExce } from "./lib/RegExpMatch.js";
export type MultiRegexpExceArray = ReExce[];

class MultiRegexp extends MultiRegExp {
	// constructor(iterable: Iterable<RegExp>) {
	// 	super(iterable);
	// }
	/**
	 * Find all matches in the given string starting at the given index.
	 * @param str the string to search.
	 * @param start the starting index.
	 * @return an array of all matches, or null if no match is found.
	 */
	getMatched(str: string, start: number = 0): MultiRegexpExceArray | null {
		const mr: MultiRegexpExceArray = [];
		for (const m of this.allMatches(str, start)) {
			if (m.resultObj) {
				mr.push(m.resultObj);
			}
		}
		return mr.length ? mr : null;
	}
}

export default MultiRegexp;
