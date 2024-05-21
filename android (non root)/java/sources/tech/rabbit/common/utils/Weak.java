package tech.rabbit.common.utils;

import androidx.exifinterface.media.ExifInterface;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: KotlinUtil.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u0015\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005¢\u0006\u0002\u0010\u0006J&\u0010\t\u001a\u0004\u0018\u00018\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u00022\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0086\u0002¢\u0006\u0002\u0010\rJ.\u0010\u000e\u001a\u00020\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\u00022\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\b\u0010\u0010\u001a\u0004\u0018\u00018\u0000H\u0086\u0002¢\u0006\u0002\u0010\u0011R\u0018\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Ltech/rabbit/common/utils/Weak;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "initializer", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "weakReference", "Ljava/lang/ref/WeakReference;", "getValue", "thisRef", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "setValue", "", "value", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Weak<T> {
    private WeakReference<T> weakReference;

    public Weak(Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        T invoke = initializer.invoke();
        if (invoke != null) {
            this.weakReference = new WeakReference<>(invoke);
        }
    }

    public Weak() {
        this(new Function0<T>() { // from class: tech.rabbit.common.utils.Weak.2
            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                return null;
            }
        });
    }

    public final T getValue(Object thisRef, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        WeakReference<T> weakReference = this.weakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final void setValue(Object thisRef, KProperty<?> property, T value) {
        Intrinsics.checkNotNullParameter(property, "property");
        this.weakReference = new WeakReference<>(value);
    }
}
