TARGET := iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MahmutTweak

MahmutTweak_FILES = Tweak.xm
MahmutTweak_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
