ifeq ($(strip $(TIDE_ALICE66_CLEAN_WIRELESS)),yes)
    # Keep the vendor transport and low-power stack without its RGB-recording layer.
    OPT_DEFS += -DTIDE_ALICE66_CLEAN_WIRELESS
    include keyboards/epomaker/tide_alice66/control/control.mk
    include keyboards/epomaker/linker/wireless/wireless.mk
else ifeq ($(strip $(TIDE_ALICE66_WIRED_ONLY)),yes)
    OPT_DEFS += -DTIDE_ALICE66_WIRED_ONLY
    override WIRELESS_ENABLE := no
else
    RGB_MATRIX_CUSTOM_USER = yes
    RGBLIGHT_DRIVER = custom
    include keyboards/epomaker/tide_alice66/rgb_record/rgb_record.mk
    include keyboards/epomaker/tide_alice66/control/control.mk
    include keyboards/epomaker/linker/wireless/wireless.mk
endif
