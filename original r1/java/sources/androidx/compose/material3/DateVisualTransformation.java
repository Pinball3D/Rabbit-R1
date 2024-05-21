package androidx.compose.material3;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: DateInput.kt */
@Metadata(d1 = {"\u0000+\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\b\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/compose/material3/DateVisualTransformation;", "Landroidx/compose/ui/text/input/VisualTransformation;", "dateInputFormat", "Landroidx/compose/material3/DateInputFormat;", "(Landroidx/compose/material3/DateInputFormat;)V", "dateFormatLength", "", "dateOffsetTranslator", "androidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1", "Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;", "firstDelimiterOffset", "secondDelimiterOffset", "filter", "Landroidx/compose/ui/text/input/TransformedText;", "text", "Landroidx/compose/ui/text/AnnotatedString;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class DateVisualTransformation implements VisualTransformation {
    private final int dateFormatLength;
    private final DateInputFormat dateInputFormat;
    private final DateVisualTransformation$dateOffsetTranslator$1 dateOffsetTranslator;
    private final int firstDelimiterOffset;
    private final int secondDelimiterOffset;

    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.material3.DateVisualTransformation$dateOffsetTranslator$1] */
    public DateVisualTransformation(DateInputFormat dateInputFormat) {
        Intrinsics.checkNotNullParameter(dateInputFormat, "dateInputFormat");
        this.dateInputFormat = dateInputFormat;
        this.firstDelimiterOffset = StringsKt.indexOf$default((CharSequence) dateInputFormat.getPatternWithDelimiters(), dateInputFormat.getDelimiter(), 0, false, 6, (Object) null);
        this.secondDelimiterOffset = StringsKt.lastIndexOf$default((CharSequence) dateInputFormat.getPatternWithDelimiters(), dateInputFormat.getDelimiter(), 0, false, 6, (Object) null);
        this.dateFormatLength = dateInputFormat.getPatternWithoutDelimiters().length();
        this.dateOffsetTranslator = new OffsetMapping() { // from class: androidx.compose.material3.DateVisualTransformation$dateOffsetTranslator$1
            @Override // androidx.compose.ui.text.input.OffsetMapping
            public int originalToTransformed(int offset) {
                int i;
                int i2;
                int i3;
                int i4;
                i = DateVisualTransformation.this.firstDelimiterOffset;
                if (offset < i) {
                    return offset;
                }
                i2 = DateVisualTransformation.this.secondDelimiterOffset;
                if (offset < i2) {
                    return offset + 1;
                }
                i3 = DateVisualTransformation.this.dateFormatLength;
                if (offset <= i3) {
                    return offset + 2;
                }
                i4 = DateVisualTransformation.this.dateFormatLength;
                return i4 + 2;
            }

            @Override // androidx.compose.ui.text.input.OffsetMapping
            public int transformedToOriginal(int offset) {
                int i;
                int i2;
                int i3;
                int i4;
                i = DateVisualTransformation.this.firstDelimiterOffset;
                if (offset <= i - 1) {
                    return offset;
                }
                i2 = DateVisualTransformation.this.secondDelimiterOffset;
                if (offset <= i2 - 1) {
                    return offset - 1;
                }
                i3 = DateVisualTransformation.this.dateFormatLength;
                if (offset <= i3 + 1) {
                    return offset - 2;
                }
                i4 = DateVisualTransformation.this.dateFormatLength;
                return i4;
            }
        };
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    public TransformedText filter(AnnotatedString text) {
        String text2;
        Intrinsics.checkNotNullParameter(text, "text");
        int i = 0;
        if (text.getText().length() > this.dateFormatLength) {
            text2 = StringsKt.substring(text.getText(), RangesKt.until(0, this.dateFormatLength));
        } else {
            text2 = text.getText();
        }
        String str = text2;
        String str2 = "";
        int i2 = 0;
        while (i < str.length()) {
            int i3 = i2 + 1;
            String str3 = str2 + str.charAt(i);
            str2 = (i3 == this.firstDelimiterOffset || i2 + 2 == this.secondDelimiterOffset) ? str3 + this.dateInputFormat.getDelimiter() : str3;
            i++;
            i2 = i3;
        }
        return new TransformedText(new AnnotatedString(str2, null, null, 6, null), this.dateOffsetTranslator);
    }
}
