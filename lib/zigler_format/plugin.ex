defmodule ZiglerFormat.Plugin do
  @behaviour Mix.Tasks.Format

  def features(_opts) do
    [sigils: [:Z], extensions: [".zig"]]
  end

  def format(contents, _opts) do
    ZiglerFormat.format_string(contents)
  end
end
