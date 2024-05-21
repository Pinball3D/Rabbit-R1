package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchBar.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\"\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0013"}, d2 = {"Landroidx/compose/material3/SearchBarColors;", "", "containerColor", "Landroidx/compose/ui/graphics/Color;", "dividerColor", "inputFieldColors", "Landroidx/compose/material3/TextFieldColors;", "(JJLandroidx/compose/material3/TextFieldColors;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getContainerColor-0d7_KjU", "()J", "J", "getDividerColor-0d7_KjU", "getInputFieldColors", "()Landroidx/compose/material3/TextFieldColors;", "equals", "", "other", "hashCode", "", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SearchBarColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long dividerColor;
    private final TextFieldColors inputFieldColors;

    public /* synthetic */ SearchBarColors(long j, long j2, TextFieldColors textFieldColors, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, textFieldColors);
    }

    /* renamed from: getContainerColor-0d7_KjU, reason: not valid java name and from getter */
    public final long getContainerColor() {
        return this.containerColor;
    }

    /* renamed from: getDividerColor-0d7_KjU, reason: not valid java name and from getter */
    public final long getDividerColor() {
        return this.dividerColor;
    }

    public final TextFieldColors getInputFieldColors() {
        return this.inputFieldColors;
    }

    private SearchBarColors(long j, long j2, TextFieldColors inputFieldColors) {
        Intrinsics.checkNotNullParameter(inputFieldColors, "inputFieldColors");
        this.containerColor = j;
        this.dividerColor = j2;
        this.inputFieldColors = inputFieldColors;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type androidx.compose.material3.SearchBarColors");
        SearchBarColors searchBarColors = (SearchBarColors) other;
        return Color.m2640equalsimpl0(this.containerColor, searchBarColors.containerColor) && Color.m2640equalsimpl0(this.dividerColor, searchBarColors.dividerColor) && Intrinsics.areEqual(this.inputFieldColors, searchBarColors.inputFieldColors);
    }

    public int hashCode() {
        return (((Color.m2646hashCodeimpl(this.containerColor) * 31) + Color.m2646hashCodeimpl(this.dividerColor)) * 31) + this.inputFieldColors.hashCode();
    }
}
