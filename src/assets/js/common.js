var throttle = {
    // 维护上次执行的时间
    last:0,
    timer: null,
    throttle: function (fn, interval) {
        const context = this;
        return function () {
            const args = arguments;
            const now = Date.now();
            // 根据当前时间和上次执行时间的差值判断是否频繁
            if (now - context.last < interval) {
                clearTimeout(context.timer)
            }
            context.last = now;
            context.timer = setTimeout(() => {
                fn.apply(context, args);
            }, interval);
        }();
    }
}



export {
    throttle
}
