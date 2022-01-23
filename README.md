# ZiglerFormat

Format Zig NIFs with ease!

## Installation

The package can be installed by adding `zigler_format` to your list of
dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:zigler_format, "~> 0.1.0"}
  ]
end
```

Then, you can add `ZiglerFormat.Plugin` to your `.formatter.exs` file, as in:

```elixir
[
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs,zig}"],
  plugins: [ZiglerFormat.Plugin]
]
```

It is also recommended to add `zig` in allowed extensions.
