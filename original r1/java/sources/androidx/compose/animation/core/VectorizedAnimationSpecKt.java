package androidx.compose.animation.core;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: VectorizedAnimationSpec.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a1\u0010\u0002\u001a\u00020\u0003\"\b\b\u0000\u0010\u0004*\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u0001H\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0002\u0010\n\u001a\u0018\u0010\u000b\u001a\u00020\f*\u0006\u0012\u0002\b\u00030\r2\u0006\u0010\u000e\u001a\u00020\fH\u0002\u001a9\u0010\u000f\u001a\u00020\f\"\b\b\u0000\u0010\u0004*\u00020\u0005*\b\u0012\u0004\u0012\u0002H\u00040\u00102\u0006\u0010\u0011\u001a\u0002H\u00042\u0006\u0010\u0012\u001a\u0002H\u00042\u0006\u0010\u0013\u001a\u0002H\u0004H\u0000¢\u0006\u0002\u0010\u0014\u001aA\u0010\u0015\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u0005*\b\u0012\u0004\u0012\u0002H\u00040\u00102\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u0002H\u00042\u0006\u0010\u0018\u001a\u0002H\u00042\u0006\u0010\u0019\u001a\u0002H\u0004H\u0000¢\u0006\u0002\u0010\u001a\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"InfiniteIterations", "", "createSpringAnimations", "Landroidx/compose/animation/core/Animations;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "visibilityThreshold", "dampingRatio", "", "stiffness", "(Landroidx/compose/animation/core/AnimationVector;FF)Landroidx/compose/animation/core/Animations;", "clampPlayTime", "", "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;", "playTime", "getDurationMillis", "Landroidx/compose/animation/core/VectorizedAnimationSpec;", "initialValue", "targetValue", "initialVelocity", "(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J", "getValueFromMillis", "playTimeMillis", "start", "end", "startVelocity", "(Landroidx/compose/animation/core/VectorizedAnimationSpec;JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;", "animation-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VectorizedAnimationSpecKt {
    private static final int InfiniteIterations = Integer.MAX_VALUE;

    public static final <V extends AnimationVector> long getDurationMillis(VectorizedAnimationSpec<V> vectorizedAnimationSpec, V initialValue, V targetValue, V initialVelocity) {
        Intrinsics.checkNotNullParameter(vectorizedAnimationSpec, "<this>");
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return vectorizedAnimationSpec.getDurationNanos(initialValue, targetValue, initialVelocity) / 1000000;
    }

    public static final <V extends AnimationVector> V getValueFromMillis(VectorizedAnimationSpec<V> vectorizedAnimationSpec, long j, V start, V end, V startVelocity) {
        Intrinsics.checkNotNullParameter(vectorizedAnimationSpec, "<this>");
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(startVelocity, "startVelocity");
        return vectorizedAnimationSpec.getValueFromNanos(j * 1000000, start, end, startVelocity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long clampPlayTime(VectorizedDurationBasedAnimationSpec<?> vectorizedDurationBasedAnimationSpec, long j) {
        return RangesKt.coerceIn(j - vectorizedDurationBasedAnimationSpec.getDelayMillis(), 0L, vectorizedDurationBasedAnimationSpec.getDurationMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <V extends AnimationVector> Animations createSpringAnimations(final V v, final float f, final float f2) {
        if (v != null) {
            return new Animations(v, f, f2) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$1
                private final List<FloatSpringSpec> anims;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: Incorrect types in method signature: (TV;FF)V */
                {
                    IntRange until = RangesKt.until(0, v.getSize());
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(until, 10));
                    Iterator<Integer> it = until.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new FloatSpringSpec(f, f2, v.get$animation_core_release(((IntIterator) it).nextInt())));
                    }
                    this.anims = arrayList;
                }

                @Override // androidx.compose.animation.core.Animations
                public FloatSpringSpec get(int index) {
                    return this.anims.get(index);
                }
            };
        }
        return new Animations(f, f2) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$2
            private final FloatSpringSpec anim;

            @Override // androidx.compose.animation.core.Animations
            public FloatSpringSpec get(int index) {
                return this.anim;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.anim = new FloatSpringSpec(f, f2, 0.0f, 4, null);
            }
        };
    }
}
