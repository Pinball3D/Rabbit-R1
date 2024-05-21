package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.Device;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MeasuredPage.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001Bb\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015ø\u0001\u0000¢\u0006\u0002\u0010\u0016J \u0010!\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\u000e\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.J\u001e\u0010/\u001a\u00020,2\u0006\u0010 \u001a\u00020\u00032\u0006\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0003J.\u00102\u001a\u00020\t*\u00020\t2\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000304H\u0082\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b5\u00106R\u0011\u0010\u0017\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u000e\u0010\u001b\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0003@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0019R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\b\u001a\u00020\tX\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010%R\u0018\u0010&\u001a\u00020\u0003*\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00067"}, d2 = {"Landroidx/compose/foundation/pager/MeasuredPage;", "Landroidx/compose/foundation/pager/PageInfo;", "index", "", "size", "placeables", "", "Landroidx/compose/ui/layout/Placeable;", "visualOffset", "Landroidx/compose/ui/unit/IntOffset;", "key", "", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "verticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "reverseLayout", "", "(IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "crossAxisSize", "getCrossAxisSize", "()I", "getIndex", "isVertical", "getKey", "()Ljava/lang/Object;", "mainAxisLayoutSize", "<set-?>", "offset", "getOffset", "placeableOffsets", "", "getSize", "J", "mainAxisSize", "getMainAxisSize", "(Landroidx/compose/ui/layout/Placeable;)I", "getOffset-Bjo55l4", "(I)J", "place", "", "scope", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "position", "layoutWidth", "layoutHeight", "copy", "mainAxisMap", "Lkotlin/Function1;", "copy-4Tuh3kE", "(JLkotlin/jvm/functions/Function1;)J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MeasuredPage implements PageInfo {
    private final int crossAxisSize;
    private final Alignment.Horizontal horizontalAlignment;
    private final int index;
    private final boolean isVertical;
    private final Object key;
    private final LayoutDirection layoutDirection;
    private int mainAxisLayoutSize;
    private int offset;
    private final int[] placeableOffsets;
    private final List<Placeable> placeables;
    private final boolean reverseLayout;
    private final int size;
    private final Alignment.Vertical verticalAlignment;
    private final long visualOffset;

    public /* synthetic */ MeasuredPage(int i, int i2, List list, long j, Object obj, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, list, j, obj, orientation, horizontal, vertical, layoutDirection, z);
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    @Override // androidx.compose.foundation.pager.PageInfo
    public int getIndex() {
        return this.index;
    }

    public final Object getKey() {
        return this.key;
    }

    @Override // androidx.compose.foundation.pager.PageInfo
    public int getOffset() {
        return this.offset;
    }

    public final int getSize() {
        return this.size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private MeasuredPage(int i, int i2, List<? extends Placeable> placeables, long j, Object key, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z) {
        Intrinsics.checkNotNullParameter(placeables, "placeables");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        this.index = i;
        this.size = i2;
        this.placeables = placeables;
        this.visualOffset = j;
        this.key = key;
        this.horizontalAlignment = horizontal;
        this.verticalAlignment = vertical;
        this.layoutDirection = layoutDirection;
        this.reverseLayout = z;
        this.isVertical = orientation == Orientation.Vertical;
        int size = placeables.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            Placeable placeable = (Placeable) placeables.get(i4);
            i3 = Math.max(i3, !this.isVertical ? placeable.getHeight() : placeable.getWidth());
        }
        this.crossAxisSize = i3;
        this.placeableOffsets = new int[this.placeables.size() * 2];
        this.mainAxisLayoutSize = Integer.MIN_VALUE;
    }

    public final void place(Placeable.PlacementScope scope) {
        int m5001getXimpl;
        int m5002getYimpl;
        Intrinsics.checkNotNullParameter(scope, "scope");
        if (this.mainAxisLayoutSize == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("position() should be called first".toString());
        }
        int size = this.placeables.size();
        for (int i = 0; i < size; i++) {
            Placeable placeable = this.placeables.get(i);
            long m697getOffsetBjo55l4 = m697getOffsetBjo55l4(i);
            if (this.reverseLayout) {
                if (!this.isVertical) {
                    m5001getXimpl = (this.mainAxisLayoutSize - IntOffset.m5001getXimpl(m697getOffsetBjo55l4)) - getMainAxisSize(placeable);
                } else {
                    m5001getXimpl = IntOffset.m5001getXimpl(m697getOffsetBjo55l4);
                }
                if (this.isVertical) {
                    m5002getYimpl = (this.mainAxisLayoutSize - IntOffset.m5002getYimpl(m697getOffsetBjo55l4)) - getMainAxisSize(placeable);
                } else {
                    m5002getYimpl = IntOffset.m5002getYimpl(m697getOffsetBjo55l4);
                }
                m697getOffsetBjo55l4 = IntOffsetKt.IntOffset(m5001getXimpl, m5002getYimpl);
            }
            long j = this.visualOffset;
            long IntOffset = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(m697getOffsetBjo55l4) + IntOffset.m5001getXimpl(j), IntOffset.m5002getYimpl(m697getOffsetBjo55l4) + IntOffset.m5002getYimpl(j));
            if (this.isVertical) {
                Placeable.PlacementScope.m3936placeWithLayeraW9wM$default(scope, placeable, IntOffset, 0.0f, null, 6, null);
            } else {
                Placeable.PlacementScope.m3935placeRelativeWithLayeraW9wM$default(scope, placeable, IntOffset, 0.0f, null, 6, null);
            }
        }
    }

    /* renamed from: getOffset-Bjo55l4, reason: not valid java name */
    private final long m697getOffsetBjo55l4(int index) {
        int[] iArr = this.placeableOffsets;
        int i = index * 2;
        return IntOffsetKt.IntOffset(iArr[i], iArr[i + 1]);
    }

    private final int getMainAxisSize(Placeable placeable) {
        return this.isVertical ? placeable.getHeight() : placeable.getWidth();
    }

    /* renamed from: copy-4Tuh3kE, reason: not valid java name */
    private final long m696copy4Tuh3kE(long j, Function1<? super Integer, Integer> function1) {
        return IntOffsetKt.IntOffset(this.isVertical ? IntOffset.m5001getXimpl(j) : function1.invoke(Integer.valueOf(IntOffset.m5001getXimpl(j))).intValue(), this.isVertical ? function1.invoke(Integer.valueOf(IntOffset.m5002getYimpl(j))).intValue() : IntOffset.m5002getYimpl(j));
    }

    public final void position(int offset, int layoutWidth, int layoutHeight) {
        int width;
        this.offset = offset;
        this.mainAxisLayoutSize = this.isVertical ? layoutHeight : layoutWidth;
        List<Placeable> list = this.placeables;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable placeable = list.get(i);
            int i2 = i * 2;
            if (this.isVertical) {
                int[] iArr = this.placeableOffsets;
                Alignment.Horizontal horizontal = this.horizontalAlignment;
                if (horizontal == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                iArr[i2] = horizontal.align(placeable.getWidth(), layoutWidth, this.layoutDirection);
                this.placeableOffsets[i2 + 1] = offset;
                width = placeable.getHeight();
            } else {
                int[] iArr2 = this.placeableOffsets;
                iArr2[i2] = offset;
                int i3 = i2 + 1;
                Alignment.Vertical vertical = this.verticalAlignment;
                if (vertical == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                iArr2[i3] = vertical.align(placeable.getHeight(), layoutHeight);
                width = placeable.getWidth();
            }
            offset += width;
        }
    }
}
