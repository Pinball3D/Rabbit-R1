package androidx.compose.animation.core;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: AnimationSpec.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u0014\u0015B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016J,\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00100\u000f\"\b\b\u0001\u0010\u0010*\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0016"}, d2 = {"Landroidx/compose/animation/core/KeyframesSpec;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/animation/core/DurationBasedAnimationSpec;", "config", "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;", "(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V", "getConfig", "()Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;", "equals", "", "other", "", "hashCode", "", "vectorize", "Landroidx/compose/animation/core/VectorizedKeyframesSpec;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "converter", "Landroidx/compose/animation/core/TwoWayConverter;", "KeyframeEntity", "KeyframesSpecConfig", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class KeyframesSpec<T> implements DurationBasedAnimationSpec<T> {
    public static final int $stable = 0;
    private final KeyframesSpecConfig<T> config;

    public final KeyframesSpecConfig<T> getConfig() {
        return this.config;
    }

    public KeyframesSpec(KeyframesSpecConfig<T> config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
    }

    /* compiled from: AnimationSpec.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0005H\u0016J \u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f*\u00028\u00012\u0006\u0010\u0017\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0002\u0010\u0018J \u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f*\u00028\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0086\u0004¢\u0006\u0002\u0010\u001cJ\u001b\u0010\u001d\u001a\u00020\u001e*\b\u0012\u0004\u0012\u00028\u00010\u000f2\u0006\u0010\u001f\u001a\u00020 H\u0086\u0004R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR&\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u000f0\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006!"}, d2 = {"Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "delayMillis", "", "getDelayMillis", "()I", "setDelayMillis", "(I)V", "durationMillis", "getDurationMillis", "setDurationMillis", "keyframes", "", "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;", "getKeyframes$animation_core_release", "()Ljava/util/Map;", "equals", "", "other", "hashCode", "at", "timeStamp", "(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;", "atFraction", "fraction", "", "(Ljava/lang/Object;F)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;", "with", "", "easing", "Landroidx/compose/animation/core/Easing;", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class KeyframesSpecConfig<T> {
        public static final int $stable = 8;
        private int delayMillis;
        private int durationMillis = 300;
        private final Map<Integer, KeyframeEntity<T>> keyframes = new LinkedHashMap();

        public final int getDelayMillis() {
            return this.delayMillis;
        }

        public final int getDurationMillis() {
            return this.durationMillis;
        }

        public final Map<Integer, KeyframeEntity<T>> getKeyframes$animation_core_release() {
            return this.keyframes;
        }

        public final void setDelayMillis(int i) {
            this.delayMillis = i;
        }

        public final void setDurationMillis(int i) {
            this.durationMillis = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final KeyframeEntity<T> at(T t, int i) {
            KeyframeEntity<T> keyframeEntity = new KeyframeEntity<>(t, null, 2, 0 == true ? 1 : 0);
            this.keyframes.put(Integer.valueOf(i), keyframeEntity);
            return keyframeEntity;
        }

        public final KeyframeEntity<T> atFraction(T t, float f) {
            return at(t, MathKt.roundToInt(this.durationMillis * f));
        }

        public final void with(KeyframeEntity<T> keyframeEntity, Easing easing) {
            Intrinsics.checkNotNullParameter(keyframeEntity, "<this>");
            Intrinsics.checkNotNullParameter(easing, "easing");
            keyframeEntity.setEasing$animation_core_release(easing);
        }

        public boolean equals(Object other) {
            if (other instanceof KeyframesSpecConfig) {
                KeyframesSpecConfig keyframesSpecConfig = (KeyframesSpecConfig) other;
                if (this.delayMillis == keyframesSpecConfig.delayMillis && this.durationMillis == keyframesSpecConfig.durationMillis && Intrinsics.areEqual(this.keyframes, keyframesSpecConfig.keyframes)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (((this.durationMillis * 31) + this.delayMillis) * 31) + this.keyframes.hashCode();
        }
    }

    public boolean equals(Object other) {
        return (other instanceof KeyframesSpec) && Intrinsics.areEqual(this.config, ((KeyframesSpec) other).config);
    }

    public int hashCode() {
        return this.config.hashCode();
    }

    @Override // androidx.compose.animation.core.FiniteAnimationSpec, androidx.compose.animation.core.AnimationSpec
    public <V extends AnimationVector> VectorizedKeyframesSpec<V> vectorize(TwoWayConverter<T, V> converter) {
        Intrinsics.checkNotNullParameter(converter, "converter");
        Map<Integer, KeyframeEntity<T>> keyframes$animation_core_release = this.config.getKeyframes$animation_core_release();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(keyframes$animation_core_release.size()));
        Iterator<T> it = keyframes$animation_core_release.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), ((KeyframeEntity) entry.getValue()).toPair$animation_core_release(converter.getConvertToVector()));
        }
        return new VectorizedKeyframesSpec<>(linkedHashMap, this.config.getDurationMillis(), this.config.getDelayMillis());
    }

    /* compiled from: AnimationSpec.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00028\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J7\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u0002H\u0015\u0012\u0004\u0012\u00020\u00050\u0014\"\b\b\u0002\u0010\u0015*\u00020\u00162\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u00150\u0018H\u0000¢\u0006\u0002\b\u0019R\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0016\u0010\u0003\u001a\u00028\u0001X\u0080\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\f¨\u0006\u001a"}, d2 = {"Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;", ExifInterface.GPS_DIRECTION_TRUE, "", "value", "easing", "Landroidx/compose/animation/core/Easing;", "(Ljava/lang/Object;Landroidx/compose/animation/core/Easing;)V", "getEasing$animation_core_release", "()Landroidx/compose/animation/core/Easing;", "setEasing$animation_core_release", "(Landroidx/compose/animation/core/Easing;)V", "getValue$animation_core_release", "()Ljava/lang/Object;", "Ljava/lang/Object;", "equals", "", "other", "hashCode", "", "toPair", "Lkotlin/Pair;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "convertToVector", "Lkotlin/Function1;", "toPair$animation_core_release", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class KeyframeEntity<T> {
        public static final int $stable = 8;
        private Easing easing;
        private final T value;

        /* renamed from: getEasing$animation_core_release, reason: from getter */
        public final Easing getEasing() {
            return this.easing;
        }

        public final T getValue$animation_core_release() {
            return this.value;
        }

        public final void setEasing$animation_core_release(Easing easing) {
            Intrinsics.checkNotNullParameter(easing, "<set-?>");
            this.easing = easing;
        }

        public KeyframeEntity(T t, Easing easing) {
            Intrinsics.checkNotNullParameter(easing, "easing");
            this.value = t;
            this.easing = easing;
        }

        public /* synthetic */ KeyframeEntity(Object obj, Easing easing, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i & 2) != 0 ? EasingKt.getLinearEasing() : easing);
        }

        public final <V extends AnimationVector> Pair<V, Easing> toPair$animation_core_release(Function1<? super T, ? extends V> convertToVector) {
            Intrinsics.checkNotNullParameter(convertToVector, "convertToVector");
            return TuplesKt.to(convertToVector.invoke(this.value), this.easing);
        }

        public boolean equals(Object other) {
            if (other instanceof KeyframeEntity) {
                KeyframeEntity keyframeEntity = (KeyframeEntity) other;
                if (Intrinsics.areEqual(keyframeEntity.value, this.value) && Intrinsics.areEqual(keyframeEntity.easing, this.easing)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            T t = this.value;
            return ((t != null ? t.hashCode() : 0) * 31) + this.easing.hashCode();
        }
    }
}
