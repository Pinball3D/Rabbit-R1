package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.input.pointer.PointerEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: WindowInfo.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00058V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR3\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000b8W@VX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/platform/WindowInfoImpl;", "Landroidx/compose/ui/platform/WindowInfo;", "()V", "_isWindowFocused", "Landroidx/compose/runtime/MutableState;", "", "value", "isWindowFocused", "()Z", "setWindowFocused", "(Z)V", "Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;", "keyboardModifiers", "getKeyboardModifiers-k7X9c1A$annotations", "getKeyboardModifiers-k7X9c1A", "()I", "setKeyboardModifiers-5xRPYO0", "(I)V", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WindowInfoImpl implements WindowInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final MutableState<PointerKeyboardModifiers> GlobalKeyboardModifiers;
    private final MutableState<Boolean> _isWindowFocused;

    /* renamed from: getKeyboardModifiers-k7X9c1A$annotations, reason: not valid java name */
    public static /* synthetic */ void m4237getKeyboardModifiersk7X9c1A$annotations() {
    }

    public WindowInfoImpl() {
        MutableState<Boolean> mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this._isWindowFocused = mutableStateOf$default;
    }

    public void setWindowFocused(boolean z) {
        this._isWindowFocused.setValue(Boolean.valueOf(z));
    }

    @Override // androidx.compose.ui.platform.WindowInfo
    public boolean isWindowFocused() {
        return this._isWindowFocused.getValue().booleanValue();
    }

    @Override // androidx.compose.ui.platform.WindowInfo
    /* renamed from: getKeyboardModifiers-k7X9c1A */
    public int mo4236getKeyboardModifiersk7X9c1A() {
        return GlobalKeyboardModifiers.getValue().getPackedValue();
    }

    /* renamed from: setKeyboardModifiers-5xRPYO0, reason: not valid java name */
    public void m4238setKeyboardModifiers5xRPYO0(int i) {
        GlobalKeyboardModifiers.setValue(PointerKeyboardModifiers.m3819boximpl(i));
    }

    /* compiled from: WindowInfo.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"Landroidx/compose/ui/platform/WindowInfoImpl$Companion;", "", "()V", "GlobalKeyboardModifiers", "Landroidx/compose/runtime/MutableState;", "Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;", "getGlobalKeyboardModifiers$ui_release", "()Landroidx/compose/runtime/MutableState;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MutableState<PointerKeyboardModifiers> getGlobalKeyboardModifiers$ui_release() {
            return WindowInfoImpl.GlobalKeyboardModifiers;
        }
    }

    static {
        MutableState<PointerKeyboardModifiers> mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(PointerKeyboardModifiers.m3819boximpl(PointerEvent_androidKt.EmptyPointerKeyboardModifiers()), null, 2, null);
        GlobalKeyboardModifiers = mutableStateOf$default;
    }
}
