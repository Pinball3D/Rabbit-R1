package androidx.compose.ui.node;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: LayoutNodeLayoutDelegate.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b`\u0018\u00002\u00020\u0001J\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H&J\u001c\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00150\u0017H&J\b\u0010\u0018\u001a\u00020\u0015H&J\b\u0010\u0019\u001a\u00020\u0015H&J\b\u0010\u001a\u001a\u00020\u0015H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0014\u0010\r\u001a\u0004\u0018\u00010\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/AlignmentLinesOwner;", "Landroidx/compose/ui/layout/Measurable;", "alignmentLines", "Landroidx/compose/ui/node/AlignmentLines;", "getAlignmentLines", "()Landroidx/compose/ui/node/AlignmentLines;", "innerCoordinator", "Landroidx/compose/ui/node/NodeCoordinator;", "getInnerCoordinator", "()Landroidx/compose/ui/node/NodeCoordinator;", "isPlaced", "", "()Z", "parentAlignmentLinesOwner", "getParentAlignmentLinesOwner", "()Landroidx/compose/ui/node/AlignmentLinesOwner;", "calculateAlignmentLines", "", "Landroidx/compose/ui/layout/AlignmentLine;", "", "forEachChildAlignmentLinesOwner", "", "block", "Lkotlin/Function1;", "layoutChildren", "requestLayout", "requestMeasure", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface AlignmentLinesOwner extends Measurable {
    Map<AlignmentLine, Integer> calculateAlignmentLines();

    void forEachChildAlignmentLinesOwner(Function1<? super AlignmentLinesOwner, Unit> block);

    AlignmentLines getAlignmentLines();

    NodeCoordinator getInnerCoordinator();

    AlignmentLinesOwner getParentAlignmentLinesOwner();

    /* renamed from: isPlaced */
    boolean getIsPlaced();

    void layoutChildren();

    void requestLayout();

    void requestMeasure();
}
