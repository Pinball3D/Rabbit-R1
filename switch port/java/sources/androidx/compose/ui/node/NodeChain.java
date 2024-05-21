package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.SentryEvent;
import io.sentry.protocol.SentryThread;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NodeChain.kt */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u001c\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001:\u0002mnB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\u0010H\u0002J\u0018\u0010(\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u0010H\u0002J\u0010\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010H\u0002JE\u0010,\u001a\u0004\u0018\u0001H-\"\u0006\b\u0000\u0010-\u0018\u00012\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020\u001901H\u0080\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b2\u00103J@\u00104\u001a\u00060\rR\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00105\u001a\u00020\u00062\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u00108\u001a\u00020\u0019H\u0002J\f\u00109\u001a\b\u0012\u0004\u0012\u00020;0:J!\u0010<\u001a\u00020\u00192\n\u0010.\u001a\u0006\u0012\u0002\b\u00030/H\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b=\u0010>J\u0015\u0010<\u001a\u00020\u00192\u0006\u0010?\u001a\u00020\u0006H\u0000¢\u0006\u0002\b@J.\u0010\u0011\u001a\u0004\u0018\u0001H-\"\u0006\b\u0000\u0010-\u0018\u00012\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H-0/H\u0080\bø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\bA\u0010BJ%\u0010C\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\bø\u0001\u0000¢\u0006\u0002\bEJC\u0010C\u001a\u00020D\"\u0006\b\u0000\u0010-\u0018\u00012\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020D01H\u0080\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\bF\u0010GJ-\u0010C\u001a\u00020D2\u0006\u0010?\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\bø\u0001\u0000¢\u0006\u0002\bEJ%\u0010H\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\bø\u0001\u0000¢\u0006\u0002\bIJ\u0018\u0010J\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\u0010H\u0002J\u0018\u0010K\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u0010H\u0002J\u0006\u0010L\u001a\u00020DJ\r\u0010M\u001a\u00020DH\u0000¢\u0006\u0002\bNJ\b\u0010O\u001a\u00020\u0010H\u0002J\u0018\u0010P\u001a\u00020D2\u0006\u0010Q\u001a\u00020\u00102\u0006\u0010R\u001a\u00020\u001fH\u0002J\u0010\u0010S\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010H\u0002J\r\u0010T\u001a\u00020DH\u0000¢\u0006\u0002\bUJ\u0006\u0010V\u001a\u00020DJ\r\u0010W\u001a\u00020DH\u0000¢\u0006\u0002\bXJ<\u0010Y\u001a\u00020D2\u0006\u00105\u001a\u00020\u00062\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010#\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0019H\u0002J\b\u0010Z\u001a\u00020DH\u0002J\u0006\u0010[\u001a\u00020DJ.\u0010#\u001a\u0004\u0018\u0001H-\"\u0006\b\u0000\u0010-\u0018\u00012\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H-0/H\u0080\bø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\\\u0010BJ%\u0010]\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\bø\u0001\u0000¢\u0006\u0002\b^JC\u0010]\u001a\u00020D\"\u0006\b\u0000\u0010-\u0018\u00012\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020D01H\u0080\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b_\u0010GJ-\u0010]\u001a\u00020D2\u0006\u0010?\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\bø\u0001\u0000¢\u0006\u0002\b^J\b\u0010`\u001a\u00020aH\u0016J\u0010\u0010b\u001a\u00020\u00102\u0006\u0010c\u001a\u00020\u0010H\u0002J\u0015\u0010d\u001a\u00020D2\u0006\u0010e\u001a\u00020fH\u0000¢\u0006\u0002\bgJ \u0010h\u001a\u00020D2\u0006\u0010i\u001a\u00020\u000b2\u0006\u0010j\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u0010H\u0002J\u0017\u0010k\u001a\u00020D2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0000¢\u0006\u0002\blR\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0018\u00010\rR\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u001f@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020\u0010X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0013\u0082\u0002\u0012\n\u0005\b\u009920\u0001\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006o"}, d2 = {"Landroidx/compose/ui/node/NodeChain;", "", "layoutNode", "Landroidx/compose/ui/node/LayoutNode;", "(Landroidx/compose/ui/node/LayoutNode;)V", "aggregateChildKindSet", "", "getAggregateChildKindSet", "()I", "buffer", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/ui/Modifier$Element;", "cachedDiffer", "Landroidx/compose/ui/node/NodeChain$Differ;", SentryThread.JsonKeys.CURRENT, "<set-?>", "Landroidx/compose/ui/Modifier$Node;", "head", "getHead$ui_release", "()Landroidx/compose/ui/Modifier$Node;", "innerCoordinator", "Landroidx/compose/ui/node/InnerNodeCoordinator;", "getInnerCoordinator$ui_release", "()Landroidx/compose/ui/node/InnerNodeCoordinator;", "isUpdating", "", "()Z", "getLayoutNode", "()Landroidx/compose/ui/node/LayoutNode;", SentryEvent.JsonKeys.LOGGER, "Landroidx/compose/ui/node/NodeChain$Logger;", "Landroidx/compose/ui/node/NodeCoordinator;", "outerCoordinator", "getOuterCoordinator$ui_release", "()Landroidx/compose/ui/node/NodeCoordinator;", "tail", "getTail$ui_release", "createAndInsertNodeAsChild", "element", "parent", "createAndInsertNodeAsParent", "child", "detachAndRemoveNode", "node", "firstFromHead", ExifInterface.GPS_DIRECTION_TRUE, "type", "Landroidx/compose/ui/node/NodeKind;", "block", "Lkotlin/Function1;", "firstFromHead-aLcG6gQ$ui_release", "(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "getDiffer", "offset", "before", "after", "shouldAttachOnInsert", "getModifierInfo", "", "Landroidx/compose/ui/layout/ModifierInfo;", "has", "has-H91voCI$ui_release", "(I)Z", "mask", "has$ui_release", "head-H91voCI$ui_release", "(I)Ljava/lang/Object;", "headToTail", "", "headToTail$ui_release", "headToTail-aLcG6gQ$ui_release", "(ILkotlin/jvm/functions/Function1;)V", "headToTailExclusive", "headToTailExclusive$ui_release", "insertChild", "insertParent", "markAsAttached", "markAsDetached", "markAsDetached$ui_release", "padChain", "propagateCoordinator", "start", "coordinator", "removeNode", "resetState", "resetState$ui_release", "runAttachLifecycle", "runDetachLifecycle", "runDetachLifecycle$ui_release", "structuralUpdate", "syncAggregateChildKindSet", "syncCoordinators", "tail-H91voCI$ui_release", "tailToHead", "tailToHead$ui_release", "tailToHead-aLcG6gQ$ui_release", "toString", "", "trimChain", "paddedHead", "updateFrom", "m", "Landroidx/compose/ui/Modifier;", "updateFrom$ui_release", "updateNode", "prev", "next", "useLogger", "useLogger$ui_release", "Differ", "Logger", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NodeChain {
    private MutableVector<Modifier.Element> buffer;
    private Differ cachedDiffer;
    private MutableVector<Modifier.Element> current;
    private Modifier.Node head;
    private final InnerNodeCoordinator innerCoordinator;
    private final LayoutNode layoutNode;
    private Logger logger;
    private NodeCoordinator outerCoordinator;
    private final Modifier.Node tail;

    /* compiled from: NodeChain.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b`\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH&J0\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH&J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH&J0\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH&J0\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0015À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/NodeChain$Logger;", "", "linearDiffAborted", "", "index", "", "prev", "Landroidx/compose/ui/Modifier$Element;", "next", "node", "Landroidx/compose/ui/Modifier$Node;", "nodeInserted", "atIndex", "newIndex", "element", "child", "inserted", "nodeRemoved", "oldIndex", "nodeReused", "nodeUpdated", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface Logger {
        void linearDiffAborted(int index, Modifier.Element prev, Modifier.Element next, Modifier.Node node);

        void nodeInserted(int atIndex, int newIndex, Modifier.Element element, Modifier.Node child, Modifier.Node inserted);

        void nodeRemoved(int oldIndex, Modifier.Element element, Modifier.Node node);

        void nodeReused(int oldIndex, int newIndex, Modifier.Element prev, Modifier.Element next, Modifier.Node node);

        void nodeUpdated(int oldIndex, int newIndex, Modifier.Element prev, Modifier.Element next, Modifier.Node node);
    }

    /* renamed from: getHead$ui_release, reason: from getter */
    public final Modifier.Node getHead() {
        return this.head;
    }

    /* renamed from: getInnerCoordinator$ui_release, reason: from getter */
    public final InnerNodeCoordinator getInnerCoordinator() {
        return this.innerCoordinator;
    }

    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    /* renamed from: getOuterCoordinator$ui_release, reason: from getter */
    public final NodeCoordinator getOuterCoordinator() {
        return this.outerCoordinator;
    }

    /* renamed from: getTail$ui_release, reason: from getter */
    public final Modifier.Node getTail() {
        return this.tail;
    }

    public final void useLogger$ui_release(Logger r1) {
        this.logger = r1;
    }

    public NodeChain(LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        this.layoutNode = layoutNode;
        InnerNodeCoordinator innerNodeCoordinator = new InnerNodeCoordinator(layoutNode);
        this.innerCoordinator = innerNodeCoordinator;
        this.outerCoordinator = innerNodeCoordinator;
        TailModifierNode tail = innerNodeCoordinator.getTail();
        this.tail = tail;
        this.head = tail;
    }

    private final boolean isUpdating() {
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$1;
        Modifier.Node node = this.head;
        nodeChainKt$SentinelHead$1 = NodeChainKt.SentinelHead;
        return node == nodeChainKt$SentinelHead$1;
    }

    public final int getAggregateChildKindSet() {
        return this.head.getAggregateChildKindSet();
    }

    private final Modifier.Node padChain() {
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$1;
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$12;
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$13;
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$14;
        Modifier.Node node = this.head;
        nodeChainKt$SentinelHead$1 = NodeChainKt.SentinelHead;
        if (node == nodeChainKt$SentinelHead$1) {
            throw new IllegalStateException("padChain called on already padded chain".toString());
        }
        Modifier.Node node2 = this.head;
        nodeChainKt$SentinelHead$12 = NodeChainKt.SentinelHead;
        node2.setParent$ui_release(nodeChainKt$SentinelHead$12);
        nodeChainKt$SentinelHead$13 = NodeChainKt.SentinelHead;
        nodeChainKt$SentinelHead$13.setChild$ui_release(node2);
        nodeChainKt$SentinelHead$14 = NodeChainKt.SentinelHead;
        return nodeChainKt$SentinelHead$14;
    }

    private final Modifier.Node trimChain(Modifier.Node paddedHead) {
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$1;
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$12;
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$13;
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$14;
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$15;
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$16;
        nodeChainKt$SentinelHead$1 = NodeChainKt.SentinelHead;
        if (paddedHead != nodeChainKt$SentinelHead$1) {
            throw new IllegalStateException("trimChain called on already trimmed chain".toString());
        }
        nodeChainKt$SentinelHead$12 = NodeChainKt.SentinelHead;
        Modifier.Node child$ui_release = nodeChainKt$SentinelHead$12.getChild();
        if (child$ui_release == null) {
            child$ui_release = this.tail;
        }
        child$ui_release.setParent$ui_release(null);
        nodeChainKt$SentinelHead$13 = NodeChainKt.SentinelHead;
        nodeChainKt$SentinelHead$13.setChild$ui_release(null);
        nodeChainKt$SentinelHead$14 = NodeChainKt.SentinelHead;
        nodeChainKt$SentinelHead$14.setAggregateChildKindSet$ui_release(-1);
        nodeChainKt$SentinelHead$15 = NodeChainKt.SentinelHead;
        nodeChainKt$SentinelHead$15.updateCoordinator$ui_release(null);
        nodeChainKt$SentinelHead$16 = NodeChainKt.SentinelHead;
        if (child$ui_release != nodeChainKt$SentinelHead$16) {
            return child$ui_release;
        }
        throw new IllegalStateException("trimChain did not update the head".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0096, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0097, code lost:
    
        if (r4 >= r2) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0099, code lost:
    
        if (r8 == null) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009b, code lost:
    
        if (r5 == null) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009d, code lost:
    
        structuralUpdate(r4, r8, r9, r5, r18.layoutNode.isAttached());
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bb, code lost:
    
        throw new java.lang.IllegalStateException("structuralUpdate requires a non-null tail".toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c5, code lost:
    
        throw new java.lang.IllegalStateException("expected prior modifier list to be non-empty".toString());
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateFrom$ui_release(androidx.compose.ui.Modifier r19) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeChain.updateFrom$ui_release(androidx.compose.ui.Modifier):void");
    }

    public final void syncCoordinators() {
        LayoutModifierNodeCoordinator layoutModifierNodeCoordinator;
        InnerNodeCoordinator innerNodeCoordinator = this.innerCoordinator;
        for (Modifier.Node parent = this.tail.getParent(); parent != null; parent = parent.getParent()) {
            LayoutModifierNode asLayoutModifierNode = DelegatableNodeKt.asLayoutModifierNode(parent);
            if (asLayoutModifierNode != null) {
                if (parent.getCoordinator() != null) {
                    NodeCoordinator coordinator = parent.getCoordinator();
                    Intrinsics.checkNotNull(coordinator, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator");
                    layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) coordinator;
                    LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.getLayoutModifierNode();
                    layoutModifierNodeCoordinator.setLayoutModifierNode$ui_release(asLayoutModifierNode);
                    if (layoutModifierNode != parent) {
                        layoutModifierNodeCoordinator.onLayoutModifierNodeChanged();
                    }
                } else {
                    layoutModifierNodeCoordinator = new LayoutModifierNodeCoordinator(this.layoutNode, asLayoutModifierNode);
                    parent.updateCoordinator$ui_release(layoutModifierNodeCoordinator);
                }
                LayoutModifierNodeCoordinator layoutModifierNodeCoordinator2 = layoutModifierNodeCoordinator;
                innerNodeCoordinator.setWrappedBy$ui_release(layoutModifierNodeCoordinator2);
                layoutModifierNodeCoordinator.setWrapped$ui_release(innerNodeCoordinator);
                innerNodeCoordinator = layoutModifierNodeCoordinator2;
            } else {
                parent.updateCoordinator$ui_release(innerNodeCoordinator);
            }
        }
        LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
        innerNodeCoordinator.setWrappedBy$ui_release(parent$ui_release != null ? parent$ui_release.getInnerCoordinator$ui_release() : null);
        this.outerCoordinator = innerNodeCoordinator;
    }

    private final void syncAggregateChildKindSet() {
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$1;
        int i = 0;
        for (Modifier.Node parent = this.tail.getParent(); parent != null; parent = parent.getParent()) {
            nodeChainKt$SentinelHead$1 = NodeChainKt.SentinelHead;
            if (parent == nodeChainKt$SentinelHead$1) {
                return;
            }
            i |= parent.getKindSet();
            parent.setAggregateChildKindSet$ui_release(i);
        }
    }

    public final List<ModifierInfo> getModifierInfo() {
        MutableVector<Modifier.Element> mutableVector = this.current;
        if (mutableVector == null) {
            return CollectionsKt.emptyList();
        }
        int i = 0;
        MutableVector mutableVector2 = new MutableVector(new ModifierInfo[mutableVector.getSize()], 0);
        Modifier.Node head = getHead();
        while (head != null && head != getTail()) {
            NodeCoordinator coordinator = head.getCoordinator();
            if (coordinator == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            OwnedLayer layer = coordinator.getLayer();
            OwnedLayer layer2 = this.innerCoordinator.getLayer();
            Modifier.Node child = head.getChild();
            if (child != this.tail || head.getCoordinator() == child.getCoordinator()) {
                layer2 = null;
            }
            if (layer == null) {
                layer = layer2;
            }
            mutableVector2.add(new ModifierInfo(mutableVector.getContent()[i], coordinator, layer));
            head = head.getChild();
            i++;
        }
        return mutableVector2.asMutableList();
    }

    private final Differ getDiffer(Modifier.Node head, int offset, MutableVector<Modifier.Element> before, MutableVector<Modifier.Element> after, boolean shouldAttachOnInsert) {
        Differ differ = this.cachedDiffer;
        if (differ == null) {
            Differ differ2 = new Differ(this, head, offset, before, after, shouldAttachOnInsert);
            this.cachedDiffer = differ2;
            return differ2;
        }
        differ.setNode(head);
        differ.setOffset(offset);
        differ.setBefore(before);
        differ.setAfter(after);
        differ.setShouldAttachOnInsert(shouldAttachOnInsert);
        return differ;
    }

    public final void propagateCoordinator(Modifier.Node start, NodeCoordinator coordinator) {
        NodeChainKt$SentinelHead$1 nodeChainKt$SentinelHead$1;
        for (Modifier.Node parent = start.getParent(); parent != null; parent = parent.getParent()) {
            nodeChainKt$SentinelHead$1 = NodeChainKt.SentinelHead;
            if (parent == nodeChainKt$SentinelHead$1) {
                LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
                coordinator.setWrappedBy$ui_release(parent$ui_release != null ? parent$ui_release.getInnerCoordinator$ui_release() : null);
                this.outerCoordinator = coordinator;
                return;
            } else {
                if ((NodeKind.m4091constructorimpl(2) & parent.getKindSet()) != 0) {
                    return;
                }
                parent.updateCoordinator$ui_release(coordinator);
            }
        }
    }

    /* compiled from: NodeChain.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0018\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0005H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u0005H\u0016J\u0018\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0016J\u0018\u0010&\u001a\u00020#2\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0005H\u0016R \u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006'"}, d2 = {"Landroidx/compose/ui/node/NodeChain$Differ;", "Landroidx/compose/ui/node/DiffCallback;", "node", "Landroidx/compose/ui/Modifier$Node;", "offset", "", "before", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/ui/Modifier$Element;", "after", "shouldAttachOnInsert", "", "(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)V", "getAfter", "()Landroidx/compose/runtime/collection/MutableVector;", "setAfter", "(Landroidx/compose/runtime/collection/MutableVector;)V", "getBefore", "setBefore", "getNode", "()Landroidx/compose/ui/Modifier$Node;", "setNode", "(Landroidx/compose/ui/Modifier$Node;)V", "getOffset", "()I", "setOffset", "(I)V", "getShouldAttachOnInsert", "()Z", "setShouldAttachOnInsert", "(Z)V", "areItemsTheSame", "oldIndex", "newIndex", "insert", "", "remove", "atIndex", "same", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class Differ implements DiffCallback {
        private MutableVector<Modifier.Element> after;
        private MutableVector<Modifier.Element> before;
        private Modifier.Node node;
        private int offset;
        private boolean shouldAttachOnInsert;
        final /* synthetic */ NodeChain this$0;

        public final MutableVector<Modifier.Element> getAfter() {
            return this.after;
        }

        public final MutableVector<Modifier.Element> getBefore() {
            return this.before;
        }

        public final Modifier.Node getNode() {
            return this.node;
        }

        public final int getOffset() {
            return this.offset;
        }

        public final boolean getShouldAttachOnInsert() {
            return this.shouldAttachOnInsert;
        }

        public final void setAfter(MutableVector<Modifier.Element> mutableVector) {
            Intrinsics.checkNotNullParameter(mutableVector, "<set-?>");
            this.after = mutableVector;
        }

        public final void setBefore(MutableVector<Modifier.Element> mutableVector) {
            Intrinsics.checkNotNullParameter(mutableVector, "<set-?>");
            this.before = mutableVector;
        }

        public final void setNode(Modifier.Node node) {
            Intrinsics.checkNotNullParameter(node, "<set-?>");
            this.node = node;
        }

        public final void setOffset(int i) {
            this.offset = i;
        }

        public final void setShouldAttachOnInsert(boolean z) {
            this.shouldAttachOnInsert = z;
        }

        public Differ(NodeChain nodeChain, Modifier.Node node, int i, MutableVector<Modifier.Element> before, MutableVector<Modifier.Element> after, boolean z) {
            Intrinsics.checkNotNullParameter(node, "node");
            Intrinsics.checkNotNullParameter(before, "before");
            Intrinsics.checkNotNullParameter(after, "after");
            this.this$0 = nodeChain;
            this.node = node;
            this.offset = i;
            this.before = before;
            this.after = after;
            this.shouldAttachOnInsert = z;
        }

        @Override // androidx.compose.ui.node.DiffCallback
        public void remove(int atIndex, int oldIndex) {
            Modifier.Node child = this.node.getChild();
            Intrinsics.checkNotNull(child);
            Logger logger = this.this$0.logger;
            if (logger != null) {
                MutableVector<Modifier.Element> mutableVector = this.before;
                logger.nodeRemoved(oldIndex, mutableVector.getContent()[this.offset + oldIndex], child);
            }
            if ((NodeKind.m4091constructorimpl(2) & child.getKindSet()) != 0) {
                NodeCoordinator coordinator = child.getCoordinator();
                Intrinsics.checkNotNull(coordinator);
                NodeCoordinator wrappedBy = coordinator.getWrappedBy();
                NodeCoordinator wrapped = coordinator.getWrapped();
                Intrinsics.checkNotNull(wrapped);
                if (wrappedBy != null) {
                    wrappedBy.setWrapped$ui_release(wrapped);
                }
                wrapped.setWrappedBy$ui_release(wrappedBy);
                this.this$0.propagateCoordinator(this.node, wrapped);
            }
            this.node = this.this$0.detachAndRemoveNode(child);
        }

        @Override // androidx.compose.ui.node.DiffCallback
        public void same(int oldIndex, int newIndex) {
            Modifier.Node child = this.node.getChild();
            Intrinsics.checkNotNull(child);
            this.node = child;
            MutableVector<Modifier.Element> mutableVector = this.before;
            Modifier.Element element = mutableVector.getContent()[this.offset + oldIndex];
            MutableVector<Modifier.Element> mutableVector2 = this.after;
            Modifier.Element element2 = mutableVector2.getContent()[this.offset + newIndex];
            if (!Intrinsics.areEqual(element, element2)) {
                this.this$0.updateNode(element, element2, this.node);
                Logger logger = this.this$0.logger;
                if (logger != null) {
                    int i = this.offset;
                    logger.nodeUpdated(i + oldIndex, i + newIndex, element, element2, this.node);
                    return;
                }
                return;
            }
            Logger logger2 = this.this$0.logger;
            if (logger2 != null) {
                int i2 = this.offset;
                logger2.nodeReused(i2 + oldIndex, i2 + newIndex, element, element2, this.node);
            }
        }

        @Override // androidx.compose.ui.node.DiffCallback
        public boolean areItemsTheSame(int oldIndex, int newIndex) {
            return NodeChainKt.actionForModifiers(this.before.getContent()[this.offset + oldIndex], this.after.getContent()[this.offset + newIndex]) != 0;
        }

        @Override // androidx.compose.ui.node.DiffCallback
        public void insert(int newIndex) {
            int i = this.offset + newIndex;
            Modifier.Node node = this.node;
            this.node = this.this$0.createAndInsertNodeAsChild(this.after.getContent()[i], node);
            Logger logger = this.this$0.logger;
            if (logger != null) {
                logger.nodeInserted(i, i, this.after.getContent()[i], node, this.node);
            }
            if (this.shouldAttachOnInsert) {
                Modifier.Node child = this.node.getChild();
                Intrinsics.checkNotNull(child);
                NodeCoordinator coordinator = child.getCoordinator();
                Intrinsics.checkNotNull(coordinator);
                LayoutModifierNode asLayoutModifierNode = DelegatableNodeKt.asLayoutModifierNode(this.node);
                if (asLayoutModifierNode != null) {
                    LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = new LayoutModifierNodeCoordinator(this.this$0.getLayoutNode(), asLayoutModifierNode);
                    LayoutModifierNodeCoordinator layoutModifierNodeCoordinator2 = layoutModifierNodeCoordinator;
                    this.node.updateCoordinator$ui_release(layoutModifierNodeCoordinator2);
                    this.this$0.propagateCoordinator(this.node, layoutModifierNodeCoordinator2);
                    layoutModifierNodeCoordinator.setWrappedBy$ui_release(coordinator.getWrappedBy());
                    layoutModifierNodeCoordinator.setWrapped$ui_release(coordinator);
                    coordinator.setWrappedBy$ui_release(layoutModifierNodeCoordinator2);
                } else {
                    this.node.updateCoordinator$ui_release(coordinator);
                }
                this.node.markAsAttached$ui_release();
                this.node.runAttachLifecycle$ui_release();
                NodeKindKt.autoInvalidateInsertedNode(this.node);
                return;
            }
            this.node.setInsertedNodeAwaitingAttachForInvalidation$ui_release(true);
        }
    }

    private final void structuralUpdate(int offset, MutableVector<Modifier.Element> before, MutableVector<Modifier.Element> after, Modifier.Node tail, boolean shouldAttachOnInsert) {
        MyersDiffKt.executeDiff(before.getSize() - offset, after.getSize() - offset, getDiffer(tail, offset, before, after, shouldAttachOnInsert));
        syncAggregateChildKindSet();
    }

    public final Modifier.Node detachAndRemoveNode(Modifier.Node node) {
        if (node.getIsAttached()) {
            NodeKindKt.autoInvalidateRemovedNode(node);
            node.runDetachLifecycle$ui_release();
            node.markAsDetached$ui_release();
        }
        return removeNode(node);
    }

    private final Modifier.Node removeNode(Modifier.Node node) {
        Modifier.Node child = node.getChild();
        Modifier.Node parent = node.getParent();
        if (child != null) {
            child.setParent$ui_release(parent);
            node.setChild$ui_release(null);
        }
        if (parent != null) {
            parent.setChild$ui_release(child);
            node.setParent$ui_release(null);
        }
        Intrinsics.checkNotNull(parent);
        return parent;
    }

    private final Modifier.Node createAndInsertNodeAsParent(Modifier.Element element, Modifier.Node child) {
        BackwardsCompatNode backwardsCompatNode;
        if (element instanceof ModifierNodeElement) {
            backwardsCompatNode = ((ModifierNodeElement) element).create();
            backwardsCompatNode.setKindSet$ui_release(NodeKindKt.calculateNodeKindSetFromIncludingDelegates(backwardsCompatNode));
        } else {
            backwardsCompatNode = new BackwardsCompatNode(element);
        }
        if (!(!backwardsCompatNode.getIsAttached())) {
            throw new IllegalStateException("Check failed.".toString());
        }
        backwardsCompatNode.setInsertedNodeAwaitingAttachForInvalidation$ui_release(true);
        return insertParent(backwardsCompatNode, child);
    }

    private final Modifier.Node insertParent(Modifier.Node node, Modifier.Node child) {
        Modifier.Node parent = child.getParent();
        if (parent != null) {
            parent.setChild$ui_release(node);
            node.setParent$ui_release(parent);
        }
        child.setParent$ui_release(node);
        node.setChild$ui_release(child);
        return node;
    }

    public final Modifier.Node createAndInsertNodeAsChild(Modifier.Element element, Modifier.Node parent) {
        BackwardsCompatNode backwardsCompatNode;
        if (element instanceof ModifierNodeElement) {
            backwardsCompatNode = ((ModifierNodeElement) element).create();
            backwardsCompatNode.setKindSet$ui_release(NodeKindKt.calculateNodeKindSetFromIncludingDelegates(backwardsCompatNode));
        } else {
            backwardsCompatNode = new BackwardsCompatNode(element);
        }
        if (!(!backwardsCompatNode.getIsAttached())) {
            throw new IllegalStateException("A ModifierNodeElement cannot return an already attached node from create() ".toString());
        }
        backwardsCompatNode.setInsertedNodeAwaitingAttachForInvalidation$ui_release(true);
        return insertChild(backwardsCompatNode, parent);
    }

    private final Modifier.Node insertChild(Modifier.Node node, Modifier.Node parent) {
        Modifier.Node child = parent.getChild();
        if (child != null) {
            child.setParent$ui_release(node);
            node.setChild$ui_release(child);
        }
        parent.setChild$ui_release(node);
        node.setParent$ui_release(parent);
        return node;
    }

    public final void updateNode(Modifier.Element prev, Modifier.Element next, Modifier.Node node) {
        if ((prev instanceof ModifierNodeElement) && (next instanceof ModifierNodeElement)) {
            NodeChainKt.updateUnsafe((ModifierNodeElement) next, node);
            if (node.getIsAttached()) {
                NodeKindKt.autoInvalidateUpdatedNode(node);
                return;
            } else {
                node.setUpdatedNodeAwaitingAttachForInvalidation$ui_release(true);
                return;
            }
        }
        if (node instanceof BackwardsCompatNode) {
            ((BackwardsCompatNode) node).setElement(next);
            if (node.getIsAttached()) {
                NodeKindKt.autoInvalidateUpdatedNode(node);
                return;
            } else {
                node.setUpdatedNodeAwaitingAttachForInvalidation$ui_release(true);
                return;
            }
        }
        throw new IllegalStateException("Unknown Modifier.Node type".toString());
    }

    public final void headToTail$ui_release(int mask, Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if ((getAggregateChildKindSet() & mask) == 0) {
            return;
        }
        for (Modifier.Node head = getHead(); head != null; head = head.getChild()) {
            if ((head.getKindSet() & mask) != 0) {
                block.invoke(head);
            }
            if ((head.getAggregateChildKindSet() & mask) == 0) {
                return;
            }
        }
    }

    public final void headToTail$ui_release(Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        for (Modifier.Node head = getHead(); head != null; head = head.getChild()) {
            block.invoke(head);
        }
    }

    public final void headToTailExclusive$ui_release(Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        for (Modifier.Node head = getHead(); head != null && head != getTail(); head = head.getChild()) {
            block.invoke(head);
        }
    }

    public final void tailToHead$ui_release(int mask, Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if ((getAggregateChildKindSet() & mask) == 0) {
            return;
        }
        for (Modifier.Node tail = getTail(); tail != null; tail = tail.getParent()) {
            if ((tail.getKindSet() & mask) != 0) {
                block.invoke(tail);
            }
        }
    }

    public final void tailToHead$ui_release(Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        for (Modifier.Node tail = getTail(); tail != null; tail = tail.getParent()) {
            block.invoke(tail);
        }
    }

    /* renamed from: has-H91voCI$ui_release */
    public final boolean m4054hasH91voCI$ui_release(int type) {
        return (getAggregateChildKindSet() & type) != 0;
    }

    public final boolean has$ui_release(int mask) {
        return (getAggregateChildKindSet() & mask) != 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        if (this.head == this.tail) {
            sb.append("]");
        } else {
            Modifier.Node head = getHead();
            while (true) {
                if (head == null || head == getTail()) {
                    break;
                }
                sb.append(String.valueOf(head));
                if (head.getChild() == this.tail) {
                    sb.append("]");
                    break;
                }
                sb.append(",");
                head = head.getChild();
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public final void resetState$ui_release() {
        for (Modifier.Node tail = getTail(); tail != null; tail = tail.getParent()) {
            if (tail.getIsAttached()) {
                tail.reset$ui_release();
            }
        }
        runDetachLifecycle$ui_release();
        markAsDetached$ui_release();
    }

    public final void markAsAttached() {
        for (Modifier.Node head = getHead(); head != null; head = head.getChild()) {
            head.markAsAttached$ui_release();
        }
    }

    public final void runAttachLifecycle() {
        for (Modifier.Node head = getHead(); head != null; head = head.getChild()) {
            head.runAttachLifecycle$ui_release();
            if (head.getInsertedNodeAwaitingAttachForInvalidation()) {
                NodeKindKt.autoInvalidateInsertedNode(head);
            }
            if (head.getUpdatedNodeAwaitingAttachForInvalidation()) {
                NodeKindKt.autoInvalidateUpdatedNode(head);
            }
            head.setInsertedNodeAwaitingAttachForInvalidation$ui_release(false);
            head.setUpdatedNodeAwaitingAttachForInvalidation$ui_release(false);
        }
    }

    public final void markAsDetached$ui_release() {
        for (Modifier.Node tail = getTail(); tail != null; tail = tail.getParent()) {
            if (tail.getIsAttached()) {
                tail.markAsDetached$ui_release();
            }
        }
    }

    public final void runDetachLifecycle$ui_release() {
        for (Modifier.Node tail = getTail(); tail != null; tail = tail.getParent()) {
            if (tail.getIsAttached()) {
                tail.runDetachLifecycle$ui_release();
            }
        }
    }

    /* renamed from: firstFromHead-aLcG6gQ$ui_release */
    public final /* synthetic */ <T> T m4053firstFromHeadaLcG6gQ$ui_release(int type, Function1<? super T, Boolean> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if ((getAggregateChildKindSet() & type) != 0) {
            for (Modifier.Node head = getHead(); head != null; head = head.getChild()) {
                if ((head.getKindSet() & type) != 0) {
                    Modifier.Node node = head;
                    MutableVector mutableVector = null;
                    while (node != null) {
                        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                        if (node instanceof Object) {
                            if (block.invoke(node).booleanValue()) {
                                return (T) node;
                            }
                        } else {
                            Object obj = node;
                            if ((((Modifier.Node) node).getKindSet() & type) != 0 && (node instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate = node.getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & type) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node = delegate;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            Object obj2 = node;
                                            if (node != null) {
                                                if (mutableVector != null) {
                                                    mutableVector.add(node);
                                                }
                                                node = (Object) null;
                                            }
                                            if (mutableVector != null) {
                                                mutableVector.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                        }
                        node = DelegatableNodeKt.pop(mutableVector);
                    }
                }
                if ((head.getAggregateChildKindSet() & type) == 0) {
                    break;
                }
            }
        }
        return null;
    }

    /* renamed from: headToTail-aLcG6gQ$ui_release */
    public final /* synthetic */ <T> void m4056headToTailaLcG6gQ$ui_release(int type, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if ((getAggregateChildKindSet() & type) != 0) {
            for (Modifier.Node head = getHead(); head != null; head = head.getChild()) {
                if ((head.getKindSet() & type) != 0) {
                    Modifier.Node node = head;
                    MutableVector mutableVector = null;
                    while (node != null) {
                        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                        if (node instanceof Object) {
                            block.invoke(node);
                        } else if ((node.getKindSet() & type) != 0 && (node instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                if ((delegate.getKindSet() & type) != 0) {
                                    i++;
                                    if (i == 1) {
                                        node = delegate;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (node != null) {
                                            if (mutableVector != null) {
                                                mutableVector.add(node);
                                            }
                                            node = null;
                                        }
                                        if (mutableVector != null) {
                                            mutableVector.add(delegate);
                                        }
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        node = DelegatableNodeKt.pop(mutableVector);
                    }
                }
                if ((head.getAggregateChildKindSet() & type) == 0) {
                    return;
                }
            }
        }
    }

    /* renamed from: tailToHead-aLcG6gQ$ui_release */
    public final /* synthetic */ <T> void m4058tailToHeadaLcG6gQ$ui_release(int type, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if ((getAggregateChildKindSet() & type) != 0) {
            for (Modifier.Node tail = getTail(); tail != null; tail = tail.getParent()) {
                if ((tail.getKindSet() & type) != 0) {
                    Modifier.Node node = tail;
                    MutableVector mutableVector = null;
                    while (node != null) {
                        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                        if (node instanceof Object) {
                            block.invoke(node);
                        } else if ((node.getKindSet() & type) != 0 && (node instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                if ((delegate.getKindSet() & type) != 0) {
                                    i++;
                                    if (i == 1) {
                                        node = delegate;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (node != null) {
                                            if (mutableVector != null) {
                                                mutableVector.add(node);
                                            }
                                            node = null;
                                        }
                                        if (mutableVector != null) {
                                            mutableVector.add(delegate);
                                        }
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        node = DelegatableNodeKt.pop(mutableVector);
                    }
                }
            }
        }
    }

    /* renamed from: tail-H91voCI$ui_release */
    public final /* synthetic */ <T> T m4057tailH91voCI$ui_release(int type) {
        if ((getAggregateChildKindSet() & type) != 0) {
            for (Modifier.Node tail = getTail(); tail != null; tail = tail.getParent()) {
                if ((tail.getKindSet() & type) != 0) {
                    Object obj = (T) tail;
                    MutableVector mutableVector = null;
                    while (obj != null) {
                        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                        if (obj instanceof Object) {
                            return (T) obj;
                        }
                        Object obj2 = obj;
                        if ((((Modifier.Node) obj).getKindSet() & type) != 0 && (obj instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node delegate = obj.getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                if ((delegate.getKindSet() & type) != 0) {
                                    i++;
                                    if (i == 1) {
                                        obj = (T) delegate;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        Object obj3 = obj;
                                        if (obj != null) {
                                            if (mutableVector != null) {
                                                mutableVector.add(obj);
                                            }
                                            obj = (T) null;
                                        }
                                        if (mutableVector != null) {
                                            mutableVector.add(delegate);
                                        }
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        obj = (T) DelegatableNodeKt.pop(mutableVector);
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: head-H91voCI$ui_release */
    public final /* synthetic */ <T> T m4055headH91voCI$ui_release(int type) {
        if ((getAggregateChildKindSet() & type) != 0) {
            for (Modifier.Node head = getHead(); head != null; head = head.getChild()) {
                if ((head.getKindSet() & type) != 0) {
                    Object obj = (T) head;
                    MutableVector mutableVector = null;
                    while (obj != null) {
                        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                        if (obj instanceof Object) {
                            return (T) obj;
                        }
                        Object obj2 = obj;
                        if ((((Modifier.Node) obj).getKindSet() & type) != 0 && (obj instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node delegate = obj.getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                if ((delegate.getKindSet() & type) != 0) {
                                    i++;
                                    if (i == 1) {
                                        obj = (T) delegate;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        Object obj3 = obj;
                                        if (obj != null) {
                                            if (mutableVector != null) {
                                                mutableVector.add(obj);
                                            }
                                            obj = (T) null;
                                        }
                                        if (mutableVector != null) {
                                            mutableVector.add(delegate);
                                        }
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        obj = (T) DelegatableNodeKt.pop(mutableVector);
                    }
                }
                if ((head.getAggregateChildKindSet() & type) == 0) {
                    break;
                }
            }
        }
        return null;
    }
}
