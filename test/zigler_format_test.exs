defmodule ZiglerFormatTest do
  use ExUnit.Case
  doctest ZiglerFormat

  test "format_string with valid input" do
    assert "var a = 1;\n" == ZiglerFormat.format_string("var a     = 1;");
  end

  test "format_string with invalid input does a no-op" do
    assert "var a =    ;" == ZiglerFormat.format_string("var a =    ;");
  end
end
