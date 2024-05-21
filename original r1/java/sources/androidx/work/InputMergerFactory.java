package androidx.work;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InputMergerFactory.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\b"}, d2 = {"Landroidx/work/InputMergerFactory;", "", "()V", "createInputMerger", "Landroidx/work/InputMerger;", "className", "", "createInputMergerWithDefaultFallback", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class InputMergerFactory {
    public abstract InputMerger createInputMerger(String className);

    public final InputMerger createInputMergerWithDefaultFallback(String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        InputMerger createInputMerger = createInputMerger(className);
        return createInputMerger == null ? InputMergerKt.fromClassName(className) : createInputMerger;
    }
}
