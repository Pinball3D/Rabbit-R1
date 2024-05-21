package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyLayoutMeasureScope.kt */
@Metadata(d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007JH\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u00192\u0014\b\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00190\"2\u0017\u0010$\u001a\u0013\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0%¢\u0006\u0002\b(H\u0096\u0001J+\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b-\u0010.J\u001a\u0010/\u001a\u00020\u0019*\u000200H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b1\u00102J\u001a\u0010/\u001a\u00020\u0019*\u000203H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b4\u00105J\u0019\u00106\u001a\u000200*\u000203H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b7\u00108J\u001c\u00106\u001a\u000200*\u00020\tH\u0016ø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b9\u0010:J\u001c\u00106\u001a\u000200*\u00020\u0019H\u0016ø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b9\u0010;J\u0019\u0010<\u001a\u00020=*\u00020>H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b?\u0010@J\u001a\u0010A\u001a\u00020\t*\u000200H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bB\u0010:J\u001a\u0010A\u001a\u00020\t*\u000203H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bC\u00108J\r\u0010D\u001a\u00020E*\u00020FH\u0097\u0001J\u0019\u0010G\u001a\u00020>*\u00020=H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bH\u0010@J\u0019\u0010I\u001a\u000203*\u000200H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bJ\u0010KJ\u001c\u0010I\u001a\u000203*\u00020\tH\u0016ø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bL\u0010KJ\u001c\u0010I\u001a\u000203*\u00020\u0019H\u0016ø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bL\u0010MR\u0014\u0010\b\u001a\u00020\t8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000f8WX\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u0014X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R6\u0010\u0017\u001a*\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u0018j\u0014\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a`\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0002\b!¨\u0006N"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "Landroidx/compose/ui/layout/MeasureScope;", "itemContentFactory", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;", "subcomposeMeasureScope", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)V", "density", "", "getDensity", "()F", "fontScale", "getFontScale", "isLookingAhead", "", "()Z", "itemProvider", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "placeablesCache", "Ljava/util/HashMap;", "", "", "Landroidx/compose/ui/layout/Placeable;", "Lkotlin/collections/HashMap;", "layout", "Landroidx/compose/ui/layout/MeasureResult;", ViewHierarchyNode.JsonKeys.WIDTH, ViewHierarchyNode.JsonKeys.HEIGHT, "alignmentLines", "", "Landroidx/compose/ui/layout/AlignmentLine;", "placementBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "", "Lkotlin/ExtensionFunctionType;", "measure", "index", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-0kLqBqw", "(IJ)Ljava/util/List;", "roundToPx", "Landroidx/compose/ui/unit/Dp;", "roundToPx-0680j_4", "(F)I", "Landroidx/compose/ui/unit/TextUnit;", "roundToPx--R2X_6o", "(J)I", "toDp", "toDp-GaN1DYA", "(J)F", "toDp-u2uoSUM", "(F)F", "(I)F", "toDpSize", "Landroidx/compose/ui/unit/DpSize;", "Landroidx/compose/ui/geometry/Size;", "toDpSize-k-rfVVM", "(J)J", "toPx", "toPx-0680j_4", "toPx--R2X_6o", "toRect", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/ui/unit/DpRect;", "toSize", "toSize-XkaWNTQ", "toSp", "toSp-0xMU5do", "(F)J", "toSp-kPz2Gy4", "(I)J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyLayoutMeasureScopeImpl implements LazyLayoutMeasureScope, MeasureScope {
    private final LazyLayoutItemContentFactory itemContentFactory;
    private final LazyLayoutItemProvider itemProvider;
    private final HashMap<Integer, List<Placeable>> placeablesCache;
    private final SubcomposeMeasureScope subcomposeMeasureScope;

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.subcomposeMeasureScope.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.subcomposeMeasureScope.getFontScale();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public LayoutDirection getLayoutDirection() {
        return this.subcomposeMeasureScope.getLayoutDirection();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public boolean isLookingAhead() {
        return this.subcomposeMeasureScope.isLookingAhead();
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public MeasureResult layout(int width, int height, Map<AlignmentLine, Integer> alignmentLines, Function1<? super Placeable.PlacementScope, Unit> placementBlock) {
        Intrinsics.checkNotNullParameter(alignmentLines, "alignmentLines");
        Intrinsics.checkNotNullParameter(placementBlock, "placementBlock");
        return this.subcomposeMeasureScope.layout(width, height, alignmentLines, placementBlock);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public int mo328roundToPxR2X_6o(long j) {
        return this.subcomposeMeasureScope.mo328roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public int mo329roundToPx0680j_4(float f) {
        return this.subcomposeMeasureScope.mo329roundToPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public float mo334toPxR2X_6o(long j) {
        return this.subcomposeMeasureScope.mo334toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public float mo335toPx0680j_4(float f) {
        return this.subcomposeMeasureScope.mo335toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public Rect toRect(DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.subcomposeMeasureScope.toRect(dpRect);
    }

    public LazyLayoutMeasureScopeImpl(LazyLayoutItemContentFactory itemContentFactory, SubcomposeMeasureScope subcomposeMeasureScope) {
        Intrinsics.checkNotNullParameter(itemContentFactory, "itemContentFactory");
        Intrinsics.checkNotNullParameter(subcomposeMeasureScope, "subcomposeMeasureScope");
        this.itemContentFactory = itemContentFactory;
        this.subcomposeMeasureScope = subcomposeMeasureScope;
        this.itemProvider = itemContentFactory.getItemProvider().invoke();
        this.placeablesCache = new HashMap<>();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope
    /* renamed from: measure-0kLqBqw */
    public List<Placeable> mo648measure0kLqBqw(int index, long constraints) {
        List<Placeable> list = this.placeablesCache.get(Integer.valueOf(index));
        if (list != null) {
            return list;
        }
        Object key = this.itemProvider.getKey(index);
        List<Measurable> subcompose = this.subcomposeMeasureScope.subcompose(key, this.itemContentFactory.getContent(index, key, this.itemProvider.getContentType(index)));
        int size = subcompose.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(subcompose.get(i).mo3876measureBRTryo0(constraints));
        }
        ArrayList arrayList2 = arrayList;
        this.placeablesCache.put(Integer.valueOf(index), arrayList2);
        return arrayList2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public float mo330toDpGaN1DYA(long j) {
        return this.subcomposeMeasureScope.mo330toDpGaN1DYA(j);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public float mo332toDpu2uoSUM(int i) {
        return this.subcomposeMeasureScope.mo332toDpu2uoSUM(i);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public float mo331toDpu2uoSUM(float f) {
        return this.subcomposeMeasureScope.mo331toDpu2uoSUM(f);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public long mo338toSpkPz2Gy4(float f) {
        return this.subcomposeMeasureScope.mo338toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public long mo339toSpkPz2Gy4(int i) {
        return this.subcomposeMeasureScope.mo339toSpkPz2Gy4(i);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public long mo337toSp0xMU5do(float f) {
        return this.subcomposeMeasureScope.mo337toSp0xMU5do(f);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public long mo336toSizeXkaWNTQ(long j) {
        return this.subcomposeMeasureScope.mo336toSizeXkaWNTQ(j);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public long mo333toDpSizekrfVVM(long j) {
        return this.subcomposeMeasureScope.mo333toDpSizekrfVVM(j);
    }
}
