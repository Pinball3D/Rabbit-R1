package androidx.compose.foundation.interaction;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* compiled from: InteractionSource.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0005H\u0016R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "()V", "interactions", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Landroidx/compose/foundation/interaction/Interaction;", "getInteractions", "()Lkotlinx/coroutines/flow/MutableSharedFlow;", "emit", "", "interaction", "(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryEmit", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class MutableInteractionSourceImpl implements MutableInteractionSource {
    private final MutableSharedFlow<Interaction> interactions = SharedFlowKt.MutableSharedFlow$default(0, 16, BufferOverflow.DROP_OLDEST, 1, null);

    @Override // androidx.compose.foundation.interaction.InteractionSource
    public MutableSharedFlow<Interaction> getInteractions() {
        return this.interactions;
    }

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public Object emit(Interaction interaction, Continuation<? super Unit> continuation) {
        Object emit = getInteractions().emit(interaction, continuation);
        return emit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? emit : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public boolean tryEmit(Interaction interaction) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        return getInteractions().tryEmit(interaction);
    }
}
