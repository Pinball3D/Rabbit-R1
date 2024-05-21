package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Tooltip.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B(\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u001c\u0010\u0006\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\u000b\u0010\tR\u001c\u0010\u0004\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\f\u0010\tR\u001c\u0010\u0005\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\r\u0010\t\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0013"}, d2 = {"Landroidx/compose/material3/RichTooltipColors;", "", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "titleContentColor", "actionContentColor", "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getActionContentColor-0d7_KjU", "()J", "J", "getContainerColor-0d7_KjU", "getContentColor-0d7_KjU", "getTitleContentColor-0d7_KjU", "equals", "", "other", "hashCode", "", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RichTooltipColors {
    public static final int $stable = 0;
    private final long actionContentColor;
    private final long containerColor;
    private final long contentColor;
    private final long titleContentColor;

    public /* synthetic */ RichTooltipColors(long j, long j2, long j3, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4);
    }

    /* renamed from: getActionContentColor-0d7_KjU, reason: not valid java name and from getter */
    public final long getActionContentColor() {
        return this.actionContentColor;
    }

    /* renamed from: getContainerColor-0d7_KjU, reason: not valid java name and from getter */
    public final long getContainerColor() {
        return this.containerColor;
    }

    /* renamed from: getContentColor-0d7_KjU, reason: not valid java name and from getter */
    public final long getContentColor() {
        return this.contentColor;
    }

    /* renamed from: getTitleContentColor-0d7_KjU, reason: not valid java name and from getter */
    public final long getTitleContentColor() {
        return this.titleContentColor;
    }

    private RichTooltipColors(long j, long j2, long j3, long j4) {
        this.containerColor = j;
        this.contentColor = j2;
        this.titleContentColor = j3;
        this.actionContentColor = j4;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RichTooltipColors)) {
            return false;
        }
        RichTooltipColors richTooltipColors = (RichTooltipColors) other;
        return Color.m2640equalsimpl0(this.containerColor, richTooltipColors.containerColor) && Color.m2640equalsimpl0(this.contentColor, richTooltipColors.contentColor) && Color.m2640equalsimpl0(this.titleContentColor, richTooltipColors.titleContentColor) && Color.m2640equalsimpl0(this.actionContentColor, richTooltipColors.actionContentColor);
    }

    public int hashCode() {
        return (((((Color.m2646hashCodeimpl(this.containerColor) * 31) + Color.m2646hashCodeimpl(this.contentColor)) * 31) + Color.m2646hashCodeimpl(this.titleContentColor)) * 31) + Color.m2646hashCodeimpl(this.actionContentColor);
    }
}
