package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VectorConverters.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B-\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\bR \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/animation/core/TwoWayConverterImpl;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "Landroidx/compose/animation/core/TwoWayConverter;", "convertToVector", "Lkotlin/Function1;", "convertFromVector", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "getConvertFromVector", "()Lkotlin/jvm/functions/Function1;", "getConvertToVector", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class TwoWayConverterImpl<T, V extends AnimationVector> implements TwoWayConverter<T, V> {
    private final Function1<V, T> convertFromVector;
    private final Function1<T, V> convertToVector;

    @Override // androidx.compose.animation.core.TwoWayConverter
    public Function1<V, T> getConvertFromVector() {
        return this.convertFromVector;
    }

    @Override // androidx.compose.animation.core.TwoWayConverter
    public Function1<T, V> getConvertToVector() {
        return this.convertToVector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TwoWayConverterImpl(Function1<? super T, ? extends V> convertToVector, Function1<? super V, ? extends T> convertFromVector) {
        Intrinsics.checkNotNullParameter(convertToVector, "convertToVector");
        Intrinsics.checkNotNullParameter(convertFromVector, "convertFromVector");
        this.convertToVector = convertToVector;
        this.convertFromVector = convertFromVector;
    }
}
