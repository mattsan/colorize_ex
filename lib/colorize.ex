defmodule Colorize do
  @moduledoc """
  string olorization sigil

  see https://en.wikipedia.org/wiki/ANSI_escape_code#Colors

  - `k` - black
  - `r` - red
  - `g` - green
  - `y` - yellow
  - `b` - blue
  - `m` - magenta
  - `c` - cyan
  - `w` - w

  A option character is capitalized, the string is put bright color.

  ```
  ~l"white"w # white
  ~l"white"W # bright white
  ```

  A second option defines background color.

  ```
  ~l"black in white"wk # string is white, background is black
  ```
  """

  @color_table %{
    ?k => 30, ?K => 90,
    ?r => 31, ?R => 91,
    ?g => 32, ?G => 92,
    ?y => 33, ?Y => 93,
    ?b => 34, ?B => 94,
    ?m => 35, ?M => 95,
    ?c => 36, ?C => 96,
    ?w => 37, ?W => 97
  }

  @colors Map.keys(@color_table)

  @doc """
  colorize string

  ## example

  ```
  iex> import Colorize
  iex> ~l"red"r
  "\e[31mred\e[m"
  iex> ~l"green"g
  "\e[32mgreen\e[m"
  iex> ~l"blue"b
  "\e[34mblue\e[m"
  iex>
  ```
  """
  def sigil_l(s, [color]) when color in @colors do
    colorize(s, @color_table[color])
  end

  def sigil_l(s, [color, background]) when color in @colors and background in @colors do
    colorize(s, @color_table[color], @color_table[background])
  end

  defp colorize(s, code) do
    "\x1b[#{code}m#{s}\x1b[m"
  end

  defp colorize(s, front, back) do
    "\x1b[#{front};#{back + 10}m#{s}\x1b[m"
  end
end
