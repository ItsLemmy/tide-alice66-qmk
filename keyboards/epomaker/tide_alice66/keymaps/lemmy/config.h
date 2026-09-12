// SPDX-License-Identifier: GPL-2.0-or-later

#pragma once
// Use QMK's standard settling time instead of the board's aggressive 1 ms.
#undef DEBOUNCE
#define DEBOUNCE 5

// The clean wireless build uses only standard QMK RGB Matrix effects.
#undef ENABLE_RGB_MATRIX_RGBR_PLAY
// In USB mode, service only queued module commands instead of polling the
// wireless and low-power stacks after every matrix scan.
#define WIRELESS_USB_IDLE_TASK_DISABLE

// Keep VIA compatible with the seven-layer stock EEPROM layout.
#undef DYNAMIC_KEYMAP_LAYER_COUNT
#define DYNAMIC_KEYMAP_LAYER_COUNT 7
