// Copyright(C) 2021 Lars Pontoppidan. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.
module sdl

//
// SDL_keycode.h
//

// Keycode is the SDL virtual key representation.
//
// Values of this type are used to represent keyboard keys using the current
// layout of the keyboard.  These values include Unicode values representing
// the unmodified character that would be generated by pressing the key, or
// an SDLK_* constant for those keys that do not generate characters.
//
// A special exception is the number keys at the top of the keyboard which
// always map to SDLK_0...SDLK_9, regardless of layout.

// Sint32 C.SDL_Keycode;
pub type Keycode = int

pub const (
	sdlk_scancode_mask = C.SDLK_SCANCODE_MASK // (1<<30)
)

fn C.SDL_SCANCODE_TO_KEYCODE(x int) Keycode

pub fn scancode_to_keycode(scancode Scancode) Keycode {
	return C.SDL_SCANCODE_TO_KEYCODE(int(scancode))
}

// Keymod is C.SDL_Keymod
pub enum Keymod {
	@none = C.KMOD_NONE // 0x0000
	lshift = C.KMOD_LSHIFT // 0x0001
	rshift = C.KMOD_RSHIFT // 0x0002
	lctrl = C.KMOD_LCTRL // 0x0040
	rctrl = C.KMOD_RCTRL // 0x0080
	lalt = C.KMOD_LALT // 0x0100
	ralt = C.KMOD_RALT // 0x0200
	lgui = C.KMOD_LGUI // 0x0400
	rgui = C.KMOD_RGUI // 0x0800
	num = C.KMOD_NUM // 0x1000
	caps = C.KMOD_CAPS // 0x2000
	mode = C.KMOD_MODE // 0x4000
	scroll = C.KMOD_SCROLL // 0x8000
	//
	ctrl = C.KMOD_CTRL
	shift = C.KMOD_SHIFT
	alt = C.KMOD_ALT
	gui = C.KMOD_GUI
	//
	reserved = C.KMOD_RESERVED // (KMOD_SCROLL) This is for source-level compatibility with SDL 2.0.0.
}

