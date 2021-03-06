//Validate the kernel with refAllDecls
test "" {
    @import("std").testing.refAllDecls(@This());
}

const io = @import("driver/io.zig");
const x86 = @import("driver/x86.zig");
pub const panic = @import("panic.zig").panic;
usingnamespace @import("mem.zig");

/// This is the main boilerplate for kernel execution
/// Here, we are in charge of setting up the system for our needs.
/// Errors here will result in direct crashes with error messages.
export fn kInit(mboot_hdr: ?*c_void) void {
    io.init();

    //Print a very basic message
    io.println("Loaded into 64-bit kernel initializer!");


}
