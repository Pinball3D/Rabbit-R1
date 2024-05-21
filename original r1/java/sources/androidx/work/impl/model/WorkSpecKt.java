package androidx.work.impl.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkSpec.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"NOT_ENQUEUED", "", "generationalId", "Landroidx/work/impl/model/WorkGenerationalId;", "Landroidx/work/impl/model/WorkSpec;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WorkSpecKt {
    private static final long NOT_ENQUEUED = -1;

    public static final WorkGenerationalId generationalId(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "<this>");
        return new WorkGenerationalId(workSpec.id, workSpec.getGeneration());
    }
}