pub enum KeyCode {
	unknown = C.SDLK_UNKNOWN // 0
	@return = C.SDLK_RETURN // '\r'
	escape = C.SDLK_ESCAPE // '\x1B'
	backspace = C.SDLK_BACKSPACE // '\b'
	tab = C.SDLK_TAB // '\t'
	space = C.SDLK_SPACE // ' '
	exclaim = C.SDLK_EXCLAIM // '!'
	quotedbl = C.SDLK_QUOTEDBL // '"'
	hash = C.SDLK_HASH // '#'
	percent = C.SDLK_PERCENT // '%'
	dollar = C.SDLK_DOLLAR // '$'
	ampersand = C.SDLK_AMPERSAND // '&'
	quote = C.SDLK_QUOTE // '\''
	leftparen = C.SDLK_LEFTPAREN // '('
	rightparen = C.SDLK_RIGHTPAREN // ')'
	asterisk = C.SDLK_ASTERISK // '*'
	plus = C.SDLK_PLUS // '+'
	comma = C.SDLK_COMMA // ''
	minus = C.SDLK_MINUS // '-'
	period = C.SDLK_PERIOD // '.'
	slash = C.SDLK_SLASH // '/'
	_0 = C.SDLK_0 // '0'
	_1 = C.SDLK_1 // '1'
	_2 = C.SDLK_2 // '2'
	_3 = C.SDLK_3 // '3'
	_4 = C.SDLK_4 // '4'
	_5 = C.SDLK_5 // '5'
	_6 = C.SDLK_6 // '6'
	_7 = C.SDLK_7 // '7'
	_8 = C.SDLK_8 // '8'
	_9 = C.SDLK_9 // '9'
	colon = C.SDLK_COLON // ':'
	semicolon = C.SDLK_SEMICOLON // ';'
	less = C.SDLK_LESS // '<'
	equals = C.SDLK_EQUALS // '='
	greater = C.SDLK_GREATER // '>'
	question = C.SDLK_QUESTION // '?'
	at = C.SDLK_AT // '@'
	/*
	Skip uppercase letters
	*/
	leftbracket = C.SDLK_LEFTBRACKET // '['
	backslash = C.SDLK_BACKSLASH // '\\'
	rightbracket = C.SDLK_RIGHTBRACKET // ']'
	caret = C.SDLK_CARET // '^'
	underscore = C.SDLK_UNDERSCORE // '_'
	backquote = C.SDLK_BACKQUOTE // '`'
	a = C.SDLK_a // 'a'
	b = C.SDLK_b // 'b'
	c = C.SDLK_c // 'c'
	d = C.SDLK_d // 'd'
	e = C.SDLK_e // 'e'
	f = C.SDLK_f // 'f'
	g = C.SDLK_g // 'g'
	h = C.SDLK_h // 'h'
	i = C.SDLK_i // 'i'
	j = C.SDLK_j // 'j'
	k = C.SDLK_k // 'k'
	l = C.SDLK_l // 'l'
	m = C.SDLK_m // 'm'
	n = C.SDLK_n // 'n'
	o = C.SDLK_o // 'o'
	p = C.SDLK_p // 'p'
	q = C.SDLK_q // 'q'
	r = C.SDLK_r // 'r'
	s = C.SDLK_s // 's'
	t = C.SDLK_t // 't'
	u = C.SDLK_u // 'u'
	v = C.SDLK_v // 'v'
	w = C.SDLK_w // 'w'
	x = C.SDLK_x // 'x'
	y = C.SDLK_y // 'y'
	z = C.SDLK_z // 'z'
	//
	capslock = C.SDLK_CAPSLOCK
	//
	f1 = C.SDLK_F1
	f2 = C.SDLK_F2
	f3 = C.SDLK_F3
	f4 = C.SDLK_F4
	f5 = C.SDLK_F5
	f6 = C.SDLK_F6
	f7 = C.SDLK_F7
	f8 = C.SDLK_F8
	f9 = C.SDLK_F9
	f10 = C.SDLK_F10
	f11 = C.SDLK_F11
	f12 = C.SDLK_F12
	//
	printscreen = C.SDLK_PRINTSCREEN
	scrolllock = C.SDLK_SCROLLLOCK
	pause = C.SDLK_PAUSE
	insert = C.SDLK_INSERT
	home = C.SDLK_HOME
	pageup = C.SDLK_PAGEUP
	delete = C.SDLK_DELETE // '\x7F'
	end = C.SDLK_END
	pagedown = C.SDLK_PAGEDOWN
	right = C.SDLK_RIGHT
	left = C.SDLK_LEFT
	down = C.SDLK_DOWN
	up = C.SDLK_UP
	//
	numlockclear = C.SDLK_NUMLOCKCLEAR
	divide = C.SDLK_KP_DIVIDE
	kp_multiply = C.SDLK_KP_MULTIPLY
	kp_minus = C.SDLK_KP_MINUS
	kp_plus = C.SDLK_KP_PLUS
	kp_enter = C.SDLK_KP_ENTER
	kp_1 = C.SDLK_KP_1
	kp_2 = C.SDLK_KP_2
	kp_3 = C.SDLK_KP_3
	kp_4 = C.SDLK_KP_4
	kp_5 = C.SDLK_KP_5
	kp_6 = C.SDLK_KP_6
	kp_7 = C.SDLK_KP_7
	kp_8 = C.SDLK_KP_8
	kp_9 = C.SDLK_KP_9
	kp_0 = C.SDLK_KP_0
	kp_period = C.SDLK_KP_PERIOD
	//
	application = C.SDLK_APPLICATION
	power = C.SDLK_POWER
	kp_equals = C.SDLK_KP_EQUALS
	f13 = C.SDLK_F13
	f14 = C.SDLK_F14
	f15 = C.SDLK_F15
	f16 = C.SDLK_F16
	f17 = C.SDLK_F17
	f18 = C.SDLK_F18
	f19 = C.SDLK_F19
	f20 = C.SDLK_F20
	f21 = C.SDLK_F21
	f22 = C.SDLK_F22
	f23 = C.SDLK_F23
	f24 = C.SDLK_F24
	execute = C.SDLK_EXECUTE
	help = C.SDLK_HELP
	menu = C.SDLK_MENU
	@select = C.SDLK_SELECT
	stop = C.SDLK_STOP
	again = C.SDLK_AGAIN
	undo = C.SDLK_UNDO
	cut = C.SDLK_CUT
	copy = C.SDLK_COPY
	paste = C.SDLK_PASTE
	find = C.SDLK_FIND
	mute = C.SDLK_MUTE
	volumeup = C.SDLK_VOLUMEUP
	volumedown = C.SDLK_VOLUMEDOWN
	kp_comma = C.SDLK_KP_COMMA
	equalsas400 = C.SDLK_KP_EQUALSAS400
	//
	alterase = C.SDLK_ALTERASE
	sysreq = C.SDLK_SYSREQ
	cancel = C.SDLK_CANCEL
	clear = C.SDLK_CLEAR
	prior = C.SDLK_PRIOR
	return2 = C.SDLK_RETURN2
	separator = C.SDLK_SEPARATOR
	out = C.SDLK_OUT
	oper = C.SDLK_OPER
	clearagain = C.SDLK_CLEARAGAIN
	crsel = C.SDLK_CRSEL
	exsel = C.SDLK_EXSEL
	//
	kp_00 = C.SDLK_KP_00
	kp_000 = C.SDLK_KP_000
	thousandsseparator = C.SDLK_THOUSANDSSEPARATOR
	decimalseparator = C.SDLK_DECIMALSEPARATOR
	currencyunit = C.SDLK_CURRENCYUNIT
	currencysubunit = C.SDLK_CURRENCYSUBUNIT
	kp_leftparen = C.SDLK_KP_LEFTPAREN
	kp_rightparen = C.SDLK_KP_RIGHTPAREN
	kp_leftbrace = C.SDLK_KP_LEFTBRACE
	kp_rightbrace = C.SDLK_KP_RIGHTBRACE
	kp_tab = C.SDLK_KP_TAB
	kp_backspace = C.SDLK_KP_BACKSPACE
	kp_a = C.SDLK_KP_A
	kp_b = C.SDLK_KP_B
	kp_c = C.SDLK_KP_C
	kp_d = C.SDLK_KP_D
	kp_e = C.SDLK_KP_E
	kp_f = C.SDLK_KP_F
	kp_xor = C.SDLK_KP_XOR
	kp_power = C.SDLK_KP_POWER
	kp_percent = C.SDLK_KP_PERCENT
	kp_less = C.SDLK_KP_LESS
	kp_greater = C.SDLK_KP_GREATER
	kp_ampersand = C.SDLK_KP_AMPERSAND
	kp_dblampersand = C.SDLK_KP_DBLAMPERSAND
	kp_verticalbar = C.SDLK_KP_VERTICALBAR
	kp_dblverticalbar = C.SDLK_KP_DBLVERTICALBAR
	kp_colon = C.SDLK_KP_COLON
	kp_hash = C.SDLK_KP_HASH
	kp_space = C.SDLK_KP_SPACE
	kp_at = C.SDLK_KP_AT
	kp_exclam = C.SDLK_KP_EXCLAM
	kp_memstore = C.SDLK_KP_MEMSTORE
	kp_memrecall = C.SDLK_KP_MEMRECALL
	kp_memclear = C.SDLK_KP_MEMCLEAR
	kp_memadd = C.SDLK_KP_MEMADD
	kp_memsubtract = C.SDLK_KP_MEMSUBTRACT
	kp_memmultiply = C.SDLK_KP_MEMMULTIPLY
	kp_memdivide = C.SDLK_KP_MEMDIVIDE
	kp_plusminus = C.SDLK_KP_PLUSMINUS
	kp_clear = C.SDLK_KP_CLEAR
	kp_clearentry = C.SDLK_KP_CLEARENTRY
	kp_binary = C.SDLK_KP_BINARY
	kp_octal = C.SDLK_KP_OCTAL
	kp_decimal = C.SDLK_KP_DECIMAL
	kp_hexadecimal = C.SDLK_KP_HEXADECIMAL
	lctrl = C.SDLK_LCTRL
	lshift = C.SDLK_LSHIFT
	lalt = C.SDLK_LALT
	lgui = C.SDLK_LGUI
	rctrl = C.SDLK_RCTRL
	rshift = C.SDLK_RSHIFT
	ralt = C.SDLK_RALT
	rgui = C.SDLK_RGUI
	//
	mode = C.SDLK_MODE
	//
	audionext = C.SDLK_AUDIONEXT
	audioprev = C.SDLK_AUDIOPREV
	audiostop = C.SDLK_AUDIOSTOP
	audioplay = C.SDLK_AUDIOPLAY
	audiomute = C.SDLK_AUDIOMUTE
	mediaselect = C.SDLK_MEDIASELECT
	www = C.SDLK_WWW
	mail = C.SDLK_MAIL
	calculator = C.SDLK_CALCULATOR
	computer = C.SDLK_COMPUTER
	ac_search = C.SDLK_AC_SEARCH
	ac_home = C.SDLK_AC_HOME
	ac_back = C.SDLK_AC_BACK
	ac_forward = C.SDLK_AC_FORWARD
	ac_stop = C.SDLK_AC_STOP
	ac_refresh = C.SDLK_AC_REFRESH
	ac_bookmarks = C.SDLK_AC_BOOKMARKS
	//
	brightnessdown = C.SDLK_BRIGHTNESSDOWN
	brightnessup = C.SDLK_BRIGHTNESSUP
	displayswitch = C.SDLK_DISPLAYSWITCH
	kbdillumtoggle = C.SDLK_KBDILLUMTOGGLE
	kbdillumdown = C.SDLK_KBDILLUMDOWN
	kbdillumup = C.SDLK_KBDILLUMUP
	eject = C.SDLK_EJECT
	sleep = C.SDLK_SLEEP
	app1 = C.SDLK_APP1
	app2 = C.SDLK_APP2
	audiorewind = C.SDLK_AUDIOREWIND
	audiofastforward = C.SDLK_AUDIOFASTFORWARD
}
