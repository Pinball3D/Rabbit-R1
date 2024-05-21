package androidx.compose.ui.input.key;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KeyEvent.android.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00028Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004\"\u0018\u0010\u0007\u001a\u00020\u0001*\u00020\u00028Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\b\u0010\u0004\"\u0018\u0010\t\u001a\u00020\u0001*\u00020\u00028Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\n\u0010\u0004\"\u0018\u0010\u000b\u001a\u00020\f*\u00020\u00028Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\"\u0018\u0010\u000f\u001a\u00020\u0010*\u00020\u00028Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012\"\u0018\u0010\u0013\u001a\u00020\u0014*\u00020\u00028Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0012*\n\u0010\u0016\"\u00020\u00172\u00020\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"isAltPressed", "", "Landroidx/compose/ui/input/key/KeyEvent;", "isAltPressed-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "isCtrlPressed", "isCtrlPressed-ZmokQxo", "isMetaPressed", "isMetaPressed-ZmokQxo", "isShiftPressed", "isShiftPressed-ZmokQxo", "key", "Landroidx/compose/ui/input/key/Key;", "getKey-ZmokQxo", "(Landroid/view/KeyEvent;)J", "type", "Landroidx/compose/ui/input/key/KeyEventType;", "getType-ZmokQxo", "(Landroid/view/KeyEvent;)I", "utf16CodePoint", "", "getUtf16CodePoint-ZmokQxo", "NativeKeyEvent", "Landroid/view/KeyEvent;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class KeyEvent_androidKt {
    /* renamed from: getKey-ZmokQxo, reason: not valid java name */
    public static final long m3625getKeyZmokQxo(android.view.KeyEvent key) {
        Intrinsics.checkNotNullParameter(key, "$this$key");
        return Key_androidKt.Key(key.getKeyCode());
    }

    /* renamed from: getUtf16CodePoint-ZmokQxo, reason: not valid java name */
    public static final int m3627getUtf16CodePointZmokQxo(android.view.KeyEvent utf16CodePoint) {
        Intrinsics.checkNotNullParameter(utf16CodePoint, "$this$utf16CodePoint");
        return utf16CodePoint.getUnicodeChar();
    }

    /* renamed from: getType-ZmokQxo, reason: not valid java name */
    public static final int m3626getTypeZmokQxo(android.view.KeyEvent type) {
        Intrinsics.checkNotNullParameter(type, "$this$type");
        int action = type.getAction();
        if (action == 0) {
            return KeyEventType.INSTANCE.m3622getKeyDownCS__XNY();
        }
        if (action == 1) {
            return KeyEventType.INSTANCE.m3623getKeyUpCS__XNY();
        }
        return KeyEventType.INSTANCE.m3624getUnknownCS__XNY();
    }

    /* renamed from: isAltPressed-ZmokQxo, reason: not valid java name */
    public static final boolean m3628isAltPressedZmokQxo(android.view.KeyEvent isAltPressed) {
        Intrinsics.checkNotNullParameter(isAltPressed, "$this$isAltPressed");
        return isAltPressed.isAltPressed();
    }

    /* renamed from: isCtrlPressed-ZmokQxo, reason: not valid java name */
    public static final boolean m3629isCtrlPressedZmokQxo(android.view.KeyEvent isCtrlPressed) {
        Intrinsics.checkNotNullParameter(isCtrlPressed, "$this$isCtrlPressed");
        return isCtrlPressed.isCtrlPressed();
    }

    /* renamed from: isMetaPressed-ZmokQxo, reason: not valid java name */
    public static final boolean m3630isMetaPressedZmokQxo(android.view.KeyEvent isMetaPressed) {
        Intrinsics.checkNotNullParameter(isMetaPressed, "$this$isMetaPressed");
        return isMetaPressed.isMetaPressed();
    }

    /* renamed from: isShiftPressed-ZmokQxo, reason: not valid java name */
    public static final boolean m3631isShiftPressedZmokQxo(android.view.KeyEvent isShiftPressed) {
        Intrinsics.checkNotNullParameter(isShiftPressed, "$this$isShiftPressed");
        return isShiftPressed.isShiftPressed();
    }
}
