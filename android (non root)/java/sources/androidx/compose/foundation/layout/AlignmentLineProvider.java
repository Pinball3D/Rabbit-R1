package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.layout.Placeable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RowColumnImpl.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/layout/AlignmentLineProvider;", "", "()V", "calculateAlignmentLinePosition", "", "placeable", "Landroidx/compose/ui/layout/Placeable;", "Block", "Value", "Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;", "Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class AlignmentLineProvider {
    public /* synthetic */ AlignmentLineProvider(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract int calculateAlignmentLinePosition(Placeable placeable);

    private AlignmentLineProvider() {
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0015\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;", "Landroidx/compose/foundation/layout/AlignmentLineProvider;", "lineProviderBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/Measured;", "", "(Lkotlin/jvm/functions/Function1;)V", "getLineProviderBlock", "()Lkotlin/jvm/functions/Function1;", "calculateAlignmentLinePosition", "placeable", "Landroidx/compose/ui/layout/Placeable;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class Block extends AlignmentLineProvider {
        public static final int $stable = 0;
        private final Function1<Measured, Integer> lineProviderBlock;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Block copy$default(Block block, Function1 function1, int i, Object obj) {
            if ((i & 1) != 0) {
                function1 = block.lineProviderBlock;
            }
            return block.copy(function1);
        }

        public final Function1<Measured, Integer> component1() {
            return this.lineProviderBlock;
        }

        public final Block copy(Function1<? super Measured, Integer> lineProviderBlock) {
            Intrinsics.checkNotNullParameter(lineProviderBlock, "lineProviderBlock");
            return new Block(lineProviderBlock);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Block) && Intrinsics.areEqual(this.lineProviderBlock, ((Block) other).lineProviderBlock);
        }

        public final Function1<Measured, Integer> getLineProviderBlock() {
            return this.lineProviderBlock;
        }

        public int hashCode() {
            return this.lineProviderBlock.hashCode();
        }

        public String toString() {
            return "Block(lineProviderBlock=" + this.lineProviderBlock + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Block(Function1<? super Measured, Integer> lineProviderBlock) {
            super(null);
            Intrinsics.checkNotNullParameter(lineProviderBlock, "lineProviderBlock");
            this.lineProviderBlock = lineProviderBlock;
        }

        @Override // androidx.compose.foundation.layout.AlignmentLineProvider
        public int calculateAlignmentLinePosition(Placeable placeable) {
            Intrinsics.checkNotNullParameter(placeable, "placeable");
            return this.lineProviderBlock.invoke(placeable).intValue();
        }
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\bHÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;", "Landroidx/compose/foundation/layout/AlignmentLineProvider;", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "(Landroidx/compose/ui/layout/AlignmentLine;)V", "getAlignmentLine", "()Landroidx/compose/ui/layout/AlignmentLine;", "calculateAlignmentLinePosition", "", "placeable", "Landroidx/compose/ui/layout/Placeable;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class Value extends AlignmentLineProvider {
        public static final int $stable = 0;
        private final AlignmentLine alignmentLine;

        public static /* synthetic */ Value copy$default(Value value, AlignmentLine alignmentLine, int i, Object obj) {
            if ((i & 1) != 0) {
                alignmentLine = value.alignmentLine;
            }
            return value.copy(alignmentLine);
        }

        /* renamed from: component1, reason: from getter */
        public final AlignmentLine getAlignmentLine() {
            return this.alignmentLine;
        }

        public final Value copy(AlignmentLine alignmentLine) {
            Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
            return new Value(alignmentLine);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Value) && Intrinsics.areEqual(this.alignmentLine, ((Value) other).alignmentLine);
        }

        public final AlignmentLine getAlignmentLine() {
            return this.alignmentLine;
        }

        public int hashCode() {
            return this.alignmentLine.hashCode();
        }

        public String toString() {
            return "Value(alignmentLine=" + this.alignmentLine + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Value(AlignmentLine alignmentLine) {
            super(null);
            Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
            this.alignmentLine = alignmentLine;
        }

        @Override // androidx.compose.foundation.layout.AlignmentLineProvider
        public int calculateAlignmentLinePosition(Placeable placeable) {
            Intrinsics.checkNotNullParameter(placeable, "placeable");
            return placeable.get(this.alignmentLine);
        }
    }
}
