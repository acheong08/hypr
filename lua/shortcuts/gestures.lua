-- 3-finger horizontal swipe scrolls between columns
hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "scroll_move",
})

-- Disable snap-to-grid when moving columns
hl.config({
    gestures = {
        scrolling = {
            move_snap_to_grid = false,
        },
    },
})
