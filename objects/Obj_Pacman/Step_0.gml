var horizontalDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var verticalDirection = keyboard_check(ord("S")) - keyboard_check(ord("W"))

x += horizontalDirection*moveSpeed
y += verticalDirection*moveSpeed