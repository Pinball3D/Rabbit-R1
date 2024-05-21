package androidx.compose.ui.platform;

import kotlin.Metadata;

/* compiled from: WindowInfo.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004R#\u0010\u0005\u001a\u00020\u00068WX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nø\u0001\u0003\u0082\u0002\u0015\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/platform/WindowInfo;", "", "isWindowFocused", "", "()Z", "keyboardModifiers", "Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;", "getKeyboardModifiers-k7X9c1A$annotations", "()V", "getKeyboardModifiers-k7X9c1A", "()I", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface WindowInfo {
    /* renamed from: getKeyboardModifiers-k7X9c1A$annotations, reason: not valid java name */
    static /* synthetic */ void m4235getKeyboardModifiersk7X9c1A$annotations() {
    }

    boolean isWindowFocused();

    /* renamed from: getKeyboardModifiers-k7X9c1A, reason: not valid java name */
    default int mo4236getKeyboardModifiersk7X9c1A() {
        return WindowInfoImpl.INSTANCE.getGlobalKeyboardModifiers$ui_release().getValue().getPackedValue();
    }
}
