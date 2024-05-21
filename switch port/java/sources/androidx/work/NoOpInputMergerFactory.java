package androidx.work;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InputMergerFactory.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Landroidx/work/NoOpInputMergerFactory;", "Landroidx/work/InputMergerFactory;", "()V", "createInputMerger", "", "className", "", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NoOpInputMergerFactory extends InputMergerFactory {
    public static final NoOpInputMergerFactory INSTANCE = new NoOpInputMergerFactory();

    /* renamed from: createInputMerger, reason: collision with other method in class */
    public Void m5332createInputMerger(String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        return null;
    }

    private NoOpInputMergerFactory() {
    }

    @Override // androidx.work.InputMergerFactory
    public /* bridge */ /* synthetic */ InputMerger createInputMerger(String str) {
        return (InputMerger) m5332createInputMerger(str);
    }
}
