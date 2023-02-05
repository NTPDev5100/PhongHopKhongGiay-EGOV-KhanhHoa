

function alert_success(msg) {
    var notice = new PNotify({
        title: 'Thông báo',
        text: msg,
        delay: 1000,
        type: 'success',
        icon: 'glyphicon glyphicon-ok',
        buttons: {
            closer: true,
            sticker: true
        }
    });
    notice.get().click(function () {
        notice.remove();
    });
    return notice;
}

function alert_info(msg) {
    var notice = new PNotify({
        title: 'Thông báo',
        text: msg,
        delay: 1000,
        type: 'info',
        icon: 'glyphicon glyphicon-exclamation-sign',
        buttons: {
            closer: true,
            sticker: true
        }
    });
    notice.get().click(function () {
        notice.remove();
    });
    return notice;
}

function alert_error(msg) {
    var notice = new PNotify({
        title: 'Thông báo',
        text: msg,
        delay: 1000,
        type: 'error',
        icon: ' glyphicon glyphicon-remove-sign',
        buttons: {
            closer: true,
            sticker: true
        }
    });
    notice.get().click(function () {
        notice.remove();
    });
    return notice;
}

function alert_msg(title, msg) {
    var notice = new PNotify({
        title: title,
        text: msg,
        delay: 1000,
        icon: 'glyphicon glyphicon-envelope',
        buttons: {
            closer: true,
            sticker: true
        }
    });
    notice.get().click(function () {
        notice.remove();
    });
    return notice;
}

function alert_welcome(title, msg) {
    var stackBarTop = { "dir1": "down", "dir2": "right", "push": "top", "spacing1": 0, "spacing2": 0 };
    var opts = {
        title: title == "" ? "Xin chào " : title,
        text: msg,
        addclass: "stack-bar-top",
        width: "100%",
        type: "info",
        stack: stackBarTop
    };
    var notice = new PNotify(opts);
    notice.get().click(function () {
        notice.remove();
    });
    return notice;
}

function alert_confirm(msg) {
    var notice = new PNotify({
        title: 'Cảnh báo',
        text: msg,
        icon: 'glyphicon glyphicon-question-sign',
        hide: false,
        confirm: {
            confirm: true
        },
        buttons: {
            closer: false,
            sticker: false
        },
        history: {
            history: false
        },
        addclass: 'stack-modal',
        stack: { 'dir1': 'down', 'dir2': 'right', 'modal': true }
    }).get().on('pnotify.confirm', function () {
        return 'true';
    }).on('pnotify.cancel', function () {
        return 'false';
    });
    console.log(notice);
    return notice;
}

function alert_warning(msg) {
    var notice = new PNotify({
        title: 'Cảnh báo',
        text: msg,
        delay: 1000,
        type: 'warning',
        icon: 'glyphicon glyphicon-warning-sign',
        buttons: {
            closer: true,
            sticker: true
        }
    });
    notice.get().click(function () {
        notice.remove();
    });
    return notice;
}