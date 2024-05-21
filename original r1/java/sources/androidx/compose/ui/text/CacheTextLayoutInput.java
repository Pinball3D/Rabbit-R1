package androidx.compose.ui.text;

import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextMeasurer.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/CacheTextLayoutInput;", "", "textLayoutInput", "Landroidx/compose/ui/text/TextLayoutInput;", "(Landroidx/compose/ui/text/TextLayoutInput;)V", "getTextLayoutInput", "()Landroidx/compose/ui/text/TextLayoutInput;", "equals", "", "other", "hashCode", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CacheTextLayoutInput {
    private final TextLayoutInput textLayoutInput;

    public final TextLayoutInput getTextLayoutInput() {
        return this.textLayoutInput;
    }

    public CacheTextLayoutInput(TextLayoutInput textLayoutInput) {
        Intrinsics.checkNotNullParameter(textLayoutInput, "textLayoutInput");
        this.textLayoutInput = textLayoutInput;
    }

    public int hashCode() {
        TextLayoutInput textLayoutInput = this.textLayoutInput;
        return (((((((((((((((((((textLayoutInput.getText().hashCode() * 31) + textLayoutInput.getStyle().hashCodeLayoutAffectingAttributes$ui_text_release()) * 31) + textLayoutInput.getPlaceholders().hashCode()) * 31) + textLayoutInput.getMaxLines()) * 31) + Boolean.hashCode(textLayoutInput.getSoftWrap())) * 31) + TextOverflow.m4818hashCodeimpl(textLayoutInput.getOverflow())) * 31) + textLayoutInput.getDensity().hashCode()) * 31) + textLayoutInput.getLayoutDirection().hashCode()) * 31) + textLayoutInput.getFontFamilyResolver().hashCode()) * 31) + Integer.hashCode(Constraints.m4839getMaxWidthimpl(textLayoutInput.getConstraints()))) * 31) + Integer.hashCode(Constraints.m4838getMaxHeightimpl(textLayoutInput.getConstraints()));
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CacheTextLayoutInput)) {
            return false;
        }
        TextLayoutInput textLayoutInput = this.textLayoutInput;
        CacheTextLayoutInput cacheTextLayoutInput = (CacheTextLayoutInput) other;
        return Intrinsics.areEqual(textLayoutInput.getText(), cacheTextLayoutInput.textLayoutInput.getText()) && textLayoutInput.getStyle().hasSameLayoutAffectingAttributes(cacheTextLayoutInput.textLayoutInput.getStyle()) && Intrinsics.areEqual(textLayoutInput.getPlaceholders(), cacheTextLayoutInput.textLayoutInput.getPlaceholders()) && textLayoutInput.getMaxLines() == cacheTextLayoutInput.textLayoutInput.getMaxLines() && textLayoutInput.getSoftWrap() == cacheTextLayoutInput.textLayoutInput.getSoftWrap() && TextOverflow.m4817equalsimpl0(textLayoutInput.getOverflow(), cacheTextLayoutInput.textLayoutInput.getOverflow()) && Intrinsics.areEqual(textLayoutInput.getDensity(), cacheTextLayoutInput.textLayoutInput.getDensity()) && textLayoutInput.getLayoutDirection() == cacheTextLayoutInput.textLayoutInput.getLayoutDirection() && textLayoutInput.getFontFamilyResolver() == cacheTextLayoutInput.textLayoutInput.getFontFamilyResolver() && Constraints.m4839getMaxWidthimpl(textLayoutInput.getConstraints()) == Constraints.m4839getMaxWidthimpl(cacheTextLayoutInput.textLayoutInput.getConstraints()) && Constraints.m4838getMaxHeightimpl(textLayoutInput.getConstraints()) == Constraints.m4838getMaxHeightimpl(cacheTextLayoutInput.textLayoutInput.getConstraints());
    }
}
