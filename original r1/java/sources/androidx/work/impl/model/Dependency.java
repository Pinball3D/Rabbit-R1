package androidx.work.impl.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Dependency.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/work/impl/model/Dependency;", "", "workSpecId", "", "prerequisiteId", "(Ljava/lang/String;Ljava/lang/String;)V", "getPrerequisiteId", "()Ljava/lang/String;", "getWorkSpecId", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Dependency {
    private final String prerequisiteId;
    private final String workSpecId;

    public final String getPrerequisiteId() {
        return this.prerequisiteId;
    }

    public final String getWorkSpecId() {
        return this.workSpecId;
    }

    public Dependency(String workSpecId, String prerequisiteId) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        Intrinsics.checkNotNullParameter(prerequisiteId, "prerequisiteId");
        this.workSpecId = workSpecId;
        this.prerequisiteId = prerequisiteId;
    }
}
