package androidx.compose.ui.semantics;

import kotlin.Metadata;

/* compiled from: SemanticsProperties.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Landroidx/compose/ui/semantics/CollectionItemInfo;", "", "rowIndex", "", "rowSpan", "columnIndex", "columnSpan", "(IIII)V", "getColumnIndex", "()I", "getColumnSpan", "getRowIndex", "getRowSpan", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CollectionItemInfo {
    public static final int $stable = 0;
    private final int columnIndex;
    private final int columnSpan;
    private final int rowIndex;
    private final int rowSpan;

    public final int getColumnIndex() {
        return this.columnIndex;
    }

    public final int getColumnSpan() {
        return this.columnSpan;
    }

    public final int getRowIndex() {
        return this.rowIndex;
    }

    public final int getRowSpan() {
        return this.rowSpan;
    }

    public CollectionItemInfo(int i, int i2, int i3, int i4) {
        this.rowIndex = i;
        this.rowSpan = i2;
        this.columnIndex = i3;
        this.columnSpan = i4;
    }
}
