package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LockFreeLinkedList.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\r\u001a\u00060\u000ej\u0002`\u000f*\u00020\u0001H\u0001\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0003\"\u0016\u0010\t\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u0003\"\u0016\u0010\u000b\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\u0003*\f\b\u0002\u0010\u0010\"\u00020\u000e2\u00020\u000e¨\u0006\u0011"}, d2 = {"CONDITION_FALSE", "", "getCONDITION_FALSE$annotations", "()V", "getCONDITION_FALSE", "()Ljava/lang/Object;", "FAILURE", "", "getFAILURE$annotations", "SUCCESS", "getSUCCESS$annotations", "UNDECIDED", "getUNDECIDED$annotations", "unwrap", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "Node", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LockFreeLinkedListKt {
    private static final Object CONDITION_FALSE = new Symbol("CONDITION_FALSE");
    public static final int FAILURE = 2;
    public static final int SUCCESS = 1;
    public static final int UNDECIDED = 0;

    public static final Object getCONDITION_FALSE() {
        return CONDITION_FALSE;
    }

    public static /* synthetic */ void getCONDITION_FALSE$annotations() {
    }

    public static /* synthetic */ void getFAILURE$annotations() {
    }

    public static /* synthetic */ void getSUCCESS$annotations() {
    }

    public static /* synthetic */ void getUNDECIDED$annotations() {
    }

    public static final LockFreeLinkedListNode unwrap(Object obj) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Removed removed = obj instanceof Removed ? (Removed) obj : null;
        if (removed != null && (lockFreeLinkedListNode = removed.ref) != null) {
            return lockFreeLinkedListNode;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (LockFreeLinkedListNode) obj;
    }
}
