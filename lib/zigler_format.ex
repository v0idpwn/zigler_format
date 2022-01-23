defmodule ZiglerFormat do
  use Zig, link_libc: true

  ~Z"""
  /// nif: format_string/1
  fn format_string(env: beam.env, source_code_binary: beam.term) !beam.term {
      const source_code: []u8 = try beam.get_char_slice(env, source_code_binary);

      var tree = try std.zig.parse(beam.allocator, source_code);
      defer tree.deinit(beam.allocator);

      // no-op if parsing errors
      if (tree.errors.len == 0) {
          const formatted = try tree.render(beam.allocator);
          defer beam.allocator.free(formatted);

          return beam.make_slice(env, formatted);
      } else {
          return source_code_binary;
      }
  }
  """
end
