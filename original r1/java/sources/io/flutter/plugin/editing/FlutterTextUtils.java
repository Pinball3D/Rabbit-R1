package io.flutter.plugin.editing;

import io.flutter.embedding.engine.FlutterJNI;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class FlutterTextUtils {
    public static final int CANCEL_TAG = 917631;
    public static final int CARRIAGE_RETURN = 13;
    public static final int COMBINING_ENCLOSING_KEYCAP = 8419;
    public static final int LINE_FEED = 10;
    public static final int ZERO_WIDTH_JOINER = 8205;
    private final FlutterJNI flutterJNI;

    public boolean isKeycapBase(int i) {
        return (48 <= i && i <= 57) || i == 35 || i == 42;
    }

    public boolean isTagSpecChar(int i) {
        return 917536 <= i && i <= 917630;
    }

    public FlutterTextUtils(FlutterJNI flutterJNI) {
        this.flutterJNI = flutterJNI;
    }

    public boolean isEmoji(int i) {
        return this.flutterJNI.isCodePointEmoji(i);
    }

    public boolean isEmojiModifier(int i) {
        return this.flutterJNI.isCodePointEmojiModifier(i);
    }

    public boolean isEmojiModifierBase(int i) {
        return this.flutterJNI.isCodePointEmojiModifierBase(i);
    }

    public boolean isVariationSelector(int i) {
        return this.flutterJNI.isCodePointVariantSelector(i);
    }

    public boolean isRegionalIndicatorSymbol(int i) {
        return this.flutterJNI.isCodePointRegionalIndicator(i);
    }

    public int getOffsetBefore(CharSequence charSequence, int i) {
        int codePointBefore;
        int charCount;
        int charCount2;
        int charCount3;
        int i2 = 0;
        int i3 = 1;
        if (i <= 1 || (charCount2 = i - (charCount = Character.charCount((codePointBefore = Character.codePointBefore(charSequence, i))))) == 0) {
            return 0;
        }
        if (codePointBefore == 10) {
            if (Character.codePointBefore(charSequence, charCount2) == 13) {
                charCount++;
            }
            return i - charCount;
        }
        if (isRegionalIndicatorSymbol(codePointBefore)) {
            int codePointBefore2 = Character.codePointBefore(charSequence, charCount2);
            int charCount4 = charCount2 - Character.charCount(codePointBefore2);
            while (charCount4 > 0 && isRegionalIndicatorSymbol(codePointBefore2)) {
                codePointBefore2 = Character.codePointBefore(charSequence, charCount4);
                charCount4 -= Character.charCount(codePointBefore2);
                i3++;
            }
            if (i3 % 2 == 0) {
                charCount += 2;
            }
            return i - charCount;
        }
        if (codePointBefore == 8419) {
            int codePointBefore3 = Character.codePointBefore(charSequence, charCount2);
            int charCount5 = charCount2 - Character.charCount(codePointBefore3);
            if (charCount5 > 0 && isVariationSelector(codePointBefore3)) {
                int codePointBefore4 = Character.codePointBefore(charSequence, charCount5);
                if (isKeycapBase(codePointBefore4)) {
                    charCount3 = Character.charCount(codePointBefore3) + Character.charCount(codePointBefore4);
                    charCount += charCount3;
                }
                return i - charCount;
            }
            if (isKeycapBase(codePointBefore3)) {
                charCount3 = Character.charCount(codePointBefore3);
                charCount += charCount3;
            }
            return i - charCount;
        }
        if (codePointBefore == 917631) {
            codePointBefore = Character.codePointBefore(charSequence, charCount2);
            int charCount6 = Character.charCount(codePointBefore);
            while (true) {
                charCount2 -= charCount6;
                if (charCount2 <= 0 || !isTagSpecChar(codePointBefore)) {
                    break;
                }
                charCount += Character.charCount(codePointBefore);
                codePointBefore = Character.codePointBefore(charSequence, charCount2);
                charCount6 = Character.charCount(codePointBefore);
            }
            if (!isEmoji(codePointBefore)) {
                return i - 2;
            }
            charCount += Character.charCount(codePointBefore);
        }
        if (isVariationSelector(codePointBefore)) {
            codePointBefore = Character.codePointBefore(charSequence, charCount2);
            if (!isEmoji(codePointBefore)) {
                return i - charCount;
            }
            charCount += Character.charCount(codePointBefore);
            charCount2 -= charCount;
        }
        if (isEmoji(codePointBefore)) {
            boolean z = false;
            int i4 = 0;
            while (true) {
                if (z) {
                    charCount += Character.charCount(codePointBefore) + i4 + 1;
                    z = false;
                }
                if (isEmojiModifier(codePointBefore)) {
                    int codePointBefore5 = Character.codePointBefore(charSequence, charCount2);
                    int charCount7 = charCount2 - Character.charCount(codePointBefore5);
                    if (charCount7 > 0 && isVariationSelector(codePointBefore5)) {
                        codePointBefore5 = Character.codePointBefore(charSequence, charCount7);
                        if (!isEmoji(codePointBefore5)) {
                            return i - charCount;
                        }
                        i2 = Character.charCount(codePointBefore5);
                        Character.charCount(codePointBefore5);
                    }
                    if (isEmojiModifierBase(codePointBefore5)) {
                        charCount += i2 + Character.charCount(codePointBefore5);
                    }
                } else {
                    if (charCount2 > 0) {
                        codePointBefore = Character.codePointBefore(charSequence, charCount2);
                        charCount2 -= Character.charCount(codePointBefore);
                        if (codePointBefore == 8205) {
                            codePointBefore = Character.codePointBefore(charSequence, charCount2);
                            charCount2 -= Character.charCount(codePointBefore);
                            if (charCount2 <= 0 || !isVariationSelector(codePointBefore)) {
                                i4 = 0;
                            } else {
                                codePointBefore = Character.codePointBefore(charSequence, charCount2);
                                int charCount8 = Character.charCount(codePointBefore);
                                charCount2 -= Character.charCount(codePointBefore);
                                i4 = charCount8;
                            }
                            z = true;
                            if (charCount2 != 0 || !z || !isEmoji(codePointBefore)) {
                                break;
                                break;
                            }
                        }
                    }
                    i4 = 0;
                    if (charCount2 != 0) {
                        break;
                    }
                }
            }
        }
        return i - charCount;
    }

    public int getOffsetAfter(CharSequence charSequence, int i) {
        int charCount;
        int charCount2;
        int charCount3;
        int length = charSequence.length();
        int i2 = length - 1;
        if (i >= i2) {
            return length;
        }
        int codePointAt = Character.codePointAt(charSequence, i);
        int charCount4 = Character.charCount(codePointAt);
        int i3 = i + charCount4;
        int i4 = 0;
        if (i3 == 0) {
            return 0;
        }
        if (codePointAt == 10) {
            if (Character.codePointAt(charSequence, i3) == 13) {
                charCount4++;
            }
            return i + charCount4;
        }
        if (isRegionalIndicatorSymbol(codePointAt)) {
            if (i3 >= i2 || !isRegionalIndicatorSymbol(Character.codePointAt(charSequence, i3))) {
                return i3;
            }
            int i5 = i;
            while (i5 > 0 && isRegionalIndicatorSymbol(Character.codePointBefore(charSequence, i))) {
                i5 -= Character.charCount(Character.codePointBefore(charSequence, i));
                i4++;
            }
            if (i4 % 2 == 0) {
                charCount4 += 2;
            }
            return i + charCount4;
        }
        if (isKeycapBase(codePointAt)) {
            charCount4 += Character.charCount(codePointAt);
        }
        if (codePointAt == 8419) {
            int codePointBefore = Character.codePointBefore(charSequence, i3);
            int charCount5 = i3 + Character.charCount(codePointBefore);
            if (charCount5 < length && isVariationSelector(codePointBefore)) {
                int codePointAt2 = Character.codePointAt(charSequence, charCount5);
                if (isKeycapBase(codePointAt2)) {
                    charCount3 = Character.charCount(codePointBefore) + Character.charCount(codePointAt2);
                    charCount4 += charCount3;
                }
                return i + charCount4;
            }
            if (isKeycapBase(codePointBefore)) {
                charCount3 = Character.charCount(codePointBefore);
                charCount4 += charCount3;
            }
            return i + charCount4;
        }
        if (isEmoji(codePointAt)) {
            boolean z = false;
            int i6 = 0;
            do {
                if (z) {
                    charCount4 += Character.charCount(codePointAt) + i6 + 1;
                    z = false;
                }
                if (isEmojiModifier(codePointAt)) {
                    break;
                }
                if (i3 < length) {
                    codePointAt = Character.codePointAt(charSequence, i3);
                    i3 += Character.charCount(codePointAt);
                    if (codePointAt == 8419) {
                        int codePointBefore2 = Character.codePointBefore(charSequence, i3);
                        int charCount6 = i3 + Character.charCount(codePointBefore2);
                        if (charCount6 < length && isVariationSelector(codePointBefore2)) {
                            int codePointAt3 = Character.codePointAt(charSequence, charCount6);
                            if (isKeycapBase(codePointAt3)) {
                                charCount = Character.charCount(codePointBefore2) + Character.charCount(codePointAt3);
                                charCount4 += charCount;
                            }
                            return i + charCount4;
                        }
                        if (isKeycapBase(codePointBefore2)) {
                            charCount = Character.charCount(codePointBefore2);
                            charCount4 += charCount;
                        }
                        return i + charCount4;
                    }
                    if (isEmojiModifier(codePointAt)) {
                        charCount2 = Character.charCount(codePointAt);
                    } else if (!isVariationSelector(codePointAt)) {
                        if (codePointAt == 8205) {
                            codePointAt = Character.codePointAt(charSequence, i3);
                            i3 += Character.charCount(codePointAt);
                            if (i3 >= length || !isVariationSelector(codePointAt)) {
                                i6 = 0;
                            } else {
                                codePointAt = Character.codePointAt(charSequence, i3);
                                int charCount7 = Character.charCount(codePointAt);
                                i3 += Character.charCount(codePointAt);
                                i6 = charCount7;
                            }
                            z = true;
                            if (i3 < length || !z) {
                                break;
                                break;
                            }
                        }
                    } else {
                        charCount2 = Character.charCount(codePointAt);
                    }
                    charCount4 += charCount2;
                    break;
                }
                i6 = 0;
                if (i3 < length) {
                    break;
                }
            } while (isEmoji(codePointAt));
        }
        return i + charCount4;
    }
}
