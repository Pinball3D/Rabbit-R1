package androidx.core.view;

import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class HapticFeedbackConstantsCompat {
    public static final int CLOCK_TICK = 4;
    public static final int CONFIRM = 16;
    public static final int CONTEXT_CLICK = 6;
    public static final int DRAG_START = 25;
    static final int FIRST_CONSTANT_INT = 0;
    public static final int FLAG_IGNORE_VIEW_SETTING = 1;
    public static final int GESTURE_END = 13;
    public static final int GESTURE_START = 12;
    public static final int GESTURE_THRESHOLD_ACTIVATE = 23;
    public static final int GESTURE_THRESHOLD_DEACTIVATE = 24;
    public static final int KEYBOARD_PRESS = 3;
    public static final int KEYBOARD_RELEASE = 7;
    public static final int KEYBOARD_TAP = 3;
    static final int LAST_CONSTANT_INT = 27;
    public static final int LONG_PRESS = 0;
    public static final int NO_HAPTICS = -1;
    public static final int REJECT = 17;
    public static final int SEGMENT_FREQUENT_TICK = 27;
    public static final int SEGMENT_TICK = 26;
    public static final int TEXT_HANDLE_MOVE = 9;
    public static final int TOGGLE_OFF = 22;
    public static final int TOGGLE_ON = 21;
    public static final int VIRTUAL_KEY = 1;
    public static final int VIRTUAL_KEY_RELEASE = 8;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface HapticFeedbackFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface HapticFeedbackType {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getFeedbackConstantOrFallback(int i) {
        if (i == -1) {
            return -1;
        }
        if (Build.VERSION.SDK_INT >= 34) {
            return i;
        }
        switch (i) {
            case 21:
            case 23:
            case 26:
                return 6;
            case 22:
            case 24:
            case 27:
                return 4;
            case 25:
                return 0;
            default:
                return i;
        }
    }

    private HapticFeedbackConstantsCompat() {
    }
}
