package androidx.compose.runtime;

import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.protocol.MetricSummary;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composer.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0006\u0010 \u001a\u00020\u00062\b\u0010!\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0004J\u000e\u0010$\u001a\u00020%2\u0006\u0010#\u001a\u00020\u0004J\u0016\u0010&\u001a\u00020'2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0006J\u001e\u0010)\u001a\u00020'2\u0006\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0006J\u0016\u0010-\u001a\u00020'2\u0006\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0006J\u000e\u0010.\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0004J\u0016\u0010/\u001a\u00020%2\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006J\u000e\u00102\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0004R\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u000ej\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012RW\u0010\u0013\u001a>\u0012\u0004\u0012\u00020\u0001\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00040\u0014j\b\u0012\u0004\u0012\u00020\u0004`\u00150\u000ej\u001e\u0012\u0004\u0012\u00020\u0001\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00040\u0014j\b\u0012\u0004\u0012\u00020\u0004`\u0015`\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\nR\u0017\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0012R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Landroidx/compose/runtime/Pending;", "", "keyInfos", "", "Landroidx/compose/runtime/KeyInfo;", SpellCheckPlugin.START_INDEX_KEY, "", "(Ljava/util/List;I)V", "groupIndex", "getGroupIndex", "()I", "setGroupIndex", "(I)V", "groupInfos", "Ljava/util/HashMap;", "Landroidx/compose/runtime/GroupInfo;", "Lkotlin/collections/HashMap;", "getKeyInfos", "()Ljava/util/List;", "keyMap", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "getKeyMap", "()Ljava/util/HashMap;", "keyMap$delegate", "Lkotlin/Lazy;", "getStartIndex", "used", "", "getUsed", "usedKeys", "getNext", "key", "dataKey", "nodePositionOf", "keyInfo", "recordUsed", "", "registerInsert", "", "insertIndex", "registerMoveNode", "from", "to", MetricSummary.JsonKeys.COUNT, "registerMoveSlot", "slotPositionOf", "updateNodeCount", "group", "newCount", "updatedNodeCountOf", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class Pending {
    private int groupIndex;
    private final HashMap<Integer, GroupInfo> groupInfos;
    private final List<KeyInfo> keyInfos;

    /* renamed from: keyMap$delegate, reason: from kotlin metadata */
    private final Lazy keyMap;
    private final int startIndex;
    private final List<KeyInfo> usedKeys;

    public final int getGroupIndex() {
        return this.groupIndex;
    }

    public final List<KeyInfo> getKeyInfos() {
        return this.keyInfos;
    }

    public final int getStartIndex() {
        return this.startIndex;
    }

    public final List<KeyInfo> getUsed() {
        return this.usedKeys;
    }

    public final void setGroupIndex(int i) {
        this.groupIndex = i;
    }

    public Pending(List<KeyInfo> keyInfos, int i) {
        Intrinsics.checkNotNullParameter(keyInfos, "keyInfos");
        this.keyInfos = keyInfos;
        this.startIndex = i;
        if (i < 0) {
            throw new IllegalArgumentException("Invalid start index".toString());
        }
        this.usedKeys = new ArrayList();
        HashMap<Integer, GroupInfo> hashMap = new HashMap<>();
        int size = this.keyInfos.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            KeyInfo keyInfo = this.keyInfos.get(i3);
            hashMap.put(Integer.valueOf(keyInfo.getLocation()), new GroupInfo(i3, i2, keyInfo.getNodes()));
            i2 += keyInfo.getNodes();
        }
        this.groupInfos = hashMap;
        this.keyMap = LazyKt.lazy(new Function0<HashMap<Object, LinkedHashSet<KeyInfo>>>() { // from class: androidx.compose.runtime.Pending$keyMap$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final HashMap<Object, LinkedHashSet<KeyInfo>> invoke() {
                HashMap<Object, LinkedHashSet<KeyInfo>> multiMap;
                Object joinedKey;
                multiMap = ComposerKt.multiMap();
                Pending pending = Pending.this;
                int size2 = pending.getKeyInfos().size();
                for (int i4 = 0; i4 < size2; i4++) {
                    KeyInfo keyInfo2 = pending.getKeyInfos().get(i4);
                    joinedKey = ComposerKt.getJoinedKey(keyInfo2);
                    ComposerKt.put(multiMap, joinedKey, keyInfo2);
                }
                return multiMap;
            }
        });
    }

    public final HashMap<Object, LinkedHashSet<KeyInfo>> getKeyMap() {
        return (HashMap) this.keyMap.getValue();
    }

    public final KeyInfo getNext(int key, Object dataKey) {
        Object pop;
        pop = ComposerKt.pop(getKeyMap(), dataKey != null ? new JoinedKey(Integer.valueOf(key), dataKey) : Integer.valueOf(key));
        return (KeyInfo) pop;
    }

    public final boolean recordUsed(KeyInfo keyInfo) {
        Intrinsics.checkNotNullParameter(keyInfo, "keyInfo");
        return this.usedKeys.add(keyInfo);
    }

    public final void registerMoveSlot(int from, int to) {
        if (from > to) {
            Collection<GroupInfo> values = this.groupInfos.values();
            Intrinsics.checkNotNullExpressionValue(values, "groupInfos.values");
            for (GroupInfo groupInfo : values) {
                int slotIndex = groupInfo.getSlotIndex();
                if (slotIndex == from) {
                    groupInfo.setSlotIndex(to);
                } else if (to <= slotIndex && slotIndex < from) {
                    groupInfo.setSlotIndex(slotIndex + 1);
                }
            }
            return;
        }
        if (to > from) {
            Collection<GroupInfo> values2 = this.groupInfos.values();
            Intrinsics.checkNotNullExpressionValue(values2, "groupInfos.values");
            for (GroupInfo groupInfo2 : values2) {
                int slotIndex2 = groupInfo2.getSlotIndex();
                if (slotIndex2 == from) {
                    groupInfo2.setSlotIndex(to);
                } else if (from + 1 <= slotIndex2 && slotIndex2 < to) {
                    groupInfo2.setSlotIndex(slotIndex2 - 1);
                }
            }
        }
    }

    public final void registerMoveNode(int from, int to, int count) {
        if (from > to) {
            Collection<GroupInfo> values = this.groupInfos.values();
            Intrinsics.checkNotNullExpressionValue(values, "groupInfos.values");
            for (GroupInfo groupInfo : values) {
                int nodeIndex = groupInfo.getNodeIndex();
                if (from <= nodeIndex && nodeIndex < from + count) {
                    groupInfo.setNodeIndex((nodeIndex - from) + to);
                } else if (to <= nodeIndex && nodeIndex < from) {
                    groupInfo.setNodeIndex(nodeIndex + count);
                }
            }
            return;
        }
        if (to > from) {
            Collection<GroupInfo> values2 = this.groupInfos.values();
            Intrinsics.checkNotNullExpressionValue(values2, "groupInfos.values");
            for (GroupInfo groupInfo2 : values2) {
                int nodeIndex2 = groupInfo2.getNodeIndex();
                if (from <= nodeIndex2 && nodeIndex2 < from + count) {
                    groupInfo2.setNodeIndex((nodeIndex2 - from) + to);
                } else if (from + 1 <= nodeIndex2 && nodeIndex2 < to) {
                    groupInfo2.setNodeIndex(nodeIndex2 - count);
                }
            }
        }
    }

    public final void registerInsert(KeyInfo keyInfo, int insertIndex) {
        Intrinsics.checkNotNullParameter(keyInfo, "keyInfo");
        this.groupInfos.put(Integer.valueOf(keyInfo.getLocation()), new GroupInfo(-1, insertIndex, 0));
    }

    public final boolean updateNodeCount(int group, int newCount) {
        int nodeIndex;
        GroupInfo groupInfo = this.groupInfos.get(Integer.valueOf(group));
        if (groupInfo == null) {
            return false;
        }
        int nodeIndex2 = groupInfo.getNodeIndex();
        int nodeCount = newCount - groupInfo.getNodeCount();
        groupInfo.setNodeCount(newCount);
        if (nodeCount == 0) {
            return true;
        }
        Collection<GroupInfo> values = this.groupInfos.values();
        Intrinsics.checkNotNullExpressionValue(values, "groupInfos.values");
        for (GroupInfo groupInfo2 : values) {
            if (groupInfo2.getNodeIndex() >= nodeIndex2 && !Intrinsics.areEqual(groupInfo2, groupInfo) && (nodeIndex = groupInfo2.getNodeIndex() + nodeCount) >= 0) {
                groupInfo2.setNodeIndex(nodeIndex);
            }
        }
        return true;
    }

    public final int slotPositionOf(KeyInfo keyInfo) {
        Intrinsics.checkNotNullParameter(keyInfo, "keyInfo");
        GroupInfo groupInfo = this.groupInfos.get(Integer.valueOf(keyInfo.getLocation()));
        if (groupInfo != null) {
            return groupInfo.getSlotIndex();
        }
        return -1;
    }

    public final int nodePositionOf(KeyInfo keyInfo) {
        Intrinsics.checkNotNullParameter(keyInfo, "keyInfo");
        GroupInfo groupInfo = this.groupInfos.get(Integer.valueOf(keyInfo.getLocation()));
        if (groupInfo != null) {
            return groupInfo.getNodeIndex();
        }
        return -1;
    }

    public final int updatedNodeCountOf(KeyInfo keyInfo) {
        Intrinsics.checkNotNullParameter(keyInfo, "keyInfo");
        GroupInfo groupInfo = this.groupInfos.get(Integer.valueOf(keyInfo.getLocation()));
        return groupInfo != null ? groupInfo.getNodeCount() : keyInfo.getNodes();
    }
}
