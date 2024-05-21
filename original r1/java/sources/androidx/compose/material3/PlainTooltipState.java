package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* compiled from: Tooltip.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0011\u0010\u000b\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\rJ\u0011\u0010\u000e\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\rR+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@PX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Landroidx/compose/material3/PlainTooltipState;", "Landroidx/compose/material3/TooltipState;", "()V", "<set-?>", "", "isVisible", "()Z", "setVisible$material3_release", "(Z)V", "isVisible$delegate", "Landroidx/compose/runtime/MutableState;", "dismiss", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "show", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PlainTooltipState implements TooltipState {
    public static final int $stable = 0;

    /* renamed from: isVisible$delegate, reason: from kotlin metadata */
    private final MutableState isVisible;

    public PlainTooltipState() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.isVisible = mutableStateOf$default;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.material3.TooltipState
    public boolean isVisible() {
        return ((Boolean) this.isVisible.getValue()).booleanValue();
    }

    public void setVisible$material3_release(boolean z) {
        this.isVisible.setValue(Boolean.valueOf(z));
    }

    @Override // androidx.compose.material3.TooltipState
    public Object show(Continuation<? super Unit> continuation) {
        Object show = TooltipSync.INSTANCE.show(this, false, continuation);
        return show == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? show : Unit.INSTANCE;
    }

    @Override // androidx.compose.material3.TooltipState
    public Object dismiss(Continuation<? super Unit> continuation) {
        Object dismissCurrentTooltip = TooltipSync.INSTANCE.dismissCurrentTooltip(this, continuation);
        return dismissCurrentTooltip == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? dismissCurrentTooltip : Unit.INSTANCE;
    }
}
