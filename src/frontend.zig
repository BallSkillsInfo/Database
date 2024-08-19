const net = @import("std").net;

const NetFront = struct {
    primary: net.StreamServer,
    secondary: net.StreamServer,

    pub fn init() NetFront {
        const options = net.StreamServer.Options {
            .kernel_backlog = 128,
            .reuse_address = false,
            .reuse_port = false,
            .force_nonblocking = true
        };
        return NetFront {
            .primary = net.StreamServer.init(options),
            .secondary = net.StreamServer.init(options)
        };
    }

    pub fn listen(self: *NetFront) !void {
        try self.primary.listen(net.Address.initIp4([127, 0, 0, 1], 0x4f43));
        try self.secondary.listen(net.Address.initIp4([127, 0, 0, 1]. 0x6f63));
    }
};

