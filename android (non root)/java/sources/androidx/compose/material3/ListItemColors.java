package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ListItem.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001BR\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\fJ\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0014J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0010J\u0018\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0010J \u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0014R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\rR\u0019\u0010\t\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\rR\u0019\u0010\n\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\rR\u0019\u0010\u000b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\rR\u0019\u0010\u0004\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\rR\u0019\u0010\u0005\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\rR\u0019\u0010\u0006\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\rR\u0019\u0010\u0007\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\rR\u0019\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\r\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001a"}, d2 = {"Landroidx/compose/material3/ListItemColors;", "", "containerColor", "Landroidx/compose/ui/graphics/Color;", "headlineColor", "leadingIconColor", "overlineColor", "supportingTextColor", "trailingIconColor", "disabledHeadlineColor", "disabledLeadingIconColor", "disabledTrailingIconColor", "(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "Landroidx/compose/runtime/State;", "containerColor$material3_release", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "enabled", "", "headlineColor$material3_release", "(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "leadingIconColor$material3_release", "overlineColor$material3_release", "supportingColor", "supportingColor$material3_release", "trailingIconColor$material3_release", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ListItemColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long disabledHeadlineColor;
    private final long disabledLeadingIconColor;
    private final long disabledTrailingIconColor;
    private final long headlineColor;
    private final long leadingIconColor;
    private final long overlineColor;
    private final long supportingTextColor;
    private final long trailingIconColor;

    public /* synthetic */ ListItemColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9);
    }

    private ListItemColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9) {
        this.containerColor = j;
        this.headlineColor = j2;
        this.leadingIconColor = j3;
        this.overlineColor = j4;
        this.supportingTextColor = j5;
        this.trailingIconColor = j6;
        this.disabledHeadlineColor = j7;
        this.disabledLeadingIconColor = j8;
        this.disabledTrailingIconColor = j9;
    }

    public final State<Color> containerColor$material3_release(Composer composer, int i) {
        composer.startReplaceableGroup(-380363090);
        ComposerKt.sourceInformation(composer, "C(containerColor)348@14040L36:ListItem.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-380363090, i, -1, "androidx.compose.material3.ListItemColors.containerColor (ListItem.kt:347)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(this.containerColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> headlineColor$material3_release(boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(-1254314043);
        ComposerKt.sourceInformation(composer, "C(headlineColor)354@14259L97:ListItem.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1254314043, i, -1, "androidx.compose.material3.ListItemColors.headlineColor (ListItem.kt:353)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? this.headlineColor : this.disabledHeadlineColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> leadingIconColor$material3_release(boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(694213044);
        ComposerKt.sourceInformation(composer, "C(leadingIconColor)362@14544L103:ListItem.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(694213044, i, -1, "androidx.compose.material3.ListItemColors.leadingIconColor (ListItem.kt:361)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? this.leadingIconColor : this.disabledLeadingIconColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> overlineColor$material3_release(Composer composer, int i) {
        composer.startReplaceableGroup(-1467587733);
        ComposerKt.sourceInformation(composer, "C(overlineColor)370@14814L35:ListItem.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1467587733, i, -1, "androidx.compose.material3.ListItemColors.overlineColor (ListItem.kt:369)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(this.overlineColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> supportingColor$material3_release(Composer composer, int i) {
        composer.startReplaceableGroup(-1251828896);
        ComposerKt.sourceInformation(composer, "C(supportingColor)376@15020L41:ListItem.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1251828896, i, -1, "androidx.compose.material3.ListItemColors.supportingColor (ListItem.kt:375)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(this.supportingTextColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> trailingIconColor$material3_release(boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(-778325338);
        ComposerKt.sourceInformation(composer, "C(trailingIconColor)382@15251L105:ListItem.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-778325338, i, -1, "androidx.compose.material3.ListItemColors.trailingIconColor (ListItem.kt:381)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? this.trailingIconColor : this.disabledTrailingIconColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }
}
