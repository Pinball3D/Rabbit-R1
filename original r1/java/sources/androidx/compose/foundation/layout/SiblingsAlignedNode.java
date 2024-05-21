package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.AlignmentLineProvider;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.node.ParentDataModifierNode;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RowColumnImpl.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\b\tB\u0007\b\u0004¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H&\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/SiblingsAlignedNode;", "Landroidx/compose/ui/node/ParentDataModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "()V", "modifyParentData", "", "Landroidx/compose/ui/unit/Density;", "parentData", "WithAlignmentLineBlockNode", "WithAlignmentLineNode", "Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;", "Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class SiblingsAlignedNode extends Modifier.Node implements ParentDataModifierNode {
    public /* synthetic */ SiblingsAlignedNode(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public abstract Object modifyParentData(Density density, Object obj);

    private SiblingsAlignedNode() {
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0016\u0010\n\u001a\u00020\u000b*\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000bH\u0016R&\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;", "Landroidx/compose/foundation/layout/SiblingsAlignedNode;", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/Measured;", "", "(Lkotlin/jvm/functions/Function1;)V", "getBlock", "()Lkotlin/jvm/functions/Function1;", "setBlock", "modifyParentData", "", "Landroidx/compose/ui/unit/Density;", "parentData", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class WithAlignmentLineBlockNode extends SiblingsAlignedNode {
        private Function1<? super Measured, Integer> block;

        public final Function1<Measured, Integer> getBlock() {
            return this.block;
        }

        public final void setBlock(Function1<? super Measured, Integer> function1) {
            Intrinsics.checkNotNullParameter(function1, "<set-?>");
            this.block = function1;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithAlignmentLineBlockNode(Function1<? super Measured, Integer> block) {
            super(null);
            Intrinsics.checkNotNullParameter(block, "block");
            this.block = block;
        }

        @Override // androidx.compose.foundation.layout.SiblingsAlignedNode, androidx.compose.ui.node.ParentDataModifierNode
        public Object modifyParentData(Density density, Object obj) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
            if (rowColumnParentData == null) {
                rowColumnParentData = new RowColumnParentData(0.0f, false, null, 7, null);
            }
            rowColumnParentData.setCrossAxisAlignment(CrossAxisAlignment.INSTANCE.Relative$foundation_layout_release(new AlignmentLineProvider.Block(this.block)));
            return rowColumnParentData;
        }
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\b\u001a\u00020\t*\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;", "Landroidx/compose/foundation/layout/SiblingsAlignedNode;", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "(Landroidx/compose/ui/layout/AlignmentLine;)V", "getAlignmentLine", "()Landroidx/compose/ui/layout/AlignmentLine;", "setAlignmentLine", "modifyParentData", "", "Landroidx/compose/ui/unit/Density;", "parentData", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class WithAlignmentLineNode extends SiblingsAlignedNode {
        private AlignmentLine alignmentLine;

        public final AlignmentLine getAlignmentLine() {
            return this.alignmentLine;
        }

        public final void setAlignmentLine(AlignmentLine alignmentLine) {
            Intrinsics.checkNotNullParameter(alignmentLine, "<set-?>");
            this.alignmentLine = alignmentLine;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithAlignmentLineNode(AlignmentLine alignmentLine) {
            super(null);
            Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
            this.alignmentLine = alignmentLine;
        }

        @Override // androidx.compose.foundation.layout.SiblingsAlignedNode, androidx.compose.ui.node.ParentDataModifierNode
        public Object modifyParentData(Density density, Object obj) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
            if (rowColumnParentData == null) {
                rowColumnParentData = new RowColumnParentData(0.0f, false, null, 7, null);
            }
            rowColumnParentData.setCrossAxisAlignment(CrossAxisAlignment.INSTANCE.Relative$foundation_layout_release(new AlignmentLineProvider.Value(this.alignmentLine)));
            return rowColumnParentData;
        }
    }
}
