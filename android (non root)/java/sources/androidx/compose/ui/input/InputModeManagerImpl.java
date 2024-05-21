package androidx.compose.ui.input;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InputModeManager.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B$\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u001d\u0010\u0010\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0003H\u0017ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012R4\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00038V@VX\u0096\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/input/InputModeManagerImpl;", "Landroidx/compose/ui/input/InputModeManager;", "initialInputMode", "Landroidx/compose/ui/input/InputMode;", "onRequestInputModeChange", "Lkotlin/Function1;", "", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "<set-?>", "inputMode", "getInputMode-aOaMEAU", "()I", "setInputMode-iuPiT84", "(I)V", "inputMode$delegate", "Landroidx/compose/runtime/MutableState;", "requestInputMode", "requestInputMode-iuPiT84", "(I)Z", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InputModeManagerImpl implements InputModeManager {

    /* renamed from: inputMode$delegate, reason: from kotlin metadata */
    private final MutableState inputMode;
    private final Function1<InputMode, Boolean> onRequestInputModeChange;

    public /* synthetic */ InputModeManagerImpl(int i, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private InputModeManagerImpl(int i, Function1<? super InputMode, Boolean> onRequestInputModeChange) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(onRequestInputModeChange, "onRequestInputModeChange");
        this.onRequestInputModeChange = onRequestInputModeChange;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(InputMode.m3300boximpl(i), null, 2, null);
        this.inputMode = mutableStateOf$default;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.input.InputModeManager
    /* renamed from: getInputMode-aOaMEAU */
    public int mo3309getInputModeaOaMEAU() {
        return ((InputMode) this.inputMode.getValue()).getValue();
    }

    /* renamed from: setInputMode-iuPiT84, reason: not valid java name */
    public void m3311setInputModeiuPiT84(int i) {
        this.inputMode.setValue(InputMode.m3300boximpl(i));
    }

    @Override // androidx.compose.ui.input.InputModeManager
    /* renamed from: requestInputMode-iuPiT84 */
    public boolean mo3310requestInputModeiuPiT84(int inputMode) {
        return this.onRequestInputModeChange.invoke(InputMode.m3300boximpl(inputMode)).booleanValue();
    }
}
