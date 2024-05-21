package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LockFreeLinkedList.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J-\u0010\u0007\u001a\u00020\b\"\u000e\b\u0000\u0010\t\u0018\u0001*\u00060\u0001j\u0002`\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\b0\fH\u0086\bJ\u0010\u0010\r\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\nH\u0014J\u0006\u0010\u000e\u001a\u00020\u000fJ\r\u0010\u0010\u001a\u00020\bH\u0000¢\u0006\u0002\b\u0011R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0005¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "()V", "isEmpty", "", "()Z", "isRemoved", "forEach", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/Node;", "block", "Lkotlin/Function1;", "nextIfRemoved", "remove", "", "validate", "validate$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public class LockFreeLinkedListHead extends LockFreeLinkedListNode {
    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public boolean isRemoved() {
        return false;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    protected LockFreeLinkedListNode nextIfRemoved() {
        return null;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    /* renamed from: remove, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ boolean mo7256remove() {
        return ((Boolean) remove()).booleanValue();
    }

    public final boolean isEmpty() {
        return getNext() == this;
    }

    public final /* synthetic */ <T extends LockFreeLinkedListNode> void forEach(Function1<? super T, Unit> block) {
        Object next = getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(lockFreeLinkedListNode, this); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (lockFreeLinkedListNode instanceof LockFreeLinkedListNode) {
                block.invoke(lockFreeLinkedListNode);
            }
        }
    }

    public final Void remove() {
        throw new IllegalStateException("head cannot be removed".toString());
    }

    public final void validate$kotlinx_coroutines_core() {
        Object next = getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
        LockFreeLinkedListNode lockFreeLinkedListNode2 = this;
        LockFreeLinkedListNode lockFreeLinkedListNode3 = lockFreeLinkedListNode;
        while (!Intrinsics.areEqual(lockFreeLinkedListNode3, this)) {
            LockFreeLinkedListNode nextNode = lockFreeLinkedListNode3.getNextNode();
            lockFreeLinkedListNode3.validateNode$kotlinx_coroutines_core(lockFreeLinkedListNode2, nextNode);
            lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
            lockFreeLinkedListNode3 = nextNode;
        }
        Object next2 = getNext();
        Intrinsics.checkNotNull(next2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        validateNode$kotlinx_coroutines_core(lockFreeLinkedListNode2, (LockFreeLinkedListNode) next2);
    }
}
