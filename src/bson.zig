const std = @import("std");
const Allocator = std.mem.Allocator;

const ElementType = enum(u3) {
    Double,
    String,
    Document,
    Array,
    Binary,
    Datetime,
    Null,
    JSCode,
};

const ElementDouble = struct {
    name: []u8,
    value: f64,

    pub fn init(name: []const u8, val: f64) ElementDouble {
        return ElementDouble{ .name = name, .value = val };
    }
};

const ElementString = struct {
    name: []u8,
    value: []u8,

    pub fn init(name: []const u8, val: []const u8) ElementString {
        return ElementString{ .name = name, .value = val };
    }
};

const Element = struct { data: []u8 };

const Document = struct {
    size: i32,
    elements: Element,

    pub fn init(data: []u8) !Documents {
        
    }
};
