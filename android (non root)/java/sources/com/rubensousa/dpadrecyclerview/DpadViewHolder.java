package com.rubensousa.dpadrecyclerview;

import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DpadViewHolder.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0016¨\u0006\t"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;", "", "getSubPositionAlignments", "", "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;", "onViewHolderDeselected", "", "onViewHolderSelected", "onViewHolderSelectedAndAligned", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface DpadViewHolder {
    List<SubPositionAlignment> getSubPositionAlignments();

    void onViewHolderDeselected();

    void onViewHolderSelected();

    void onViewHolderSelectedAndAligned();

    /* compiled from: DpadViewHolder.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void onViewHolderDeselected(DpadViewHolder dpadViewHolder) {
        }

        public static void onViewHolderSelected(DpadViewHolder dpadViewHolder) {
        }

        public static void onViewHolderSelectedAndAligned(DpadViewHolder dpadViewHolder) {
        }

        public static List<SubPositionAlignment> getSubPositionAlignments(DpadViewHolder dpadViewHolder) {
            List<SubPositionAlignment> emptyList = Collections.emptyList();
            Intrinsics.checkNotNullExpressionValue(emptyList, "emptyList(...)");
            return emptyList;
        }
    }
}
