package com.airbnb.lottie.model.content;

import androidx.core.graphics.BlendModeCompat;

/* loaded from: classes2.dex */
public enum LBlendMode {
    NORMAL,
    MULTIPLY,
    SCREEN,
    OVERLAY,
    DARKEN,
    LIGHTEN,
    COLOR_DODGE,
    COLOR_BURN,
    HARD_LIGHT,
    SOFT_LIGHT,
    DIFFERENCE,
    EXCLUSION,
    HUE,
    SATURATION,
    COLOR,
    LUMINOSITY,
    ADD,
    HARD_MIX;

    /* renamed from: com.airbnb.lottie.model.content.LBlendMode$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$LBlendMode;

        static {
            int[] iArr = new int[LBlendMode.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$LBlendMode = iArr;
            try {
                iArr[LBlendMode.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.OVERLAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.DARKEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.LIGHTEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.ADD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.MULTIPLY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.COLOR_DODGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.COLOR_BURN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.HARD_LIGHT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.SOFT_LIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.DIFFERENCE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.EXCLUSION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.HUE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.SATURATION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.COLOR.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.LUMINOSITY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$LBlendMode[LBlendMode.HARD_MIX.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public BlendModeCompat toNativeBlendMode() {
        int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$LBlendMode[ordinal()];
        if (i == 2) {
            return BlendModeCompat.SCREEN;
        }
        if (i == 3) {
            return BlendModeCompat.OVERLAY;
        }
        if (i == 4) {
            return BlendModeCompat.DARKEN;
        }
        if (i == 5) {
            return BlendModeCompat.LIGHTEN;
        }
        if (i != 6) {
            return null;
        }
        return BlendModeCompat.PLUS;
    }
}
