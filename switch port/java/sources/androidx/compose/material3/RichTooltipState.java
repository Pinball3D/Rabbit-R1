package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* compiled from: Tooltip.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0011\u0010\u000f\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0011J\u0011\u0010\u0012\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0011R+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR+\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@PX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\u000e\u0010\u000b\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Landroidx/compose/material3/RichTooltipState;", "Landroidx/compose/material3/TooltipState;", "()V", "<set-?>", "", "isPersistent", "isPersistent$material3_release", "()Z", "setPersistent$material3_release", "(Z)V", "isPersistent$delegate", "Landroidx/compose/runtime/MutableState;", "isVisible", "setVisible$material3_release", "isVisible$delegate", "dismiss", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "show", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RichTooltipState implements TooltipState {
    public static final int $stable = 0;

    /* renamed from: isPersistent$delegate, reason: from kotlin metadata */
    private final MutableState isPersistent;

    /* renamed from: isVisible$delegate, reason: from kotlin metadata */
    private final MutableState isVisible;

    public RichTooltipState() {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.isVisible = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.isPersistent = mutableStateOf$default2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.material3.TooltipState
    public boolean isVisible() {
        return ((Boolean) this.isVisible.getValue()).booleanValue();
    }

    public void setVisible$material3_release(boolean z) {
        this.isVisible.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isPersistent$material3_release() {
        return ((Boolean) this.isPersistent.getValue()).booleanValue();
    }

    public final void setPersistent$material3_release(boolean z) {
        this.isPersistent.setValue(Boolean.valueOf(z));
    }

    @Override // androidx.compose.material3.TooltipState
    public Object show(Continuation<? super Unit> continuation) {
        Object show = TooltipSync.INSTANCE.show(this, isPersistent$material3_release(), continuation);
        return show == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? show : Unit.INSTANCE;
    }

    @Override // androidx.compose.material3.TooltipState
    public Object dismiss(Continuation<? super Unit> continuation) {
        Object dismissCurrentTooltip = TooltipSync.INSTANCE.dismissCurrentTooltip(this, continuation);
        return dismissCurrentTooltip == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? dismissCurrentTooltip : Unit.INSTANCE;
    }
}
