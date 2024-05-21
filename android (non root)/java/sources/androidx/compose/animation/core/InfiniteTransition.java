package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InfiniteTransition.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001:\u0001'B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J!\u0010\u001c\u001a\u00020\u001d2\u0012\u0010\u001e\u001a\u000e\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007R\u00020\u0000H\u0000¢\u0006\u0002\b\u001fJ\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001bH\u0002J!\u0010\"\u001a\u00020\u001d2\u0012\u0010\u001e\u001a\u000e\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007R\u00020\u0000H\u0000¢\u0006\u0002\b#J\u000f\u0010$\u001a\u00020\u001dH\u0001¢\u0006\u0004\b%\u0010&R \u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007R\u00020\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007R\u00020\u00000\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR+\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R+\u0010\u0016\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u0017\u0010\u000f\"\u0004\b\u0018\u0010\u0011R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Landroidx/compose/animation/core/InfiniteTransition;", "", "label", "", "(Ljava/lang/String;)V", "_animations", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;", "animations", "", "getAnimations", "()Ljava/util/List;", "<set-?>", "", "isRunning", "()Z", "setRunning", "(Z)V", "isRunning$delegate", "Landroidx/compose/runtime/MutableState;", "getLabel", "()Ljava/lang/String;", "refreshChildNeeded", "getRefreshChildNeeded", "setRefreshChildNeeded", "refreshChildNeeded$delegate", "startTimeNanos", "", "addAnimation", "", "animation", "addAnimation$animation_core_release", "onFrame", "playTimeNanos", "removeAnimation", "removeAnimation$animation_core_release", "run", "run$animation_core_release", "(Landroidx/compose/runtime/Composer;I)V", "TransitionAnimationState", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InfiniteTransition {
    public static final int $stable = 8;
    private final MutableVector<TransitionAnimationState<?, ?>> _animations;

    /* renamed from: isRunning$delegate, reason: from kotlin metadata */
    private final MutableState isRunning;
    private final String label;

    /* renamed from: refreshChildNeeded$delegate, reason: from kotlin metadata */
    private final MutableState refreshChildNeeded;
    private long startTimeNanos;

    public final String getLabel() {
        return this.label;
    }

    public InfiniteTransition(String label) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        Intrinsics.checkNotNullParameter(label, "label");
        this.label = label;
        this._animations = new MutableVector<>(new TransitionAnimationState[16], 0);
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.refreshChildNeeded = mutableStateOf$default;
        this.startTimeNanos = Long.MIN_VALUE;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null);
        this.isRunning = mutableStateOf$default2;
    }

    /* compiled from: InfiniteTransition.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\n\b\u0086\u0004\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004BA\b\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0015\u00100\u001a\u0002012\u0006\u00102\u001a\u00020%H\u0000¢\u0006\u0002\b3J\r\u00104\u001a\u000201H\u0000¢\u0006\u0002\b5J\r\u00106\u001a\u000201H\u0000¢\u0006\u0002\b7J-\u00108\u001a\u0002012\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0000¢\u0006\u0004\b9\u0010:R<\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R*\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0005\u001a\u00028\u0000X\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u00020\u001dX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020%X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u00028\u0000X\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b'\u0010\u0018\"\u0004\b(\u0010\u001aR\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R+\u0010+\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u00008V@PX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b,\u0010\u0018\"\u0004\b-\u0010\u001a¨\u0006;"}, d2 = {"Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "Landroidx/compose/runtime/State;", "initialValue", "targetValue", "typeConverter", "Landroidx/compose/animation/core/TwoWayConverter;", "animationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "label", "", "(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;)V", "<set-?>", "Landroidx/compose/animation/core/TargetBasedAnimation;", "animation", "getAnimation", "()Landroidx/compose/animation/core/TargetBasedAnimation;", "setAnimation$animation_core_release", "(Landroidx/compose/animation/core/TargetBasedAnimation;)V", "getAnimationSpec", "()Landroidx/compose/animation/core/AnimationSpec;", "getInitialValue$animation_core_release", "()Ljava/lang/Object;", "setInitialValue$animation_core_release", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "isFinished", "", "isFinished$animation_core_release", "()Z", "setFinished$animation_core_release", "(Z)V", "getLabel", "()Ljava/lang/String;", "playTimeNanosOffset", "", "startOnTheNextFrame", "getTargetValue$animation_core_release", "setTargetValue$animation_core_release", "getTypeConverter", "()Landroidx/compose/animation/core/TwoWayConverter;", "value", "getValue", "setValue$animation_core_release", "value$delegate", "Landroidx/compose/runtime/MutableState;", "onPlayTimeChanged", "", "playTimeNanos", "onPlayTimeChanged$animation_core_release", "reset", "reset$animation_core_release", "skipToEnd", "skipToEnd$animation_core_release", "updateValues", "updateValues$animation_core_release", "(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;)V", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class TransitionAnimationState<T, V extends AnimationVector> implements State<T> {
        private TargetBasedAnimation<T, V> animation;
        private AnimationSpec<T> animationSpec;
        private T initialValue;
        private boolean isFinished;
        private final String label;
        private long playTimeNanosOffset;
        private boolean startOnTheNextFrame;
        private T targetValue;
        final /* synthetic */ InfiniteTransition this$0;
        private final TwoWayConverter<T, V> typeConverter;

        /* renamed from: value$delegate, reason: from kotlin metadata */
        private final MutableState value;

        public final TargetBasedAnimation<T, V> getAnimation() {
            return this.animation;
        }

        public final AnimationSpec<T> getAnimationSpec() {
            return this.animationSpec;
        }

        public final T getInitialValue$animation_core_release() {
            return this.initialValue;
        }

        public final String getLabel() {
            return this.label;
        }

        public final T getTargetValue$animation_core_release() {
            return this.targetValue;
        }

        public final TwoWayConverter<T, V> getTypeConverter() {
            return this.typeConverter;
        }

        /* renamed from: isFinished$animation_core_release, reason: from getter */
        public final boolean getIsFinished() {
            return this.isFinished;
        }

        public final void reset$animation_core_release() {
            this.startOnTheNextFrame = true;
        }

        public final void setAnimation$animation_core_release(TargetBasedAnimation<T, V> targetBasedAnimation) {
            Intrinsics.checkNotNullParameter(targetBasedAnimation, "<set-?>");
            this.animation = targetBasedAnimation;
        }

        public final void setFinished$animation_core_release(boolean z) {
            this.isFinished = z;
        }

        public final void setInitialValue$animation_core_release(T t) {
            this.initialValue = t;
        }

        public final void setTargetValue$animation_core_release(T t) {
            this.targetValue = t;
        }

        public TransitionAnimationState(InfiniteTransition infiniteTransition, T t, T t2, TwoWayConverter<T, V> typeConverter, AnimationSpec<T> animationSpec, String label) {
            MutableState mutableStateOf$default;
            Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            Intrinsics.checkNotNullParameter(label, "label");
            this.this$0 = infiniteTransition;
            this.initialValue = t;
            this.targetValue = t2;
            this.typeConverter = typeConverter;
            this.label = label;
            mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t, null, 2, null);
            this.value = mutableStateOf$default;
            this.animationSpec = animationSpec;
            this.animation = new TargetBasedAnimation<>(this.animationSpec, typeConverter, this.initialValue, this.targetValue, (AnimationVector) null, 16, (DefaultConstructorMarker) null);
        }

        @Override // androidx.compose.runtime.State
        public T getValue() {
            return this.value.getValue();
        }

        public final void updateValues$animation_core_release(T initialValue, T targetValue, AnimationSpec<T> animationSpec) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            this.initialValue = initialValue;
            this.targetValue = targetValue;
            this.animationSpec = animationSpec;
            this.animation = new TargetBasedAnimation<>(animationSpec, this.typeConverter, initialValue, targetValue, (AnimationVector) null, 16, (DefaultConstructorMarker) null);
            this.this$0.setRefreshChildNeeded(true);
            this.isFinished = false;
            this.startOnTheNextFrame = true;
        }

        public final void onPlayTimeChanged$animation_core_release(long playTimeNanos) {
            this.this$0.setRefreshChildNeeded(false);
            if (this.startOnTheNextFrame) {
                this.startOnTheNextFrame = false;
                this.playTimeNanosOffset = playTimeNanos;
            }
            long j = playTimeNanos - this.playTimeNanosOffset;
            setValue$animation_core_release(this.animation.getValueFromNanos(j));
            this.isFinished = this.animation.isFinishedFromNanos(j);
        }

        public final void skipToEnd$animation_core_release() {
            setValue$animation_core_release(this.animation.getTargetValue());
            this.startOnTheNextFrame = true;
        }

        public void setValue$animation_core_release(T t) {
            this.value.setValue(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean getRefreshChildNeeded() {
        return ((Boolean) this.refreshChildNeeded.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setRefreshChildNeeded(boolean z) {
        this.refreshChildNeeded.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean isRunning() {
        return ((Boolean) this.isRunning.getValue()).booleanValue();
    }

    private final void setRunning(boolean z) {
        this.isRunning.setValue(Boolean.valueOf(z));
    }

    public final List<TransitionAnimationState<?, ?>> getAnimations() {
        return this._animations.asMutableList();
    }

    public final void addAnimation$animation_core_release(TransitionAnimationState<?, ?> animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        this._animations.add(animation);
        setRefreshChildNeeded(true);
    }

    public final void removeAnimation$animation_core_release(TransitionAnimationState<?, ?> animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        this._animations.remove(animation);
    }

    public final void run$animation_core_release(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-318043801);
        ComposerKt.sourceInformation(startRestartGroup, "C(run)172@7001L67,176@7128L1558:InfiniteTransition.kt#pdpnli");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-318043801, i, -1, "androidx.compose.animation.core.InfiniteTransition.run (InfiniteTransition.kt:171)");
        }
        startRestartGroup.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
            startRestartGroup.updateRememberedValue(rememberedValue);
        }
        startRestartGroup.endReplaceableGroup();
        MutableState mutableState = (MutableState) rememberedValue;
        if (isRunning() || getRefreshChildNeeded()) {
            EffectsKt.LaunchedEffect(this, new InfiniteTransition$run$1(mutableState, this, null), startRestartGroup, 72);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.core.InfiniteTransition$run$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i2) {
                InfiniteTransition.this.run$animation_core_release(composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFrame(long playTimeNanos) {
        boolean z;
        MutableVector<TransitionAnimationState<?, ?>> mutableVector = this._animations;
        int size = mutableVector.getSize();
        if (size > 0) {
            TransitionAnimationState<?, ?>[] content = mutableVector.getContent();
            z = true;
            int i = 0;
            do {
                TransitionAnimationState<?, ?> transitionAnimationState = content[i];
                if (!transitionAnimationState.getIsFinished()) {
                    transitionAnimationState.onPlayTimeChanged$animation_core_release(playTimeNanos);
                }
                if (!transitionAnimationState.getIsFinished()) {
                    z = false;
                }
                i++;
            } while (i < size);
        } else {
            z = true;
        }
        setRunning(!z);
    }
}
