package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.OffsetMapping;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextPreparedSelection.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B8\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000bø\u0001\u0000¢\u0006\u0002\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/text/selection/TextPreparedSelection;", "Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;", "originalText", "Landroidx/compose/ui/text/AnnotatedString;", "originalSelection", "Landroidx/compose/ui/text/TextRange;", "layoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "offsetMapping", "Landroidx/compose/ui/text/input/OffsetMapping;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;", "(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextPreparedSelection extends BaseTextPreparedSelection<TextPreparedSelection> {
    public /* synthetic */ TextPreparedSelection(AnnotatedString annotatedString, long j, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, TextPreparedSelectionState textPreparedSelectionState, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j, textLayoutResult, offsetMapping, textPreparedSelectionState);
    }

    public /* synthetic */ TextPreparedSelection(AnnotatedString annotatedString, long j, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, TextPreparedSelectionState textPreparedSelectionState, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j, (i & 4) != 0 ? null : textLayoutResult, (i & 8) != 0 ? OffsetMapping.INSTANCE.getIdentity() : offsetMapping, (i & 16) != 0 ? new TextPreparedSelectionState() : textPreparedSelectionState, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private TextPreparedSelection(AnnotatedString originalText, long j, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, TextPreparedSelectionState state) {
        super(originalText, j, textLayoutResult, offsetMapping, state, null);
        Intrinsics.checkNotNullParameter(originalText, "originalText");
        Intrinsics.checkNotNullParameter(offsetMapping, "offsetMapping");
        Intrinsics.checkNotNullParameter(state, "state");
    }
}
