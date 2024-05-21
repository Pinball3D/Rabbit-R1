package androidx.compose.runtime;

import io.sentry.SentryLockReason;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: SlotTable.kt */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b \n\u0002\u0010(\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010 \n\u0002\b9\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u009f\u00012\u00020\u0001:\u0002\u009f\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\n2\u0006\u00104\u001a\u00020\nJ\u000e\u00105\u001a\u0002022\u0006\u00104\u001a\u00020\nJ\u0010\u00106\u001a\u00020\u00072\b\b\u0002\u00107\u001a\u00020\nJ\u000e\u00108\u001a\u00020\n2\u0006\u00106\u001a\u00020\u0007J\r\u00109\u001a\u000202H\u0000¢\u0006\u0002\b:J\u0006\u0010;\u001a\u000202J\u0010\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\nH\u0002J\b\u0010>\u001a\u000202H\u0002J\u0006\u0010?\u001a\u000202J\u0010\u0010@\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\nH\u0002J\u0010\u0010A\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\nH\u0002J \u0010B\u001a\u00020\n2\u0006\u00106\u001a\u00020\n2\u0006\u0010C\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010D\u001a\u00020\n2\u0006\u00107\u001a\u00020\nH\u0002J\u0010\u0010E\u001a\u00020\n2\u0006\u0010D\u001a\u00020\nH\u0002J(\u0010F\u001a\u00020\n2\u0006\u00107\u001a\u00020\n2\u0006\u0010G\u001a\u00020\n2\u0006\u0010C\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0006\u0010H\u001a\u00020\nJ\u0006\u0010I\u001a\u000202J\u000e\u0010J\u001a\u0002022\u0006\u00106\u001a\u00020\u0007J\u000e\u0010J\u001a\u0002022\u0006\u00107\u001a\u00020\nJ \u0010K\u001a\u0002022\u0006\u0010\"\u001a\u00020\n2\u0006\u0010H\u001a\u00020\n2\u0006\u0010L\u001a\u00020\nH\u0002J\u0010\u0010M\u001a\u0004\u0018\u00010\u00012\u0006\u00107\u001a\u00020\nJ\u0010\u0010N\u001a\u00020\n2\u0006\u00107\u001a\u00020\nH\u0002J\u000e\u0010O\u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u0010\u0010P\u001a\u0004\u0018\u00010\u00012\u0006\u00107\u001a\u00020\nJ\u000e\u0010Q\u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u000e\u0010R\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010SJ\u0006\u0010T\u001a\u00020UJ\u000e\u0010V\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\nJ\u0016\u0010W\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nJ\u000e\u0010X\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\nJ\u0010\u0010Y\u001a\u0002022\b\u0010Z\u001a\u0004\u0018\u00010\u0001J\u0010\u0010[\u001a\u0002022\u0006\u0010&\u001a\u00020\nH\u0002J\u000e\u0010\\\u001a\u0002022\u0006\u0010]\u001a\u00020\nJ\u0018\u0010^\u001a\u0002022\u0006\u0010&\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nH\u0002J\u000e\u0010\u001f\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\nJ\u000e\u0010_\u001a\b\u0012\u0004\u0012\u00020\n0`H\u0002J\u0010\u0010a\u001a\u0002022\b\b\u0002\u0010=\u001a\u00020\nJ \u0010b\u001a\u0002022\u0006\u0010c\u001a\u00020\n2\u0006\u0010d\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0002J&\u0010e\u001a\b\u0012\u0004\u0012\u00020\u00070`2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00107\u001a\u00020\n2\b\b\u0002\u0010f\u001a\u00020\u000eJ\u000e\u0010g\u001a\u0002022\u0006\u0010h\u001a\u00020\nJ\u0010\u0010i\u001a\u0002022\u0006\u00107\u001a\u00020\nH\u0002J$\u0010j\u001a\b\u0012\u0004\u0012\u00020\u00070`2\u0006\u0010h\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00107\u001a\u00020\nJ\u0018\u0010k\u001a\u0002022\u0006\u00107\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nH\u0002J$\u0010l\u001a\b\u0012\u0004\u0012\u00020\u00070`2\u0006\u00106\u001a\u00020\u00072\u0006\u0010h\u001a\u00020\n2\u0006\u0010m\u001a\u00020\u0000J\u0010\u0010n\u001a\u0004\u0018\u00010\u00012\u0006\u00106\u001a\u00020\u0007J\u0010\u0010n\u001a\u0004\u0018\u00010\u00012\u0006\u00107\u001a\u00020\nJ\u000e\u0010 \u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u000e\u0010\"\u001a\u00020\n2\u0006\u00106\u001a\u00020\u0007J\u000e\u0010\"\u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u0010\u0010o\u001a\u00020\n2\u0006\u00107\u001a\u00020\nH\u0002J\u0018\u0010p\u001a\u00020\n2\u0006\u00107\u001a\u00020\n2\u0006\u0010G\u001a\u00020\nH\u0002J\b\u0010q\u001a\u000202H\u0002J\u0018\u0010r\u001a\u00020\u000e2\u0006\u0010G\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0002J\u0006\u0010s\u001a\u00020\u000eJ\u0018\u0010t\u001a\u00020\u000e2\u0006\u0010u\u001a\u00020\n2\u0006\u0010v\u001a\u00020\nH\u0002J \u0010w\u001a\u0002022\u0006\u0010u\u001a\u00020\n2\u0006\u0010v\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nH\u0002J\u0006\u0010x\u001a\u000202J\b\u0010y\u001a\u00020\nH\u0002J\b\u0010z\u001a\u000202H\u0002J\u000e\u0010{\u001a\u0002022\u0006\u00106\u001a\u00020\u0007J\u0010\u0010|\u001a\u0002022\b\u0010Z\u001a\u0004\u0018\u00010\u0001J\u001a\u0010|\u001a\u0004\u0018\u00010\u00012\u0006\u00107\u001a\u00020\n2\b\u0010Z\u001a\u0004\u0018\u00010\u0001J\b\u0010}\u001a\u0004\u0018\u00010\u0001J\u0006\u0010~\u001a\u00020\nJ\u0006\u0010\u007f\u001a\u000202J\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u00106\u001a\u00020\u00072\u0006\u00107\u001a\u00020\nJ\u001a\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00012\u0007\u0010\u0081\u0001\u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u001a\u0010\u0082\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0001J%\u0010\u0082\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0001J\u0007\u0010\u0085\u0001\u001a\u000202J\u000f\u0010\u0085\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\nJ\u001a\u0010\u0085\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0001J/\u0010\u0085\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001f\u001a\u00020\u000e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0001H\u0002J\u001a\u0010\u0087\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0001J$\u0010\u0087\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00012\b\u0010n\u001a\u0004\u0018\u00010\u0001J\t\u0010\u0088\u0001\u001a\u00020UH\u0016J\u0013\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00012\b\u0010Z\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u008a\u0001\u001a\u0002022\u0007\u0010\u008b\u0001\u001a\u00020\n2\u0007\u0010\u008c\u0001\u001a\u00020\nH\u0002J\u0011\u0010\u008d\u0001\u001a\u0002022\b\u0010Z\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u008e\u0001\u001a\u0002022\u0006\u0010=\u001a\u00020\nH\u0002J\u0019\u0010\u008f\u0001\u001a\u0002022\u0006\u0010=\u001a\u00020\n2\u0006\u0010|\u001a\u00020%H\u0002J\u0019\u0010\u0090\u0001\u001a\u0002022\u0006\u00106\u001a\u00020\u00072\b\u0010Z\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u0090\u0001\u001a\u0002022\b\u0010Z\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u0091\u0001\u001a\u0002022\u0006\u00107\u001a\u00020\n2\b\u0010Z\u001a\u0004\u0018\u00010\u0001H\u0002J\u0011\u0010\u0092\u0001\u001a\u0002022\b\u0010Z\u001a\u0004\u0018\u00010\u0001J\u000f\u0010\u0093\u0001\u001a\u000202H\u0000¢\u0006\u0003\b\u0094\u0001J\u000f\u0010\u0095\u0001\u001a\u000202H\u0000¢\u0006\u0003\b\u0096\u0001J\u0015\u0010\u0097\u0001\u001a\u00020\n*\u00020\u001c2\u0006\u00103\u001a\u00020\nH\u0002J\u0014\u0010D\u001a\u00020\n*\u00020\u001c2\u0006\u00103\u001a\u00020\nH\u0002J\u0013\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00020\n0`*\u00020\u001cH\u0002J\u001b\u0010\u0099\u0001\u001a\u000202*\b0\u009a\u0001j\u0003`\u009b\u00012\u0006\u00107\u001a\u00020\nH\u0002J\u0015\u0010\u009c\u0001\u001a\u00020\n*\u00020\u001c2\u0006\u00103\u001a\u00020\nH\u0002J\u0014\u0010\"\u001a\u00020\n*\u00020\u001c2\u0006\u00107\u001a\u00020\nH\u0002J\u0015\u0010\u009d\u0001\u001a\u00020\n*\u00020\u001c2\u0006\u00103\u001a\u00020\nH\u0002J\u001d\u0010\u009e\u0001\u001a\u000202*\u00020\u001c2\u0006\u00103\u001a\u00020\n2\u0006\u0010D\u001a\u00020\nH\u0002R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\fR\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u001e\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0011R\u0011\u0010\u001f\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0011R\u000e\u0010 \u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\"\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\fR\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\n8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b'\u0010\fR\u0018\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010)X\u0082\u000e¢\u0006\u0004\n\u0002\u0010*R\u000e\u0010+\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100¨\u0006 \u0001"}, d2 = {"Landroidx/compose/runtime/SlotWriter;", "", "table", "Landroidx/compose/runtime/SlotTable;", "(Landroidx/compose/runtime/SlotTable;)V", "anchors", "Ljava/util/ArrayList;", "Landroidx/compose/runtime/Anchor;", "Lkotlin/collections/ArrayList;", "capacity", "", "getCapacity", "()I", "<set-?>", "", "closed", "getClosed", "()Z", "currentGroup", "getCurrentGroup", "currentGroupEnd", "currentSlot", "currentSlotEnd", "endStack", "Landroidx/compose/runtime/IntStack;", "groupGapLen", "groupGapStart", "groups", "", "insertCount", "isGroupEnd", "isNode", "nodeCount", "nodeCountStack", "parent", "getParent", "pendingRecalculateMarks", "Landroidx/compose/runtime/PrioritySet;", "size", "getSize$runtime_release", "slots", "", "[Ljava/lang/Object;", "slotsGapLen", "slotsGapOwner", "slotsGapStart", "startStack", "getTable$runtime_release", "()Landroidx/compose/runtime/SlotTable;", "addToGroupSizeAlongSpine", "", SentryLockReason.JsonKeys.ADDRESS, "amount", "advanceBy", "anchor", "index", "anchorIndex", "bashGroup", "bashGroup$runtime_release", "beginInsert", "childContainsAnyMarks", "group", "clearSlotGap", "close", "containsAnyGroupMarks", "containsGroupMark", "dataAnchorToDataIndex", "gapLen", "dataIndex", "dataIndexToDataAddress", "dataIndexToDataAnchor", "gapStart", "endGroup", "endInsert", "ensureStarted", "fixParentAnchorsFor", "firstChild", "groupAux", "groupIndexToAddress", "groupKey", "groupObjectKey", "groupSize", "groupSlots", "", "groupsAsString", "", "indexInCurrentGroup", "indexInGroup", "indexInParent", "insertAux", "value", "insertGroups", "insertParentGroup", "key", "insertSlots", "keys", "", "markGroup", "moveAnchors", "originalLocation", "newLocation", "moveFrom", "removeSourceGroup", "moveGroup", "offset", "moveGroupGapTo", "moveIntoGroupFrom", "moveSlotGapTo", "moveTo", "writer", "node", "parentAnchorToIndex", "parentIndexToAnchor", "recalculateMarks", "removeAnchors", "removeGroup", "removeGroups", "start", "len", "removeSlots", "reset", "restoreCurrentGroupEnd", "saveCurrentGroupEnd", "seek", "set", "skip", "skipGroup", "skipToGroupEnd", "slot", "groupIndex", "startData", "aux", "objectKey", "startGroup", "dataKey", "startNode", "toString", "update", "updateAnchors", "previousGapStart", "newGapStart", "updateAux", "updateContainsMark", "updateContainsMarkNow", "updateNode", "updateNodeOfGroup", "updateParentNode", "verifyDataAnchors", "verifyDataAnchors$runtime_release", "verifyParentAnchors", "verifyParentAnchors$runtime_release", "auxIndex", "dataIndexes", "groupAsString", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "nodeIndex", "slotIndex", "updateDataIndex", "Companion", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SlotWriter {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private ArrayList<Anchor> anchors;
    private boolean closed;
    private int currentGroup;
    private int currentGroupEnd;
    private int currentSlot;
    private int currentSlotEnd;
    private final IntStack endStack;
    private int groupGapLen;
    private int groupGapStart;
    private int[] groups;
    private int insertCount;
    private int nodeCount;
    private final IntStack nodeCountStack;
    private int parent;
    private PrioritySet pendingRecalculateMarks;
    private Object[] slots;
    private int slotsGapLen;
    private int slotsGapOwner;
    private int slotsGapStart;
    private final IntStack startStack;
    private final SlotTable table;

    private final int dataAnchorToDataIndex(int anchor, int gapLen, int capacity) {
        return anchor < 0 ? (capacity - gapLen) + anchor + 1 : anchor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndexToDataAddress(int dataIndex) {
        return dataIndex < this.slotsGapStart ? dataIndex : dataIndex + this.slotsGapLen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndexToDataAnchor(int index, int gapStart, int gapLen, int capacity) {
        return index > gapStart ? -(((capacity - gapLen) - index) + 1) : index;
    }

    private final int groupIndexToAddress(int index) {
        return index < this.groupGapStart ? index : index + this.groupGapLen;
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final int getCurrentGroup() {
        return this.currentGroup;
    }

    public final int getParent() {
        return this.parent;
    }

    /* renamed from: getTable$runtime_release, reason: from getter */
    public final SlotTable getTable() {
        return this.table;
    }

    public final boolean indexInParent(int index) {
        int i = this.parent;
        return (index > i && index < this.currentGroupEnd) || (i == 0 && index == 0);
    }

    public final boolean isGroupEnd() {
        return this.currentGroup == this.currentGroupEnd;
    }

    public SlotWriter(SlotTable table) {
        Intrinsics.checkNotNullParameter(table, "table");
        this.table = table;
        this.groups = table.getGroups();
        this.slots = table.getSlots();
        this.anchors = table.getAnchors$runtime_release();
        this.groupGapStart = table.getGroupsSize();
        this.groupGapLen = (this.groups.length / 5) - table.getGroupsSize();
        this.currentGroupEnd = table.getGroupsSize();
        this.slotsGapStart = table.getSlotsSize();
        this.slotsGapLen = this.slots.length - table.getSlotsSize();
        this.slotsGapOwner = table.getGroupsSize();
        this.startStack = new IntStack();
        this.endStack = new IntStack();
        this.nodeCountStack = new IntStack();
        this.parent = -1;
    }

    public final boolean isNode() {
        boolean isNode;
        int i = this.currentGroup;
        if (i < this.currentGroupEnd) {
            isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress(i));
            if (isNode) {
                return true;
            }
        }
        return false;
    }

    public final boolean isNode(int index) {
        boolean isNode;
        isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress(index));
        return isNode;
    }

    public final int nodeCount(int index) {
        int nodeCount;
        nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress(index));
        return nodeCount;
    }

    public final int groupKey(int index) {
        int key;
        key = SlotTableKt.key(this.groups, groupIndexToAddress(index));
        return key;
    }

    public final Object groupObjectKey(int index) {
        boolean hasObjectKey;
        int objectKeyIndex;
        int groupIndexToAddress = groupIndexToAddress(index);
        hasObjectKey = SlotTableKt.hasObjectKey(this.groups, groupIndexToAddress);
        if (!hasObjectKey) {
            return null;
        }
        Object[] objArr = this.slots;
        objectKeyIndex = SlotTableKt.objectKeyIndex(this.groups, groupIndexToAddress);
        return objArr[objectKeyIndex];
    }

    public final int groupSize(int index) {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress(index));
        return groupSize;
    }

    public final Object groupAux(int index) {
        boolean hasAux;
        int groupIndexToAddress = groupIndexToAddress(index);
        hasAux = SlotTableKt.hasAux(this.groups, groupIndexToAddress);
        return hasAux ? this.slots[auxIndex(this.groups, groupIndexToAddress)] : Composer.INSTANCE.getEmpty();
    }

    public final boolean indexInCurrentGroup(int index) {
        return indexInGroup(index, this.currentGroup);
    }

    public final boolean indexInGroup(int index, int group) {
        int capacity;
        int groupSize;
        if (group == this.parent) {
            capacity = this.currentGroupEnd;
        } else {
            if (group > this.startStack.peekOr(0)) {
                groupSize = groupSize(group);
            } else {
                int indexOf = this.startStack.indexOf(group);
                if (indexOf < 0) {
                    groupSize = groupSize(group);
                } else {
                    capacity = (getCapacity() - this.groupGapLen) - this.endStack.peek(indexOf);
                }
            }
            capacity = groupSize + group;
        }
        return index > group && index < capacity;
    }

    public final Object node(int index) {
        boolean isNode;
        int groupIndexToAddress = groupIndexToAddress(index);
        isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress);
        if (isNode) {
            return this.slots[dataIndexToDataAddress(nodeIndex(this.groups, groupIndexToAddress))];
        }
        return null;
    }

    public final Object node(Anchor anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        return node(anchor.toIndexFor(this));
    }

    public final int parent(int index) {
        return parent(this.groups, index);
    }

    public final int parent(Anchor anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        if (anchor.getValid()) {
            return parent(this.groups, anchorIndex(anchor));
        }
        return -1;
    }

    public final void close() {
        this.closed = true;
        if (this.startStack.isEmpty()) {
            moveGroupGapTo(getSize$runtime_release());
            moveSlotGapTo(this.slots.length - this.slotsGapLen, this.groupGapStart);
            clearSlotGap();
            recalculateMarks();
        }
        this.table.close$runtime_release(this, this.groups, this.groupGapStart, this.slots, this.slotsGapStart, this.anchors);
    }

    public final void reset() {
        if (this.insertCount == 0) {
            recalculateMarks();
            this.currentGroup = 0;
            this.currentGroupEnd = getCapacity() - this.groupGapLen;
            this.currentSlot = 0;
            this.currentSlotEnd = 0;
            this.nodeCount = 0;
            return;
        }
        ComposerKt.composeRuntimeError("Cannot reset when inserting".toString());
        throw new KotlinNothingValueException();
    }

    public final Object update(Object value) {
        Object skip = skip();
        set(value);
        return skip;
    }

    public final void updateAux(Object value) {
        boolean hasAux;
        int groupIndexToAddress = groupIndexToAddress(this.currentGroup);
        hasAux = SlotTableKt.hasAux(this.groups, groupIndexToAddress);
        if (hasAux) {
            this.slots[dataIndexToDataAddress(auxIndex(this.groups, groupIndexToAddress))] = value;
        } else {
            ComposerKt.composeRuntimeError("Updating the data of a group that was not created with a data slot".toString());
            throw new KotlinNothingValueException();
        }
    }

    public final void insertAux(Object value) {
        boolean hasAux;
        if (this.insertCount >= 0) {
            int i = this.parent;
            int groupIndexToAddress = groupIndexToAddress(i);
            hasAux = SlotTableKt.hasAux(this.groups, groupIndexToAddress);
            if (!hasAux) {
                insertSlots(1, i);
                int auxIndex = auxIndex(this.groups, groupIndexToAddress);
                int dataIndexToDataAddress = dataIndexToDataAddress(auxIndex);
                int i2 = this.currentSlot;
                if (i2 > auxIndex) {
                    int i3 = i2 - auxIndex;
                    if (i3 >= 3) {
                        throw new IllegalStateException("Moving more than two slot not supported".toString());
                    }
                    if (i3 > 1) {
                        Object[] objArr = this.slots;
                        objArr[dataIndexToDataAddress + 2] = objArr[dataIndexToDataAddress + 1];
                    }
                    Object[] objArr2 = this.slots;
                    objArr2[dataIndexToDataAddress + 1] = objArr2[dataIndexToDataAddress];
                }
                SlotTableKt.addAux(this.groups, groupIndexToAddress);
                this.slots[dataIndexToDataAddress] = value;
                this.currentSlot++;
                return;
            }
            ComposerKt.composeRuntimeError("Group already has auxiliary data".toString());
            throw new KotlinNothingValueException();
        }
        ComposerKt.composeRuntimeError("Cannot insert auxiliary data when not inserting".toString());
        throw new KotlinNothingValueException();
    }

    public final void updateNode(Object value) {
        updateNodeOfGroup(this.currentGroup, value);
    }

    public final void updateNode(Anchor anchor, Object value) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        updateNodeOfGroup(anchor.toIndexFor(this), value);
    }

    public final void updateParentNode(Object value) {
        updateNodeOfGroup(this.parent, value);
    }

    public final void set(Object value) {
        int i = this.currentSlot;
        if (i <= this.currentSlotEnd) {
            this.slots[dataIndexToDataAddress(i - 1)] = value;
        } else {
            ComposerKt.composeRuntimeError("Writing to an invalid slot".toString());
            throw new KotlinNothingValueException();
        }
    }

    public final Object set(int index, Object value) {
        int slotIndex = slotIndex(this.groups, groupIndexToAddress(this.currentGroup));
        int i = slotIndex + index;
        if (i >= slotIndex && i < dataIndex(this.groups, groupIndexToAddress(this.currentGroup + 1))) {
            int dataIndexToDataAddress = dataIndexToDataAddress(i);
            Object[] objArr = this.slots;
            Object obj = objArr[dataIndexToDataAddress];
            objArr[dataIndexToDataAddress] = value;
            return obj;
        }
        ComposerKt.composeRuntimeError(("Write to an invalid slot index " + index + " for group " + this.currentGroup).toString());
        throw new KotlinNothingValueException();
    }

    public final Object skip() {
        if (this.insertCount > 0) {
            insertSlots(1, this.parent);
        }
        Object[] objArr = this.slots;
        int i = this.currentSlot;
        this.currentSlot = i + 1;
        return objArr[dataIndexToDataAddress(i)];
    }

    public final Object slot(Anchor anchor, int index) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        return slot(anchorIndex(anchor), index);
    }

    public final Object slot(int groupIndex, int index) {
        int slotIndex = slotIndex(this.groups, groupIndexToAddress(groupIndex));
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(groupIndex + 1));
        int i = index + slotIndex;
        if (slotIndex > i || i >= dataIndex) {
            return Composer.INSTANCE.getEmpty();
        }
        return this.slots[dataIndexToDataAddress(i)];
    }

    public final void advanceBy(int amount) {
        if (!(amount >= 0)) {
            ComposerKt.composeRuntimeError("Cannot seek backwards".toString());
            throw new KotlinNothingValueException();
        }
        if (this.insertCount > 0) {
            throw new IllegalStateException("Cannot call seek() while inserting".toString());
        }
        if (amount == 0) {
            return;
        }
        int i = this.currentGroup + amount;
        if (i >= this.parent && i <= this.currentGroupEnd) {
            this.currentGroup = i;
            int dataIndex = dataIndex(this.groups, groupIndexToAddress(i));
            this.currentSlot = dataIndex;
            this.currentSlotEnd = dataIndex;
            return;
        }
        ComposerKt.composeRuntimeError(("Cannot seek outside the current group (" + this.parent + '-' + this.currentGroupEnd + ')').toString());
        throw new KotlinNothingValueException();
    }

    public final void seek(Anchor anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        advanceBy(anchor.toIndexFor(this) - this.currentGroup);
    }

    public final void skipToGroupEnd() {
        int i = this.currentGroupEnd;
        this.currentGroup = i;
        this.currentSlot = dataIndex(this.groups, groupIndexToAddress(i));
    }

    public final void beginInsert() {
        int i = this.insertCount;
        this.insertCount = i + 1;
        if (i == 0) {
            saveCurrentGroupEnd();
        }
    }

    public final void endInsert() {
        int i = this.insertCount;
        if (i <= 0) {
            throw new IllegalStateException("Unbalanced begin/end insert".toString());
        }
        int i2 = i - 1;
        this.insertCount = i2;
        if (i2 == 0) {
            if (this.nodeCountStack.getTos() == this.startStack.getTos()) {
                restoreCurrentGroupEnd();
            } else {
                ComposerKt.composeRuntimeError("startGroup/endGroup mismatch while inserting".toString());
                throw new KotlinNothingValueException();
            }
        }
    }

    public final void startGroup() {
        if (this.insertCount == 0) {
            startGroup(0, Composer.INSTANCE.getEmpty(), false, Composer.INSTANCE.getEmpty());
        } else {
            ComposerKt.composeRuntimeError("Key must be supplied when inserting".toString());
            throw new KotlinNothingValueException();
        }
    }

    public final void startGroup(int key) {
        startGroup(key, Composer.INSTANCE.getEmpty(), false, Composer.INSTANCE.getEmpty());
    }

    public final void startGroup(int key, Object dataKey) {
        startGroup(key, dataKey, false, Composer.INSTANCE.getEmpty());
    }

    public final void startNode(int key, Object objectKey) {
        startGroup(key, objectKey, true, Composer.INSTANCE.getEmpty());
    }

    public final void startNode(int key, Object objectKey, Object node) {
        startGroup(key, objectKey, true, node);
    }

    public final void startData(int key, Object objectKey, Object aux) {
        startGroup(key, objectKey, false, aux);
    }

    public final void startData(int key, Object aux) {
        startGroup(key, Composer.INSTANCE.getEmpty(), false, aux);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void startGroup(int key, Object objectKey, boolean isNode, Object aux) {
        int nodeCount;
        int groupSize;
        int i;
        Object[] objArr = this.insertCount > 0;
        this.nodeCountStack.push(this.nodeCount);
        if (objArr != false) {
            insertGroups(1);
            int i2 = this.currentGroup;
            int groupIndexToAddress = groupIndexToAddress(i2);
            int i3 = objectKey != Composer.INSTANCE.getEmpty() ? 1 : 0;
            int i4 = (isNode || aux == Composer.INSTANCE.getEmpty()) ? 0 : 1;
            SlotTableKt.initGroup(this.groups, groupIndexToAddress, key, isNode, i3, i4, this.parent, this.currentSlot);
            this.currentSlotEnd = this.currentSlot;
            int i5 = (isNode ? 1 : 0) + i3 + i4;
            if (i5 > 0) {
                insertSlots(i5, i2);
                Object[] objArr2 = this.slots;
                int i6 = this.currentSlot;
                if (isNode) {
                    objArr2[i6] = aux;
                    i6++;
                }
                if (i3 != 0) {
                    objArr2[i6] = objectKey;
                    i6++;
                }
                if (i4 != 0) {
                    objArr2[i6] = aux;
                    i6++;
                }
                this.currentSlot = i6;
            }
            this.nodeCount = 0;
            i = i2 + 1;
            this.parent = i2;
            this.currentGroup = i;
        } else {
            this.startStack.push(this.parent);
            saveCurrentGroupEnd();
            int i7 = this.currentGroup;
            int groupIndexToAddress2 = groupIndexToAddress(i7);
            if (!Intrinsics.areEqual(aux, Composer.INSTANCE.getEmpty())) {
                if (isNode) {
                    updateNode(aux);
                } else {
                    updateAux(aux);
                }
            }
            this.currentSlot = slotIndex(this.groups, groupIndexToAddress2);
            this.currentSlotEnd = dataIndex(this.groups, groupIndexToAddress(this.currentGroup + 1));
            nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress2);
            this.nodeCount = nodeCount;
            this.parent = i7;
            this.currentGroup = i7 + 1;
            groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress2);
            i = i7 + groupSize;
        }
        this.currentGroupEnd = i;
    }

    public final int endGroup() {
        boolean isNode;
        int groupSize;
        int nodeCount;
        boolean isNode2;
        int nodeCount2;
        int groupSize2;
        boolean z = this.insertCount > 0;
        int i = this.currentGroup;
        int i2 = this.currentGroupEnd;
        int i3 = this.parent;
        int groupIndexToAddress = groupIndexToAddress(i3);
        int i4 = this.nodeCount;
        int i5 = i - i3;
        isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress);
        if (z) {
            SlotTableKt.updateGroupSize(this.groups, groupIndexToAddress, i5);
            SlotTableKt.updateNodeCount(this.groups, groupIndexToAddress, i4);
            this.nodeCount = this.nodeCountStack.pop() + (isNode ? 1 : i4);
            this.parent = parent(this.groups, i3);
        } else {
            if ((i != i2 ? 0 : 1) != 0) {
                groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress);
                nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress);
                SlotTableKt.updateGroupSize(this.groups, groupIndexToAddress, i5);
                SlotTableKt.updateNodeCount(this.groups, groupIndexToAddress, i4);
                int pop = this.startStack.pop();
                restoreCurrentGroupEnd();
                this.parent = pop;
                int parent = parent(this.groups, i3);
                int pop2 = this.nodeCountStack.pop();
                this.nodeCount = pop2;
                if (parent == pop) {
                    this.nodeCount = pop2 + (isNode ? 0 : i4 - nodeCount);
                } else {
                    int i6 = i5 - groupSize;
                    int i7 = isNode ? 0 : i4 - nodeCount;
                    if (i6 != 0 || i7 != 0) {
                        while (parent != 0 && parent != pop && (i7 != 0 || i6 != 0)) {
                            int groupIndexToAddress2 = groupIndexToAddress(parent);
                            if (i6 != 0) {
                                groupSize2 = SlotTableKt.groupSize(this.groups, groupIndexToAddress2);
                                SlotTableKt.updateGroupSize(this.groups, groupIndexToAddress2, groupSize2 + i6);
                            }
                            if (i7 != 0) {
                                int[] iArr = this.groups;
                                nodeCount2 = SlotTableKt.nodeCount(iArr, groupIndexToAddress2);
                                SlotTableKt.updateNodeCount(iArr, groupIndexToAddress2, nodeCount2 + i7);
                            }
                            isNode2 = SlotTableKt.isNode(this.groups, groupIndexToAddress2);
                            if (isNode2) {
                                i7 = 0;
                            }
                            parent = parent(this.groups, parent);
                        }
                    }
                    this.nodeCount += i7;
                }
            } else {
                ComposerKt.composeRuntimeError("Expected to be at the end of a group".toString());
                throw new KotlinNothingValueException();
            }
        }
        return i4;
    }

    public final void bashGroup$runtime_release() {
        startGroup();
        while (!isGroupEnd()) {
            insertParentGroup(-3);
            skipGroup();
        }
        endGroup();
    }

    public final void ensureStarted(int index) {
        if (!(this.insertCount <= 0)) {
            ComposerKt.composeRuntimeError("Cannot call ensureStarted() while inserting".toString());
            throw new KotlinNothingValueException();
        }
        int i = this.parent;
        if (i != index) {
            if (index >= i && index < this.currentGroupEnd) {
                int i2 = this.currentGroup;
                int i3 = this.currentSlot;
                int i4 = this.currentSlotEnd;
                this.currentGroup = index;
                startGroup();
                this.currentGroup = i2;
                this.currentSlot = i3;
                this.currentSlotEnd = i4;
                return;
            }
            ComposerKt.composeRuntimeError(("Started group at " + index + " must be a subgroup of the group at " + i).toString());
            throw new KotlinNothingValueException();
        }
    }

    public final void ensureStarted(Anchor anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        ensureStarted(anchor.toIndexFor(this));
    }

    public final int skipGroup() {
        int groupSize;
        boolean isNode;
        int nodeCount;
        int groupIndexToAddress = groupIndexToAddress(this.currentGroup);
        int i = this.currentGroup;
        groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress);
        int i2 = i + groupSize;
        this.currentGroup = i2;
        this.currentSlot = dataIndex(this.groups, groupIndexToAddress(i2));
        isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress);
        if (isNode) {
            return 1;
        }
        nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress);
        return nodeCount;
    }

    public final boolean removeGroup() {
        if (this.insertCount == 0) {
            int i = this.currentGroup;
            int i2 = this.currentSlot;
            int skipGroup = skipGroup();
            PrioritySet prioritySet = this.pendingRecalculateMarks;
            if (prioritySet != null) {
                while (prioritySet.isNotEmpty() && prioritySet.peek() >= i) {
                    prioritySet.takeMax();
                }
            }
            boolean removeGroups = removeGroups(i, this.currentGroup - i);
            removeSlots(i2, this.currentSlot - i2, i - 1);
            this.currentGroup = i;
            this.currentSlot = i2;
            this.nodeCount -= skipGroup;
            return removeGroups;
        }
        ComposerKt.composeRuntimeError("Cannot remove group while inserting".toString());
        throw new KotlinNothingValueException();
    }

    public final Iterator<Object> groupSlots() {
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(this.currentGroup));
        int[] iArr = this.groups;
        int i = this.currentGroup;
        return new SlotWriter$groupSlots$1(dataIndex, dataIndex(iArr, groupIndexToAddress(i + groupSize(i))), this);
    }

    public final void moveGroup(int offset) {
        int groupSize;
        int groupSize2;
        if (!(this.insertCount == 0)) {
            ComposerKt.composeRuntimeError("Cannot move a group while inserting".toString());
            throw new KotlinNothingValueException();
        }
        if (!(offset >= 0)) {
            ComposerKt.composeRuntimeError("Parameter offset is out of bounds".toString());
            throw new KotlinNothingValueException();
        }
        if (offset == 0) {
            return;
        }
        int i = this.currentGroup;
        int i2 = this.parent;
        int i3 = this.currentGroupEnd;
        int i4 = i;
        for (int i5 = offset; i5 > 0; i5--) {
            groupSize2 = SlotTableKt.groupSize(this.groups, groupIndexToAddress(i4));
            i4 += groupSize2;
            if (!(i4 <= i3)) {
                ComposerKt.composeRuntimeError("Parameter offset is out of bounds".toString());
                throw new KotlinNothingValueException();
            }
        }
        groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress(i4));
        int i6 = this.currentSlot;
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i4));
        int i7 = i4 + groupSize;
        int dataIndex2 = dataIndex(this.groups, groupIndexToAddress(i7));
        int i8 = dataIndex2 - dataIndex;
        insertSlots(i8, Math.max(this.currentGroup - 1, 0));
        insertGroups(groupSize);
        int[] iArr = this.groups;
        int groupIndexToAddress = groupIndexToAddress(i7) * 5;
        ArraysKt.copyInto(iArr, iArr, groupIndexToAddress(i) * 5, groupIndexToAddress, (groupSize * 5) + groupIndexToAddress);
        if (i8 > 0) {
            Object[] objArr = this.slots;
            ArraysKt.copyInto(objArr, objArr, i6, dataIndexToDataAddress(dataIndex + i8), dataIndexToDataAddress(dataIndex2 + i8));
        }
        int i9 = dataIndex + i8;
        int i10 = i9 - i6;
        int i11 = this.slotsGapStart;
        int i12 = this.slotsGapLen;
        int length = this.slots.length;
        int i13 = this.slotsGapOwner;
        int i14 = i + groupSize;
        int i15 = i;
        while (i15 < i14) {
            int groupIndexToAddress2 = groupIndexToAddress(i15);
            int i16 = i11;
            int i17 = i10;
            updateDataIndex(iArr, groupIndexToAddress2, dataIndexToDataAnchor(dataIndex(iArr, groupIndexToAddress2) - i10, i13 < groupIndexToAddress2 ? 0 : i16, i12, length));
            i15++;
            i11 = i16;
            i10 = i17;
        }
        moveAnchors(i7, i, groupSize);
        if (!removeGroups(i7, groupSize)) {
            fixParentAnchorsFor(i2, this.currentGroupEnd, i);
            if (i8 > 0) {
                removeSlots(i9, i8, i7 - 1);
                return;
            }
            return;
        }
        ComposerKt.composeRuntimeError("Unexpectedly removed anchors".toString());
        throw new KotlinNothingValueException();
    }

    /* compiled from: SlotTable.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\fH\u0002¨\u0006\u000f"}, d2 = {"Landroidx/compose/runtime/SlotWriter$Companion;", "", "()V", "moveGroup", "", "Landroidx/compose/runtime/Anchor;", "fromWriter", "Landroidx/compose/runtime/SlotWriter;", "fromIndex", "", "toWriter", "updateFromCursor", "", "updateToCursor", "removeSourceGroup", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        static /* synthetic */ List moveGroup$default(Companion companion, SlotWriter slotWriter, int i, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3, int i2, Object obj) {
            if ((i2 & 32) != 0) {
                z3 = true;
            }
            return companion.moveGroup(slotWriter, i, slotWriter2, z, z2, z3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final List<Anchor> moveGroup(SlotWriter fromWriter, int fromIndex, SlotWriter toWriter, boolean updateFromCursor, boolean updateToCursor, boolean removeSourceGroup) {
            boolean z;
            int locationOf;
            int locationOf2;
            ArrayList emptyList;
            boolean isNode;
            int locationOf3;
            int i;
            int parentAnchor;
            int groupSize = fromWriter.groupSize(fromIndex);
            int i2 = fromIndex + groupSize;
            int dataIndex = fromWriter.dataIndex(fromIndex);
            int dataIndex2 = fromWriter.dataIndex(i2);
            int i3 = dataIndex2 - dataIndex;
            boolean containsAnyGroupMarks = fromWriter.containsAnyGroupMarks(fromIndex);
            toWriter.insertGroups(groupSize);
            toWriter.insertSlots(i3, toWriter.getCurrentGroup());
            if (fromWriter.groupGapStart < i2) {
                fromWriter.moveGroupGapTo(i2);
            }
            if (fromWriter.slotsGapStart < dataIndex2) {
                fromWriter.moveSlotGapTo(dataIndex2, i2);
            }
            int[] iArr = toWriter.groups;
            int currentGroup = toWriter.getCurrentGroup();
            ArraysKt.copyInto(fromWriter.groups, iArr, currentGroup * 5, fromIndex * 5, i2 * 5);
            Object[] objArr = toWriter.slots;
            int i4 = toWriter.currentSlot;
            ArraysKt.copyInto(fromWriter.slots, objArr, i4, dataIndex, dataIndex2);
            int parent = toWriter.getParent();
            SlotTableKt.updateParentAnchor(iArr, currentGroup, parent);
            int i5 = currentGroup - fromIndex;
            int i6 = currentGroup + groupSize;
            int dataIndex3 = i4 - toWriter.dataIndex(iArr, currentGroup);
            int i7 = toWriter.slotsGapOwner;
            int i8 = toWriter.slotsGapLen;
            int length = objArr.length;
            int i9 = i7;
            int i10 = currentGroup;
            while (true) {
                z = 0;
                if (i10 >= i6) {
                    break;
                }
                if (i10 != currentGroup) {
                    parentAnchor = SlotTableKt.parentAnchor(iArr, i10);
                    i = i6;
                    SlotTableKt.updateParentAnchor(iArr, i10, parentAnchor + i5);
                } else {
                    i = i6;
                }
                int i11 = dataIndex3;
                SlotTableKt.updateDataAnchor(iArr, i10, toWriter.dataIndexToDataAnchor(toWriter.dataIndex(iArr, i10) + dataIndex3, i9 >= i10 ? toWriter.slotsGapStart : 0, i8, length));
                if (i10 == i9) {
                    i9++;
                }
                i10++;
                dataIndex3 = i11;
                i6 = i;
            }
            int i12 = i6;
            toWriter.slotsGapOwner = i9;
            locationOf = SlotTableKt.locationOf(fromWriter.anchors, fromIndex, fromWriter.getSize$runtime_release());
            locationOf2 = SlotTableKt.locationOf(fromWriter.anchors, i2, fromWriter.getSize$runtime_release());
            if (locationOf < locationOf2) {
                ArrayList arrayList = fromWriter.anchors;
                ArrayList arrayList2 = new ArrayList(locationOf2 - locationOf);
                for (int i13 = locationOf; i13 < locationOf2; i13++) {
                    Object obj = arrayList.get(i13);
                    Intrinsics.checkNotNullExpressionValue(obj, "sourceAnchors[anchorIndex]");
                    Anchor anchor = (Anchor) obj;
                    anchor.setLocation$runtime_release(anchor.getLocation() + i5);
                    arrayList2.add(anchor);
                }
                locationOf3 = SlotTableKt.locationOf(toWriter.anchors, toWriter.getCurrentGroup(), toWriter.getSize$runtime_release());
                toWriter.anchors.addAll(locationOf3, arrayList2);
                arrayList.subList(locationOf, locationOf2).clear();
                emptyList = arrayList2;
            } else {
                emptyList = CollectionsKt.emptyList();
            }
            int parent2 = fromWriter.parent(fromIndex);
            if (removeSourceGroup) {
                if (!updateFromCursor) {
                    boolean removeGroups = fromWriter.removeGroups(fromIndex, groupSize);
                    fromWriter.removeSlots(dataIndex, i3, fromIndex - 1);
                    z = removeGroups;
                } else {
                    boolean z2 = parent2 >= 0;
                    if (z2) {
                        fromWriter.startGroup();
                        fromWriter.advanceBy(parent2 - fromWriter.getCurrentGroup());
                        fromWriter.startGroup();
                    }
                    fromWriter.advanceBy(fromIndex - fromWriter.getCurrentGroup());
                    boolean removeGroup = fromWriter.removeGroup();
                    if (z2) {
                        fromWriter.skipToGroupEnd();
                        fromWriter.endGroup();
                        fromWriter.skipToGroupEnd();
                        fromWriter.endGroup();
                    }
                    z = removeGroup;
                }
            }
            if ((!z) != 0) {
                int i14 = toWriter.nodeCount;
                isNode = SlotTableKt.isNode(iArr, currentGroup);
                toWriter.nodeCount = i14 + (isNode ? 1 : SlotTableKt.nodeCount(iArr, currentGroup));
                if (updateToCursor) {
                    toWriter.currentGroup = i12;
                    toWriter.currentSlot = i4 + i3;
                }
                if (containsAnyGroupMarks) {
                    toWriter.updateContainsMark(parent);
                }
                return emptyList;
            }
            ComposerKt.composeRuntimeError("Unexpectedly removed anchors".toString());
            throw new KotlinNothingValueException();
        }
    }

    public final List<Anchor> moveTo(Anchor anchor, int offset, SlotWriter writer) {
        int groupSize;
        boolean isNode;
        int nodeCount;
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(writer, "writer");
        ComposerKt.runtimeCheck(writer.insertCount > 0);
        ComposerKt.runtimeCheck(this.insertCount == 0);
        ComposerKt.runtimeCheck(anchor.getValid());
        int anchorIndex = anchorIndex(anchor) + offset;
        int i = this.currentGroup;
        ComposerKt.runtimeCheck(i <= anchorIndex && anchorIndex < this.currentGroupEnd);
        int parent = parent(anchorIndex);
        int groupSize2 = groupSize(anchorIndex);
        int nodeCount2 = isNode(anchorIndex) ? 1 : nodeCount(anchorIndex);
        List<Anchor> moveGroup$default = Companion.moveGroup$default(INSTANCE, this, anchorIndex, writer, false, false, false, 32, null);
        updateContainsMark(parent);
        boolean z = nodeCount2 > 0;
        while (parent >= i) {
            int groupIndexToAddress = groupIndexToAddress(parent);
            int[] iArr = this.groups;
            groupSize = SlotTableKt.groupSize(iArr, groupIndexToAddress);
            SlotTableKt.updateGroupSize(iArr, groupIndexToAddress, groupSize - groupSize2);
            if (z) {
                isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress);
                if (isNode) {
                    z = false;
                } else {
                    int[] iArr2 = this.groups;
                    nodeCount = SlotTableKt.nodeCount(iArr2, groupIndexToAddress);
                    SlotTableKt.updateNodeCount(iArr2, groupIndexToAddress, nodeCount - nodeCount2);
                }
            }
            parent = parent(parent);
        }
        if (z) {
            ComposerKt.runtimeCheck(this.nodeCount >= nodeCount2);
            this.nodeCount -= nodeCount2;
        }
        return moveGroup$default;
    }

    public static /* synthetic */ List moveFrom$default(SlotWriter slotWriter, SlotTable slotTable, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        return slotWriter.moveFrom(slotTable, i, z);
    }

    public final List<Anchor> moveFrom(SlotTable table, int index, boolean removeSourceGroup) {
        int groupSize;
        Intrinsics.checkNotNullParameter(table, "table");
        ComposerKt.runtimeCheck(this.insertCount > 0);
        if (index == 0 && this.currentGroup == 0 && this.table.getGroupsSize() == 0) {
            groupSize = SlotTableKt.groupSize(table.getGroups(), index);
            if (groupSize == table.getGroupsSize()) {
                int[] iArr = this.groups;
                Object[] objArr = this.slots;
                ArrayList<Anchor> arrayList = this.anchors;
                int[] groups = table.getGroups();
                int groupsSize = table.getGroupsSize();
                Object[] slots = table.getSlots();
                int slotsSize = table.getSlotsSize();
                this.groups = groups;
                this.slots = slots;
                this.anchors = table.getAnchors$runtime_release();
                this.groupGapStart = groupsSize;
                this.groupGapLen = (groups.length / 5) - groupsSize;
                this.slotsGapStart = slotsSize;
                this.slotsGapLen = slots.length - slotsSize;
                this.slotsGapOwner = groupsSize;
                table.setTo$runtime_release(iArr, 0, objArr, 0, arrayList);
                return this.anchors;
            }
        }
        SlotWriter openWriter = table.openWriter();
        try {
            return INSTANCE.moveGroup(openWriter, index, this, true, true, removeSourceGroup);
        } finally {
            openWriter.close();
        }
    }

    public final void insertParentGroup(int key) {
        int dataAnchor;
        int nodeCount;
        int groupSize;
        int i = 0;
        if (this.insertCount == 0) {
            if (isGroupEnd()) {
                beginInsert();
                startGroup(key);
                endGroup();
                endInsert();
                return;
            }
            int i2 = this.currentGroup;
            int parent = parent(this.groups, i2);
            int groupSize2 = parent + groupSize(parent);
            int i3 = groupSize2 - i2;
            int i4 = i2;
            while (i4 < groupSize2) {
                int groupIndexToAddress = groupIndexToAddress(i4);
                nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress);
                i += nodeCount;
                groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress);
                i4 += groupSize;
            }
            dataAnchor = SlotTableKt.dataAnchor(this.groups, groupIndexToAddress(i2));
            beginInsert();
            insertGroups(1);
            endInsert();
            int groupIndexToAddress2 = groupIndexToAddress(i2);
            SlotTableKt.initGroup(this.groups, groupIndexToAddress2, key, false, false, false, parent, dataAnchor);
            SlotTableKt.updateGroupSize(this.groups, groupIndexToAddress2, i3 + 1);
            SlotTableKt.updateNodeCount(this.groups, groupIndexToAddress2, i);
            addToGroupSizeAlongSpine(groupIndexToAddress(parent), 1);
            fixParentAnchorsFor(parent, groupSize2, i2);
            this.currentGroup = groupSize2;
            return;
        }
        ComposerKt.composeRuntimeError("Writer cannot be inserting".toString());
        throw new KotlinNothingValueException();
    }

    public final void addToGroupSizeAlongSpine(int address, int amount) {
        int groupSize;
        int parentAnchor;
        while (address > 0) {
            int[] iArr = this.groups;
            groupSize = SlotTableKt.groupSize(iArr, address);
            SlotTableKt.updateGroupSize(iArr, address, groupSize + amount);
            parentAnchor = SlotTableKt.parentAnchor(this.groups, address);
            address = groupIndexToAddress(parentAnchorToIndex(parentAnchor));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (groupSize(r12.currentGroup + r13) == 1) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<androidx.compose.runtime.Anchor> moveIntoGroupFrom(int r13, androidx.compose.runtime.SlotTable r14, int r15) {
        /*
            r12 = this;
            java.lang.String r0 = "table"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            int r0 = r12.insertCount
            if (r0 > 0) goto L15
            int r0 = r12.currentGroup
            int r0 = r0 + r13
            int r0 = r12.groupSize(r0)
            r1 = 1
            if (r0 != r1) goto L15
            goto L16
        L15:
            r1 = 0
        L16:
            androidx.compose.runtime.ComposerKt.runtimeCheck(r1)
            int r0 = r12.currentGroup
            int r1 = r12.currentSlot
            int r2 = r12.currentSlotEnd
            r12.advanceBy(r13)
            r12.startGroup()
            r12.beginInsert()
            androidx.compose.runtime.SlotWriter r13 = r14.openWriter()
            androidx.compose.runtime.SlotWriter$Companion r3 = androidx.compose.runtime.SlotWriter.INSTANCE     // Catch: java.lang.Throwable -> L4b
            r7 = 0
            r8 = 1
            r9 = 0
            r10 = 32
            r11 = 0
            r4 = r13
            r5 = r15
            r6 = r12
            java.util.List r14 = androidx.compose.runtime.SlotWriter.Companion.moveGroup$default(r3, r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L4b
            r13.close()
            r12.endInsert()
            r12.endGroup()
            r12.currentGroup = r0
            r12.currentSlot = r1
            r12.currentSlotEnd = r2
            return r14
        L4b:
            r12 = move-exception
            r13.close()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SlotWriter.moveIntoGroupFrom(int, androidx.compose.runtime.SlotTable, int):java.util.List");
    }

    public static /* synthetic */ Anchor anchor$default(SlotWriter slotWriter, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = slotWriter.currentGroup;
        }
        return slotWriter.anchor(i);
    }

    public final Anchor anchor(int index) {
        ArrayList<Anchor> arrayList = this.anchors;
        int search = SlotTableKt.search(arrayList, index, getSize$runtime_release());
        if (search < 0) {
            if (index > this.groupGapStart) {
                index = -(getSize$runtime_release() - index);
            }
            Anchor anchor = new Anchor(index);
            arrayList.add(-(search + 1), anchor);
            return anchor;
        }
        Anchor anchor2 = arrayList.get(search);
        Intrinsics.checkNotNullExpressionValue(anchor2, "get(location)");
        return anchor2;
    }

    public static /* synthetic */ void markGroup$default(SlotWriter slotWriter, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = slotWriter.parent;
        }
        slotWriter.markGroup(i);
    }

    public final void markGroup(int group) {
        boolean hasMark;
        boolean containsMark;
        int groupIndexToAddress = groupIndexToAddress(group);
        hasMark = SlotTableKt.hasMark(this.groups, groupIndexToAddress);
        if (hasMark) {
            return;
        }
        SlotTableKt.updateMark(this.groups, groupIndexToAddress, true);
        containsMark = SlotTableKt.containsMark(this.groups, groupIndexToAddress);
        if (containsMark) {
            return;
        }
        updateContainsMark(parent(group));
    }

    private final boolean containsGroupMark(int group) {
        boolean containsMark;
        if (group >= 0) {
            containsMark = SlotTableKt.containsMark(this.groups, groupIndexToAddress(group));
            if (containsMark) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean containsAnyGroupMarks(int group) {
        boolean containsAnyMark;
        if (group >= 0) {
            containsAnyMark = SlotTableKt.containsAnyMark(this.groups, groupIndexToAddress(group));
            if (containsAnyMark) {
                return true;
            }
        }
        return false;
    }

    private final void recalculateMarks() {
        PrioritySet prioritySet = this.pendingRecalculateMarks;
        if (prioritySet != null) {
            while (prioritySet.isNotEmpty()) {
                updateContainsMarkNow(prioritySet.takeMax(), prioritySet);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void updateContainsMark(int group) {
        if (group >= 0) {
            PrioritySet prioritySet = this.pendingRecalculateMarks;
            if (prioritySet == null) {
                prioritySet = new PrioritySet(null, 1, 0 == true ? 1 : 0);
                this.pendingRecalculateMarks = prioritySet;
            }
            prioritySet.add(group);
        }
    }

    private final void updateContainsMarkNow(int group, PrioritySet set) {
        boolean containsMark;
        int groupIndexToAddress = groupIndexToAddress(group);
        boolean childContainsAnyMarks = childContainsAnyMarks(group);
        containsMark = SlotTableKt.containsMark(this.groups, groupIndexToAddress);
        if (containsMark != childContainsAnyMarks) {
            SlotTableKt.updateContainsMark(this.groups, groupIndexToAddress, childContainsAnyMarks);
            int parent = parent(group);
            if (parent >= 0) {
                set.add(parent);
            }
        }
    }

    private final boolean childContainsAnyMarks(int group) {
        boolean containsAnyMark;
        int i = group + 1;
        int groupSize = group + groupSize(group);
        while (i < groupSize) {
            containsAnyMark = SlotTableKt.containsAnyMark(this.groups, groupIndexToAddress(i));
            if (containsAnyMark) {
                return true;
            }
            i += groupSize(i);
        }
        return false;
    }

    public final int anchorIndex(Anchor anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        int location = anchor.getLocation();
        return location < 0 ? location + getSize$runtime_release() : location;
    }

    public String toString() {
        return "SlotWriter(current = " + this.currentGroup + " end=" + this.currentGroupEnd + " size = " + getSize$runtime_release() + " gap=" + this.groupGapStart + '-' + (this.groupGapStart + this.groupGapLen) + ')';
    }

    private final void saveCurrentGroupEnd() {
        this.endStack.push((getCapacity() - this.groupGapLen) - this.currentGroupEnd);
    }

    private final int restoreCurrentGroupEnd() {
        int capacity = (getCapacity() - this.groupGapLen) - this.endStack.pop();
        this.currentGroupEnd = capacity;
        return capacity;
    }

    private final void fixParentAnchorsFor(int parent, int endGroup, int firstChild) {
        int groupSize;
        int parentIndexToAnchor = parentIndexToAnchor(parent, this.groupGapStart);
        while (firstChild < endGroup) {
            SlotTableKt.updateParentAnchor(this.groups, groupIndexToAddress(firstChild), parentIndexToAnchor);
            groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress(firstChild));
            int i = groupSize + firstChild;
            fixParentAnchorsFor(firstChild, i, firstChild + 1);
            firstChild = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void moveGroupGapTo(int index) {
        int parentAnchor;
        int i = this.groupGapLen;
        int i2 = this.groupGapStart;
        if (i2 != index) {
            if (!this.anchors.isEmpty()) {
                updateAnchors(i2, index);
            }
            if (i > 0) {
                int[] iArr = this.groups;
                int i3 = index * 5;
                int i4 = i * 5;
                int i5 = i2 * 5;
                if (index < i2) {
                    ArraysKt.copyInto(iArr, iArr, i4 + i3, i3, i5);
                } else {
                    ArraysKt.copyInto(iArr, iArr, i5, i5 + i4, i3 + i4);
                }
            }
            if (index < i2) {
                i2 = index + i;
            }
            int capacity = getCapacity();
            ComposerKt.runtimeCheck(i2 < capacity);
            while (i2 < capacity) {
                parentAnchor = SlotTableKt.parentAnchor(this.groups, i2);
                int parentIndexToAnchor = parentIndexToAnchor(parentAnchorToIndex(parentAnchor), index);
                if (parentIndexToAnchor != parentAnchor) {
                    SlotTableKt.updateParentAnchor(this.groups, i2, parentIndexToAnchor);
                }
                i2++;
                if (i2 == index) {
                    i2 += i;
                }
            }
        }
        this.groupGapStart = index;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void moveSlotGapTo(int index, int group) {
        int dataAnchor;
        int dataAnchor2;
        int i = this.slotsGapLen;
        int i2 = this.slotsGapStart;
        int i3 = this.slotsGapOwner;
        if (i2 != index) {
            Object[] objArr = this.slots;
            if (index < i2) {
                ArraysKt.copyInto(objArr, objArr, index + i, index, i2);
            } else {
                ArraysKt.copyInto(objArr, objArr, i2, i2 + i, index + i);
            }
        }
        int min = Math.min(group + 1, getSize$runtime_release());
        if (i3 != min) {
            int length = this.slots.length - i;
            if (min < i3) {
                int groupIndexToAddress = groupIndexToAddress(min);
                int groupIndexToAddress2 = groupIndexToAddress(i3);
                int i4 = this.groupGapStart;
                while (groupIndexToAddress < groupIndexToAddress2) {
                    dataAnchor2 = SlotTableKt.dataAnchor(this.groups, groupIndexToAddress);
                    if (dataAnchor2 >= 0) {
                        SlotTableKt.updateDataAnchor(this.groups, groupIndexToAddress, -((length - dataAnchor2) + 1));
                        groupIndexToAddress++;
                        if (groupIndexToAddress == i4) {
                            groupIndexToAddress += this.groupGapLen;
                        }
                    } else {
                        ComposerKt.composeRuntimeError("Unexpected anchor value, expected a positive anchor".toString());
                        throw new KotlinNothingValueException();
                    }
                }
            } else {
                int groupIndexToAddress3 = groupIndexToAddress(i3);
                int groupIndexToAddress4 = groupIndexToAddress(min);
                while (groupIndexToAddress3 < groupIndexToAddress4) {
                    dataAnchor = SlotTableKt.dataAnchor(this.groups, groupIndexToAddress3);
                    if (dataAnchor < 0) {
                        SlotTableKt.updateDataAnchor(this.groups, groupIndexToAddress3, dataAnchor + length + 1);
                        groupIndexToAddress3++;
                        if (groupIndexToAddress3 == this.groupGapStart) {
                            groupIndexToAddress3 += this.groupGapLen;
                        }
                    } else {
                        ComposerKt.composeRuntimeError("Unexpected anchor value, expected a negative anchor".toString());
                        throw new KotlinNothingValueException();
                    }
                }
            }
            this.slotsGapOwner = min;
        }
        this.slotsGapStart = index;
    }

    private final void clearSlotGap() {
        int i = this.slotsGapStart;
        ArraysKt.fill(this.slots, (Object) null, i, this.slotsGapLen + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertGroups(int size) {
        if (size > 0) {
            int i = this.currentGroup;
            moveGroupGapTo(i);
            int i2 = this.groupGapStart;
            int i3 = this.groupGapLen;
            int[] iArr = this.groups;
            int length = iArr.length / 5;
            int i4 = length - i3;
            if (i3 < size) {
                int max = Math.max(Math.max(length * 2, i4 + size), 32);
                int[] iArr2 = new int[max * 5];
                int i5 = max - i4;
                ArraysKt.copyInto(iArr, iArr2, 0, 0, i2 * 5);
                ArraysKt.copyInto(iArr, iArr2, (i2 + i5) * 5, (i3 + i2) * 5, length * 5);
                this.groups = iArr2;
                i3 = i5;
            }
            int i6 = this.currentGroupEnd;
            if (i6 >= i2) {
                this.currentGroupEnd = i6 + size;
            }
            int i7 = i2 + size;
            this.groupGapStart = i7;
            this.groupGapLen = i3 - size;
            int dataIndexToDataAnchor = dataIndexToDataAnchor(i4 > 0 ? dataIndex(i + size) : 0, this.slotsGapOwner >= i2 ? this.slotsGapStart : 0, this.slotsGapLen, this.slots.length);
            for (int i8 = i2; i8 < i7; i8++) {
                SlotTableKt.updateDataAnchor(this.groups, i8, dataIndexToDataAnchor);
            }
            int i9 = this.slotsGapOwner;
            if (i9 >= i2) {
                this.slotsGapOwner = i9 + size;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertSlots(int size, int group) {
        if (size > 0) {
            moveSlotGapTo(this.currentSlot, group);
            int i = this.slotsGapStart;
            int i2 = this.slotsGapLen;
            if (i2 < size) {
                Object[] objArr = this.slots;
                int length = objArr.length;
                int i3 = length - i2;
                int max = Math.max(Math.max(length * 2, i3 + size), 32);
                Object[] objArr2 = new Object[max];
                for (int i4 = 0; i4 < max; i4++) {
                    objArr2[i4] = null;
                }
                int i5 = max - i3;
                ArraysKt.copyInto(objArr, objArr2, 0, 0, i);
                ArraysKt.copyInto(objArr, objArr2, i + i5, i2 + i, length);
                this.slots = objArr2;
                i2 = i5;
            }
            int i6 = this.currentSlotEnd;
            if (i6 >= i) {
                this.currentSlotEnd = i6 + size;
            }
            this.slotsGapStart = i + size;
            this.slotsGapLen = i2 - size;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean removeGroups(int start, int len) {
        if (len > 0) {
            ArrayList<Anchor> arrayList = this.anchors;
            moveGroupGapTo(start);
            r0 = arrayList.isEmpty() ^ true ? removeAnchors(start, len) : false;
            this.groupGapStart = start;
            this.groupGapLen += len;
            int i = this.slotsGapOwner;
            if (i > start) {
                this.slotsGapOwner = Math.max(start, i - len);
            }
            int i2 = this.currentGroupEnd;
            if (i2 >= this.groupGapStart) {
                this.currentGroupEnd = i2 - len;
            }
            if (containsGroupMark(this.parent)) {
                updateContainsMark(this.parent);
            }
        }
        return r0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeSlots(int start, int len, int group) {
        if (len > 0) {
            int i = this.slotsGapLen;
            int i2 = start + len;
            moveSlotGapTo(i2, group);
            this.slotsGapStart = start;
            this.slotsGapLen = i + len;
            ArraysKt.fill(this.slots, (Object) null, start, i2);
            int i3 = this.currentSlotEnd;
            if (i3 >= start) {
                this.currentSlotEnd = i3 - len;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void updateNodeOfGroup(int r4, java.lang.Object r5) {
        /*
            r3 = this;
            int r0 = r3.groupIndexToAddress(r4)
            int[] r1 = r3.groups
            int r2 = r1.length
            if (r0 >= r2) goto L11
            boolean r1 = androidx.compose.runtime.SlotTableKt.access$isNode(r1, r0)
            if (r1 == 0) goto L11
            r1 = 1
            goto L12
        L11:
            r1 = 0
        L12:
            if (r1 == 0) goto L23
            java.lang.Object[] r4 = r3.slots
            int[] r1 = r3.groups
            int r0 = r3.nodeIndex(r1, r0)
            int r3 = r3.dataIndexToDataAddress(r0)
            r4[r3] = r5
            return
        L23:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r5 = "Updating the node of a group at "
            r3.<init>(r5)
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = " that was not created with as a node group"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            java.lang.String r3 = r3.toString()
            androidx.compose.runtime.ComposerKt.composeRuntimeError(r3)
            kotlin.KotlinNothingValueException r3 = new kotlin.KotlinNothingValueException
            r3.<init>()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SlotWriter.updateNodeOfGroup(int, java.lang.Object):void");
    }

    private final void updateAnchors(int previousGapStart, int newGapStart) {
        int locationOf;
        int locationOf2;
        int i;
        int capacity = getCapacity() - this.groupGapLen;
        if (previousGapStart < newGapStart) {
            for (locationOf2 = SlotTableKt.locationOf(this.anchors, previousGapStart, capacity); locationOf2 < this.anchors.size(); locationOf2++) {
                Anchor anchor = this.anchors.get(locationOf2);
                Intrinsics.checkNotNullExpressionValue(anchor, "anchors[index]");
                Anchor anchor2 = anchor;
                int location = anchor2.getLocation();
                if (location >= 0 || (i = location + capacity) >= newGapStart) {
                    return;
                }
                anchor2.setLocation$runtime_release(i);
            }
            return;
        }
        for (locationOf = SlotTableKt.locationOf(this.anchors, newGapStart, capacity); locationOf < this.anchors.size(); locationOf++) {
            Anchor anchor3 = this.anchors.get(locationOf);
            Intrinsics.checkNotNullExpressionValue(anchor3, "anchors[index]");
            Anchor anchor4 = anchor3;
            int location2 = anchor4.getLocation();
            if (location2 < 0) {
                return;
            }
            anchor4.setLocation$runtime_release(-(capacity - location2));
        }
    }

    private final boolean removeAnchors(int gapStart, int size) {
        int locationOf;
        int i = size + gapStart;
        locationOf = SlotTableKt.locationOf(this.anchors, i, getCapacity() - this.groupGapLen);
        if (locationOf >= this.anchors.size()) {
            locationOf--;
        }
        int i2 = locationOf + 1;
        int i3 = 0;
        while (locationOf >= 0) {
            Anchor anchor = this.anchors.get(locationOf);
            Intrinsics.checkNotNullExpressionValue(anchor, "anchors[index]");
            Anchor anchor2 = anchor;
            int anchorIndex = anchorIndex(anchor2);
            if (anchorIndex < gapStart) {
                break;
            }
            if (anchorIndex < i) {
                anchor2.setLocation$runtime_release(Integer.MIN_VALUE);
                if (i3 == 0) {
                    i3 = locationOf + 1;
                }
                i2 = locationOf;
            }
            locationOf--;
        }
        boolean z = i2 < i3;
        if (z) {
            this.anchors.subList(i2, i3).clear();
        }
        return z;
    }

    private final void moveAnchors(int originalLocation, int newLocation, int size) {
        int locationOf;
        int locationOf2;
        int i = size + originalLocation;
        int size$runtime_release = getSize$runtime_release();
        locationOf = SlotTableKt.locationOf(this.anchors, originalLocation, size$runtime_release);
        ArrayList arrayList = new ArrayList();
        if (locationOf >= 0) {
            while (locationOf < this.anchors.size()) {
                Anchor anchor = this.anchors.get(locationOf);
                Intrinsics.checkNotNullExpressionValue(anchor, "anchors[index]");
                Anchor anchor2 = anchor;
                int anchorIndex = anchorIndex(anchor2);
                if (anchorIndex < originalLocation || anchorIndex >= i) {
                    break;
                }
                arrayList.add(anchor2);
                this.anchors.remove(locationOf);
            }
        }
        int i2 = newLocation - originalLocation;
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Anchor anchor3 = (Anchor) arrayList.get(i3);
            int anchorIndex2 = anchorIndex(anchor3) + i2;
            if (anchorIndex2 >= this.groupGapStart) {
                anchor3.setLocation$runtime_release(-(size$runtime_release - anchorIndex2));
            } else {
                anchor3.setLocation$runtime_release(anchorIndex2);
            }
            locationOf2 = SlotTableKt.locationOf(this.anchors, anchorIndex2, size$runtime_release);
            this.anchors.add(locationOf2, anchor3);
        }
    }

    public final String groupsAsString() {
        StringBuilder sb = new StringBuilder();
        int size$runtime_release = getSize$runtime_release();
        for (int i = 0; i < size$runtime_release; i++) {
            groupAsString(sb, i);
            sb.append('\n');
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    private final void groupAsString(StringBuilder sb, int i) {
        int groupSize;
        int parentAnchor;
        int key;
        int nodeCount;
        int dataAnchor;
        int parentAnchor2;
        boolean isNode;
        int groupIndexToAddress = groupIndexToAddress(i);
        sb.append("Group(");
        if (i < 10) {
            sb.append(' ');
        }
        if (i < 100) {
            sb.append(' ');
        }
        if (i < 1000) {
            sb.append(' ');
        }
        sb.append(i);
        if (groupIndexToAddress != i) {
            sb.append("(");
            sb.append(groupIndexToAddress);
            sb.append(")");
        }
        sb.append('#');
        groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress);
        sb.append(groupSize);
        boolean groupAsString$isStarted = groupAsString$isStarted(this, i);
        if (groupAsString$isStarted) {
            sb.append('?');
        }
        sb.append('^');
        parentAnchor = SlotTableKt.parentAnchor(this.groups, groupIndexToAddress);
        sb.append(parentAnchorToIndex(parentAnchor));
        sb.append(": key=");
        key = SlotTableKt.key(this.groups, groupIndexToAddress);
        sb.append(key);
        sb.append(", nodes=");
        nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress);
        sb.append(nodeCount);
        if (groupAsString$isStarted) {
            sb.append('?');
        }
        sb.append(", dataAnchor=");
        dataAnchor = SlotTableKt.dataAnchor(this.groups, groupIndexToAddress);
        sb.append(dataAnchor);
        sb.append(", parentAnchor=");
        parentAnchor2 = SlotTableKt.parentAnchor(this.groups, groupIndexToAddress);
        sb.append(parentAnchor2);
        isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress);
        if (isNode) {
            sb.append(", node=" + this.slots[dataIndexToDataAddress(nodeIndex(this.groups, groupIndexToAddress))]);
        }
        int slotIndex = slotIndex(this.groups, groupIndexToAddress);
        int dataIndex = dataIndex(this.groups, groupIndexToAddress + 1);
        if (dataIndex > slotIndex) {
            sb.append(", [");
            for (int i2 = slotIndex; i2 < dataIndex; i2++) {
                if (i2 != slotIndex) {
                    sb.append(", ");
                }
                sb.append(String.valueOf(this.slots[dataIndexToDataAddress(i2)]));
            }
            sb.append(']');
        }
        sb.append(")");
    }

    private static final boolean groupAsString$isStarted(SlotWriter slotWriter, int i) {
        return i < slotWriter.currentGroup && (i == slotWriter.parent || slotWriter.startStack.indexOf(i) >= 0 || groupAsString$isStarted(slotWriter, slotWriter.parent(i)));
    }

    public final void verifyDataAnchors$runtime_release() {
        int dataAnchor;
        int i = this.slotsGapOwner;
        int length = this.slots.length - this.slotsGapLen;
        int size$runtime_release = getSize$runtime_release();
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (i2 < size$runtime_release) {
            int groupIndexToAddress = groupIndexToAddress(i2);
            dataAnchor = SlotTableKt.dataAnchor(this.groups, groupIndexToAddress);
            int dataIndex = dataIndex(this.groups, groupIndexToAddress);
            if (dataIndex < i3) {
                throw new IllegalStateException(("Data index out of order at " + i2 + ", previous = " + i3 + ", current = " + dataIndex).toString());
            }
            if (dataIndex > length) {
                throw new IllegalStateException(("Data index, " + dataIndex + ", out of bound at " + i2).toString());
            }
            if (dataAnchor < 0 && !z) {
                if (i != i2) {
                    throw new IllegalStateException(("Expected the slot gap owner to be " + i + " found gap at " + i2).toString());
                }
                z = true;
            }
            i2++;
            i3 = dataIndex;
        }
    }

    public final void verifyParentAnchors$runtime_release() {
        int parentAnchor;
        int parentAnchor2;
        int i = this.groupGapStart;
        int i2 = this.groupGapLen;
        int capacity = getCapacity();
        for (int i3 = 0; i3 < i; i3++) {
            parentAnchor2 = SlotTableKt.parentAnchor(this.groups, i3);
            if (parentAnchor2 <= -2) {
                throw new IllegalStateException(("Expected a start relative anchor at " + i3).toString());
            }
        }
        for (int i4 = i2 + i; i4 < capacity; i4++) {
            parentAnchor = SlotTableKt.parentAnchor(this.groups, i4);
            if (parentAnchorToIndex(parentAnchor) < i) {
                if (parentAnchor <= -2) {
                    throw new IllegalStateException(("Expected a start relative anchor at " + i4).toString());
                }
            } else if (parentAnchor > -2) {
                throw new IllegalStateException(("Expected an end relative anchor at " + i4).toString());
            }
        }
    }

    public final int getSize$runtime_release() {
        return getCapacity() - this.groupGapLen;
    }

    private final int getCapacity() {
        return this.groups.length / 5;
    }

    private final int parent(int[] iArr, int i) {
        int parentAnchor;
        parentAnchor = SlotTableKt.parentAnchor(iArr, groupIndexToAddress(i));
        return parentAnchorToIndex(parentAnchor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndex(int index) {
        return dataIndex(this.groups, groupIndexToAddress(index));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndex(int[] iArr, int i) {
        int dataAnchor;
        if (i >= getCapacity()) {
            return this.slots.length - this.slotsGapLen;
        }
        dataAnchor = SlotTableKt.dataAnchor(iArr, i);
        return dataAnchorToDataIndex(dataAnchor, this.slotsGapLen, this.slots.length);
    }

    private final int slotIndex(int[] iArr, int i) {
        int slotAnchor;
        if (i >= getCapacity()) {
            return this.slots.length - this.slotsGapLen;
        }
        slotAnchor = SlotTableKt.slotAnchor(iArr, i);
        return dataAnchorToDataIndex(slotAnchor, this.slotsGapLen, this.slots.length);
    }

    private final void updateDataIndex(int[] iArr, int i, int i2) {
        SlotTableKt.updateDataAnchor(iArr, i, dataIndexToDataAnchor(i2, this.slotsGapStart, this.slotsGapLen, this.slots.length));
    }

    private final int nodeIndex(int[] iArr, int i) {
        return dataIndex(iArr, i);
    }

    private final int auxIndex(int[] iArr, int i) {
        int groupInfo;
        int countOneBits;
        int dataIndex = dataIndex(iArr, i);
        groupInfo = SlotTableKt.groupInfo(iArr, i);
        countOneBits = SlotTableKt.countOneBits(groupInfo >> 29);
        return dataIndex + countOneBits;
    }

    private final List<Integer> dataIndexes(int[] iArr) {
        List dataAnchors$default = SlotTableKt.dataAnchors$default(this.groups, 0, 1, null);
        List plus = CollectionsKt.plus((Collection) CollectionsKt.slice(dataAnchors$default, RangesKt.until(0, this.groupGapStart)), (Iterable) CollectionsKt.slice(dataAnchors$default, RangesKt.until(this.groupGapStart + this.groupGapLen, iArr.length / 5)));
        ArrayList arrayList = new ArrayList(plus.size());
        int size = plus.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(Integer.valueOf(dataAnchorToDataIndex(((Number) plus.get(i)).intValue(), this.slotsGapLen, this.slots.length)));
        }
        return arrayList;
    }

    private final List<Integer> keys() {
        List keys$default = SlotTableKt.keys$default(this.groups, 0, 1, null);
        ArrayList arrayList = new ArrayList(keys$default.size());
        int size = keys$default.size();
        for (int i = 0; i < size; i++) {
            Object obj = keys$default.get(i);
            ((Number) obj).intValue();
            int i2 = this.groupGapStart;
            if (i < i2 || i >= i2 + this.groupGapLen) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final int parentIndexToAnchor(int index, int gapStart) {
        return index < gapStart ? index : -((getSize$runtime_release() - index) + 2);
    }

    private final int parentAnchorToIndex(int index) {
        return index > -2 ? index : getSize$runtime_release() + index + 2;
    }
}
