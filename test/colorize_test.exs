defmodule ColorizeTest do
  use ExUnit.Case
  doctest Colorize

  import Colorize

  test "black" do
    assert ~l"black"k == "\x1b[30mblack\x1b[m"
    assert ~l"black"K == "\x1b[90mblack\x1b[m"
  end

  test "red" do
    assert ~l"red"r == "\x1b[31mred\x1b[m"
    assert ~l"red"R == "\x1b[91mred\x1b[m"
  end

  test "green" do
    assert ~l"green"g == "\x1b[32mgreen\x1b[m"
    assert ~l"green"G == "\x1b[92mgreen\x1b[m"
  end

  test "yellow" do
    assert ~l"yellow"y == "\x1b[33myellow\x1b[m"
    assert ~l"yellow"Y == "\x1b[93myellow\x1b[m"
  end

  test "blue" do
    assert ~l"blue"b == "\x1b[34mblue\x1b[m"
    assert ~l"blue"B == "\x1b[94mblue\x1b[m"
  end

  test "magenta" do
    assert ~l"magenta"m == "\x1b[35mmagenta\x1b[m"
    assert ~l"magenta"M == "\x1b[95mmagenta\x1b[m"
  end

  test "cyan" do
    assert ~l"cyan"c == "\x1b[36mcyan\x1b[m"
    assert ~l"cyan"C == "\x1b[96mcyan\x1b[m"
  end

  test "white" do
    assert ~l"white"w == "\x1b[37mwhite\x1b[m"
    assert ~l"white"W == "\x1b[97mwhite\x1b[m"
  end

  test "black on white" do
    assert ~l"black"kw == "\x1b[30;47mblack\x1b[m"
    assert ~l"black"KW == "\x1b[90;107mblack\x1b[m"
  end

  test "red on black" do
    assert ~l"red"rk == "\x1b[31;40mred\x1b[m"
    assert ~l"red"RK == "\x1b[91;100mred\x1b[m"
  end

  test "green on red" do
    assert ~l"green"gr == "\x1b[32;41mgreen\x1b[m"
    assert ~l"green"GR == "\x1b[92;101mgreen\x1b[m"
  end

  test "yellow on green" do
    assert ~l"yellow"yg == "\x1b[33;42myellow\x1b[m"
    assert ~l"yellow"YG == "\x1b[93;102myellow\x1b[m"
  end

  test "blue on yellow" do
    assert ~l"blue"by == "\x1b[34;43mblue\x1b[m"
    assert ~l"blue"BY == "\x1b[94;103mblue\x1b[m"
  end

  test "magenta on blue" do
    assert ~l"magenta"mb == "\x1b[35;44mmagenta\x1b[m"
    assert ~l"magenta"MB == "\x1b[95;104mmagenta\x1b[m"
  end

  test "cyan on magenta" do
    assert ~l"cyan"cm == "\x1b[36;45mcyan\x1b[m"
    assert ~l"cyan"CM == "\x1b[96;105mcyan\x1b[m"
  end

  test "white on cyan" do
    assert ~l"white"wc == "\x1b[37;46mwhite\x1b[m"
    assert ~l"white"WC == "\x1b[97;106mwhite\x1b[m"
  end
end
