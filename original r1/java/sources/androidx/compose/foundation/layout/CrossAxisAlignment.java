package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.AlignmentLineProvider;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RowColumnImpl.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u0000 \u00152\u00020\u0001:\u0007\u0013\u0014\u0015\u0016\u0017\u0018\u0019B\u0007\b\u0004¢\u0006\u0002\u0010\u0002J-\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH ¢\u0006\u0002\b\u000fJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\rH\u0010¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00048PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0006\u001a\u001b\u001c\u001d\u001e\u001f¨\u0006 "}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment;", "", "()V", "isRelative", "", "isRelative$foundation_layout_release", "()Z", "align", "", "size", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "placeable", "Landroidx/compose/ui/layout/Placeable;", "beforeCrossAxisAlignmentLine", "align$foundation_layout_release", "calculateAlignmentLinePosition", "calculateAlignmentLinePosition$foundation_layout_release", "(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;", "AlignmentLineCrossAxisAlignment", "CenterCrossAxisAlignment", "Companion", "EndCrossAxisAlignment", "HorizontalCrossAxisAlignment", "StartCrossAxisAlignment", "VerticalCrossAxisAlignment", "Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment$CenterCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment$EndCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment$StartCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class CrossAxisAlignment {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final CrossAxisAlignment Center = CenterCrossAxisAlignment.INSTANCE;
    private static final CrossAxisAlignment Start = StartCrossAxisAlignment.INSTANCE;
    private static final CrossAxisAlignment End = EndCrossAxisAlignment.INSTANCE;

    public /* synthetic */ CrossAxisAlignment(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract int align$foundation_layout_release(int size, LayoutDirection layoutDirection, Placeable placeable, int beforeCrossAxisAlignmentLine);

    public Integer calculateAlignmentLinePosition$foundation_layout_release(Placeable placeable) {
        Intrinsics.checkNotNullParameter(placeable, "placeable");
        return null;
    }

    public boolean isRelative$foundation_layout_release() {
        return false;
    }

    private CrossAxisAlignment() {
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u0015\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0014J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0000¢\u0006\u0002\b\u0017J\u0015\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0000¢\u0006\u0002\b\u001aR\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u0007¨\u0006\u001b"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;", "", "()V", "Center", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "getCenter$annotations", "getCenter", "()Landroidx/compose/foundation/layout/CrossAxisAlignment;", "End", "getEnd$annotations", "getEnd", "Start", "getStart$annotations", "getStart", "AlignmentLine", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "Relative", "alignmentLineProvider", "Landroidx/compose/foundation/layout/AlignmentLineProvider;", "Relative$foundation_layout_release", "horizontal", "Landroidx/compose/ui/Alignment$Horizontal;", "horizontal$foundation_layout_release", "vertical", "Landroidx/compose/ui/Alignment$Vertical;", "vertical$foundation_layout_release", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getCenter$annotations() {
        }

        public static /* synthetic */ void getEnd$annotations() {
        }

        public static /* synthetic */ void getStart$annotations() {
        }

        private Companion() {
        }

        public final CrossAxisAlignment getCenter() {
            return CrossAxisAlignment.Center;
        }

        public final CrossAxisAlignment getStart() {
            return CrossAxisAlignment.Start;
        }

        public final CrossAxisAlignment getEnd() {
            return CrossAxisAlignment.End;
        }

        public final CrossAxisAlignment AlignmentLine(AlignmentLine alignmentLine) {
            Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
            return new AlignmentLineCrossAxisAlignment(new AlignmentLineProvider.Value(alignmentLine));
        }

        public final CrossAxisAlignment Relative$foundation_layout_release(AlignmentLineProvider alignmentLineProvider) {
            Intrinsics.checkNotNullParameter(alignmentLineProvider, "alignmentLineProvider");
            return new AlignmentLineCrossAxisAlignment(alignmentLineProvider);
        }

        public final CrossAxisAlignment vertical$foundation_layout_release(Alignment.Vertical vertical) {
            Intrinsics.checkNotNullParameter(vertical, "vertical");
            return new VerticalCrossAxisAlignment(vertical);
        }

        public final CrossAxisAlignment horizontal$foundation_layout_release(Alignment.Horizontal horizontal) {
            Intrinsics.checkNotNullParameter(horizontal, "horizontal");
            return new HorizontalCrossAxisAlignment(horizontal);
        }
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0010¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$CenterCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "()V", "align", "", "size", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "placeable", "Landroidx/compose/ui/layout/Placeable;", "beforeCrossAxisAlignmentLine", "align$foundation_layout_release", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class CenterCrossAxisAlignment extends CrossAxisAlignment {
        public static final CenterCrossAxisAlignment INSTANCE = new CenterCrossAxisAlignment();

        private CenterCrossAxisAlignment() {
            super(null);
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int align$foundation_layout_release(int size, LayoutDirection layoutDirection, Placeable placeable, int beforeCrossAxisAlignmentLine) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(placeable, "placeable");
            return size / 2;
        }
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0010¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$StartCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "()V", "align", "", "size", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "placeable", "Landroidx/compose/ui/layout/Placeable;", "beforeCrossAxisAlignmentLine", "align$foundation_layout_release", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class StartCrossAxisAlignment extends CrossAxisAlignment {
        public static final StartCrossAxisAlignment INSTANCE = new StartCrossAxisAlignment();

        private StartCrossAxisAlignment() {
            super(null);
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int align$foundation_layout_release(int size, LayoutDirection layoutDirection, Placeable placeable, int beforeCrossAxisAlignmentLine) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(placeable, "placeable");
            if (layoutDirection == LayoutDirection.Ltr) {
                return 0;
            }
            return size;
        }
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0010¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$EndCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "()V", "align", "", "size", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "placeable", "Landroidx/compose/ui/layout/Placeable;", "beforeCrossAxisAlignmentLine", "align$foundation_layout_release", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class EndCrossAxisAlignment extends CrossAxisAlignment {
        public static final EndCrossAxisAlignment INSTANCE = new EndCrossAxisAlignment();

        private EndCrossAxisAlignment() {
            super(null);
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int align$foundation_layout_release(int size, LayoutDirection layoutDirection, Placeable placeable, int beforeCrossAxisAlignmentLine) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(placeable, "placeable");
            if (layoutDirection == LayoutDirection.Ltr) {
                return size;
            }
            return 0;
        }
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J-\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\fH\u0010¢\u0006\u0002\b\u0013J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0010¢\u0006\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "alignmentLineProvider", "Landroidx/compose/foundation/layout/AlignmentLineProvider;", "(Landroidx/compose/foundation/layout/AlignmentLineProvider;)V", "getAlignmentLineProvider", "()Landroidx/compose/foundation/layout/AlignmentLineProvider;", "isRelative", "", "isRelative$foundation_layout_release", "()Z", "align", "", "size", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "placeable", "Landroidx/compose/ui/layout/Placeable;", "beforeCrossAxisAlignmentLine", "align$foundation_layout_release", "calculateAlignmentLinePosition", "calculateAlignmentLinePosition$foundation_layout_release", "(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class AlignmentLineCrossAxisAlignment extends CrossAxisAlignment {
        private final AlignmentLineProvider alignmentLineProvider;

        public final AlignmentLineProvider getAlignmentLineProvider() {
            return this.alignmentLineProvider;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public boolean isRelative$foundation_layout_release() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AlignmentLineCrossAxisAlignment(AlignmentLineProvider alignmentLineProvider) {
            super(null);
            Intrinsics.checkNotNullParameter(alignmentLineProvider, "alignmentLineProvider");
            this.alignmentLineProvider = alignmentLineProvider;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public Integer calculateAlignmentLinePosition$foundation_layout_release(Placeable placeable) {
            Intrinsics.checkNotNullParameter(placeable, "placeable");
            return Integer.valueOf(this.alignmentLineProvider.calculateAlignmentLinePosition(placeable));
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int align$foundation_layout_release(int size, LayoutDirection layoutDirection, Placeable placeable, int beforeCrossAxisAlignmentLine) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(placeable, "placeable");
            int calculateAlignmentLinePosition = this.alignmentLineProvider.calculateAlignmentLinePosition(placeable);
            if (calculateAlignmentLinePosition == Integer.MIN_VALUE) {
                return 0;
            }
            int i = beforeCrossAxisAlignmentLine - calculateAlignmentLinePosition;
            return layoutDirection == LayoutDirection.Rtl ? size - i : i;
        }
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J-\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH\u0010¢\u0006\u0002\b\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "vertical", "Landroidx/compose/ui/Alignment$Vertical;", "(Landroidx/compose/ui/Alignment$Vertical;)V", "getVertical", "()Landroidx/compose/ui/Alignment$Vertical;", "align", "", "size", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "placeable", "Landroidx/compose/ui/layout/Placeable;", "beforeCrossAxisAlignmentLine", "align$foundation_layout_release", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class VerticalCrossAxisAlignment extends CrossAxisAlignment {
        private final Alignment.Vertical vertical;

        public final Alignment.Vertical getVertical() {
            return this.vertical;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VerticalCrossAxisAlignment(Alignment.Vertical vertical) {
            super(null);
            Intrinsics.checkNotNullParameter(vertical, "vertical");
            this.vertical = vertical;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int align$foundation_layout_release(int size, LayoutDirection layoutDirection, Placeable placeable, int beforeCrossAxisAlignmentLine) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(placeable, "placeable");
            return this.vertical.align(0, size);
        }
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J-\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH\u0010¢\u0006\u0002\b\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "horizontal", "Landroidx/compose/ui/Alignment$Horizontal;", "(Landroidx/compose/ui/Alignment$Horizontal;)V", "getHorizontal", "()Landroidx/compose/ui/Alignment$Horizontal;", "align", "", "size", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "placeable", "Landroidx/compose/ui/layout/Placeable;", "beforeCrossAxisAlignmentLine", "align$foundation_layout_release", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class HorizontalCrossAxisAlignment extends CrossAxisAlignment {
        private final Alignment.Horizontal horizontal;

        public final Alignment.Horizontal getHorizontal() {
            return this.horizontal;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HorizontalCrossAxisAlignment(Alignment.Horizontal horizontal) {
            super(null);
            Intrinsics.checkNotNullParameter(horizontal, "horizontal");
            this.horizontal = horizontal;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int align$foundation_layout_release(int size, LayoutDirection layoutDirection, Placeable placeable, int beforeCrossAxisAlignmentLine) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(placeable, "placeable");
            return this.horizontal.align(0, size, layoutDirection);
        }
    }
}
