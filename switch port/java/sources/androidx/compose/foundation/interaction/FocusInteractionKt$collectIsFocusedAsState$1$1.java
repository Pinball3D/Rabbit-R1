package androidx.compose.foundation.interaction;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.runtime.MutableState;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FocusInteraction.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.interaction.FocusInteractionKt$collectIsFocusedAsState$1$1", f = "FocusInteraction.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class FocusInteractionKt$collectIsFocusedAsState$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $isFocused;
    final /* synthetic */ InteractionSource $this_collectIsFocusedAsState;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusInteractionKt$collectIsFocusedAsState$1$1(InteractionSource interactionSource, MutableState<Boolean> mutableState, Continuation<? super FocusInteractionKt$collectIsFocusedAsState$1$1> continuation) {
        super(2, continuation);
        this.$this_collectIsFocusedAsState = interactionSource;
        this.$isFocused = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FocusInteractionKt$collectIsFocusedAsState$1$1(this.$this_collectIsFocusedAsState, this.$isFocused, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FocusInteractionKt$collectIsFocusedAsState$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ArrayList arrayList = new ArrayList();
            Flow<Interaction> interactions = this.$this_collectIsFocusedAsState.getInteractions();
            final MutableState<Boolean> mutableState = this.$isFocused;
            this.label = 1;
            if (interactions.collect(new FlowCollector<Interaction>() { // from class: androidx.compose.foundation.interaction.FocusInteractionKt$collectIsFocusedAsState$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Interaction interaction, Continuation continuation) {
                    return emit2(interaction, (Continuation<? super Unit>) continuation);
                }

                /* renamed from: emit, reason: avoid collision after fix types in other method */
                public final Object emit2(Interaction interaction, Continuation<? super Unit> continuation) {
                    if (interaction instanceof FocusInteraction.Focus) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof FocusInteraction.Unfocus) {
                        arrayList.remove(((FocusInteraction.Unfocus) interaction).getFocus());
                    }
                    mutableState.setValue(Boxing.boxBoolean(!arrayList.isEmpty()));
                    return Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
