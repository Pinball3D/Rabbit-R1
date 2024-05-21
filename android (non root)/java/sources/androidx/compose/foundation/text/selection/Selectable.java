package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.Pair;

/* compiled from: Selectable.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0012\u001a\u00020\tH&J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J \u0010\u0015\u001a\u00020\u00162\u0006\u0010\b\u001a\u00020\tH&ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\n\u0010\u0019\u001a\u0004\u0018\u00010\rH&J\b\u0010\u001a\u001a\u00020\u001bH&Jc\u0010\u001c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u000f0\u001d2\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\rH&ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b%\u0010&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0003\u0082\u0002\u0015\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006'À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/text/selection/Selectable;", "", "selectableId", "", "getSelectableId", "()J", "getBoundingBox", "Landroidx/compose/ui/geometry/Rect;", "offset", "", "getHandlePosition", "Landroidx/compose/ui/geometry/Offset;", "selection", "Landroidx/compose/foundation/text/selection/Selection;", "isStartHandle", "", "getHandlePosition-dBAh8RU", "(Landroidx/compose/foundation/text/selection/Selection;Z)J", "getLastVisibleOffset", "getLayoutCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getRangeOfLineContaining", "Landroidx/compose/ui/text/TextRange;", "getRangeOfLineContaining--jx7JFs", "(I)J", "getSelectAllSelection", "getText", "Landroidx/compose/ui/text/AnnotatedString;", "updateSelection", "Lkotlin/Pair;", "startHandlePosition", "endHandlePosition", "previousHandlePosition", "containerLayoutCoordinates", "adjustment", "Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "previousSelection", "updateSelection-qCDeeow", "(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;)Lkotlin/Pair;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Selectable {
    Rect getBoundingBox(int offset);

    /* renamed from: getHandlePosition-dBAh8RU */
    long mo885getHandlePositiondBAh8RU(Selection selection, boolean isStartHandle);

    int getLastVisibleOffset();

    LayoutCoordinates getLayoutCoordinates();

    /* renamed from: getRangeOfLineContaining--jx7JFs */
    long mo886getRangeOfLineContainingjx7JFs(int offset);

    Selection getSelectAllSelection();

    long getSelectableId();

    AnnotatedString getText();

    /* renamed from: updateSelection-qCDeeow */
    Pair<Selection, Boolean> mo887updateSelectionqCDeeow(long startHandlePosition, long endHandlePosition, Offset previousHandlePosition, boolean isStartHandle, LayoutCoordinates containerLayoutCoordinates, SelectionAdjustment adjustment, Selection previousSelection);

    /* renamed from: updateSelection-qCDeeow$default, reason: not valid java name */
    static /* synthetic */ Pair m893updateSelectionqCDeeow$default(Selectable selectable, long j, long j2, Offset offset, boolean z, LayoutCoordinates layoutCoordinates, SelectionAdjustment selectionAdjustment, Selection selection, int i, Object obj) {
        if (obj == null) {
            return selectable.mo887updateSelectionqCDeeow(j, j2, offset, (i & 8) != 0 ? true : z, layoutCoordinates, selectionAdjustment, (i & 64) != 0 ? null : selection);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateSelection-qCDeeow");
    }
}
