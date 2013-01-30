#!/usr/bin/vala --debug --verbose --save-temps --pkg babeltrace --vapidir=../src
/*
 * valac --debug --verbose --save-temps --pkg babeltrace --vapidir ../src test-babeltrace.vala
 */
using Babeltrace;

public class BabeltraceValaTest: Object {
	public static void test_basic() {
		assert (true);
	}
	public static void main (string[] args) {
		Test.init (ref args);
		Test.add_func ("/babeltrace/vala/basic", test_basic);
		Test.run ();
	}
}
