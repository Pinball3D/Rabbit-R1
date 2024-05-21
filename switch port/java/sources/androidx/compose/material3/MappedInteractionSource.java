package androidx.compose.material3;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.geometry.Offset;
import androidx.exifinterface.media.ExifInterface;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: MappedInteractionSource.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002R\u0019\u0010\u0003\u001a\u00020\u0004X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0011"}, d2 = {"Landroidx/compose/material3/MappedInteractionSource;", "Landroidx/compose/foundation/interaction/InteractionSource;", "underlyingInteractionSource", "delta", "Landroidx/compose/ui/geometry/Offset;", "(Landroidx/compose/foundation/interaction/InteractionSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "interactions", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/compose/foundation/interaction/Interaction;", "getInteractions", "()Lkotlinx/coroutines/flow/Flow;", "mappedPresses", "", "Landroidx/compose/foundation/interaction/PressInteraction$Press;", "mapPress", "press", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MappedInteractionSource implements InteractionSource {
    private final long delta;
    private final Flow<Interaction> interactions;
    private final Map<PressInteraction.Press, PressInteraction.Press> mappedPresses;

    public /* synthetic */ MappedInteractionSource(InteractionSource interactionSource, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(interactionSource, j);
    }

    @Override // androidx.compose.foundation.interaction.InteractionSource
    public Flow<Interaction> getInteractions() {
        return this.interactions;
    }

    private MappedInteractionSource(InteractionSource underlyingInteractionSource, long j) {
        Intrinsics.checkNotNullParameter(underlyingInteractionSource, "underlyingInteractionSource");
        this.delta = j;
        this.mappedPresses = new LinkedHashMap();
        final Flow<Interaction> interactions = underlyingInteractionSource.getInteractions();
        this.interactions = new Flow<Interaction>() { // from class: androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Interaction> flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, this), continuation);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 8, 0}, xi = 48)
            /* renamed from: androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;
                final /* synthetic */ MappedInteractionSource this$0;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1$2", f = "MappedInteractionSource.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1$2$1, reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, MappedInteractionSource mappedInteractionSource) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = mappedInteractionSource;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r7
                        androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1$2$1 r0 = (androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r7 = r0.label
                        int r7 = r7 - r2
                        r0.label = r7
                        goto L19
                    L14:
                        androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1$2$1 r0 = new androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1$2$1
                        r0.<init>(r7)
                    L19:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L33
                        if (r2 != r3) goto L2b
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto La1
                    L2b:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L33:
                        kotlin.ResultKt.throwOnFailure(r7)
                        kotlinx.coroutines.flow.FlowCollector r7 = r5.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        androidx.compose.foundation.interaction.Interaction r6 = (androidx.compose.foundation.interaction.Interaction) r6
                        boolean r2 = r6 instanceof androidx.compose.foundation.interaction.PressInteraction.Press
                        if (r2 == 0) goto L57
                        androidx.compose.material3.MappedInteractionSource r2 = r5.this$0
                        r4 = r6
                        androidx.compose.foundation.interaction.PressInteraction$Press r4 = (androidx.compose.foundation.interaction.PressInteraction.Press) r4
                        androidx.compose.foundation.interaction.PressInteraction$Press r2 = androidx.compose.material3.MappedInteractionSource.access$mapPress(r2, r4)
                        androidx.compose.material3.MappedInteractionSource r5 = r5.this$0
                        java.util.Map r5 = androidx.compose.material3.MappedInteractionSource.access$getMappedPresses$p(r5)
                        r5.put(r6, r2)
                        r6 = r2
                        androidx.compose.foundation.interaction.Interaction r6 = (androidx.compose.foundation.interaction.Interaction) r6
                        goto L98
                    L57:
                        boolean r2 = r6 instanceof androidx.compose.foundation.interaction.PressInteraction.Cancel
                        if (r2 == 0) goto L78
                        androidx.compose.material3.MappedInteractionSource r5 = r5.this$0
                        java.util.Map r5 = androidx.compose.material3.MappedInteractionSource.access$getMappedPresses$p(r5)
                        androidx.compose.foundation.interaction.PressInteraction$Cancel r6 = (androidx.compose.foundation.interaction.PressInteraction.Cancel) r6
                        androidx.compose.foundation.interaction.PressInteraction$Press r2 = r6.getPress()
                        java.lang.Object r5 = r5.remove(r2)
                        androidx.compose.foundation.interaction.PressInteraction$Press r5 = (androidx.compose.foundation.interaction.PressInteraction.Press) r5
                        if (r5 != 0) goto L70
                        goto L75
                    L70:
                        androidx.compose.foundation.interaction.PressInteraction$Cancel r6 = new androidx.compose.foundation.interaction.PressInteraction$Cancel
                        r6.<init>(r5)
                    L75:
                        androidx.compose.foundation.interaction.Interaction r6 = (androidx.compose.foundation.interaction.Interaction) r6
                        goto L98
                    L78:
                        boolean r2 = r6 instanceof androidx.compose.foundation.interaction.PressInteraction.Release
                        if (r2 == 0) goto L98
                        androidx.compose.material3.MappedInteractionSource r5 = r5.this$0
                        java.util.Map r5 = androidx.compose.material3.MappedInteractionSource.access$getMappedPresses$p(r5)
                        androidx.compose.foundation.interaction.PressInteraction$Release r6 = (androidx.compose.foundation.interaction.PressInteraction.Release) r6
                        androidx.compose.foundation.interaction.PressInteraction$Press r2 = r6.getPress()
                        java.lang.Object r5 = r5.remove(r2)
                        androidx.compose.foundation.interaction.PressInteraction$Press r5 = (androidx.compose.foundation.interaction.PressInteraction.Press) r5
                        if (r5 != 0) goto L91
                        goto L96
                    L91:
                        androidx.compose.foundation.interaction.PressInteraction$Release r6 = new androidx.compose.foundation.interaction.PressInteraction$Release
                        r6.<init>(r5)
                    L96:
                        androidx.compose.foundation.interaction.Interaction r6 = (androidx.compose.foundation.interaction.Interaction) r6
                    L98:
                        r0.label = r3
                        java.lang.Object r5 = r7.emit(r6, r0)
                        if (r5 != r1) goto La1
                        return r1
                    La1:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.MappedInteractionSource$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PressInteraction.Press mapPress(PressInteraction.Press press) {
        return new PressInteraction.Press(Offset.m2404minusMKHz9U(press.getPressPosition(), this.delta), null);
    }
}
