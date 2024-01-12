"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var catchAsync = function (fn) { return function (req, res, next) {
    Promise.resolve(fn(req, res, next)).catch(function (err) { return next(err); });
}; };
exports.default = catchAsync;
//# sourceMappingURL=catchAsync.js.map