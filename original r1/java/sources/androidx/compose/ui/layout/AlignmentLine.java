package androidx.compose.ui.layout;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AlignmentLine.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \b2\u00020\u0001:\u0001\bB!\b\u0004\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R&\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/layout/AlignmentLine;", "", "merger", "Lkotlin/Function2;", "", "(Lkotlin/jvm/functions/Function2;)V", "getMerger$ui_release", "()Lkotlin/jvm/functions/Function2;", "Companion", "Landroidx/compose/ui/layout/HorizontalAlignmentLine;", "Landroidx/compose/ui/layout/VerticalAlignmentLine;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class AlignmentLine {
    public static final int $stable = 0;
    public static final int Unspecified = Integer.MIN_VALUE;
    private final Function2<Integer, Integer, Integer> merger;

    public /* synthetic */ AlignmentLine(Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2);
    }

    public final Function2<Integer, Integer, Integer> getMerger$ui_release() {
        return this.merger;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AlignmentLine(Function2<? super Integer, ? super Integer, Integer> function2) {
        this.merger = function2;
    }
}
