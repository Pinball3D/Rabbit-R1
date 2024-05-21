package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: SnapshotState.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002J\u000e\u0010\b\u001a\u00028\u0000H¦\u0002¢\u0006\u0002\u0010\u0005J\u0015\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\nH¦\u0002R\u0018\u0010\u0003\u001a\u00028\u0000X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/MutableState;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/State;", "value", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "component1", "component2", "Lkotlin/Function1;", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface MutableState<T> extends State<T> {
    T component1();

    Function1<T, Unit> component2();

    @Override // androidx.compose.runtime.State
    T getValue();

    void setValue(T t);
}
