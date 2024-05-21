package androidx.compose.material3;

import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DateInput.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0002\u0010\u0011J-\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Landroidx/compose/material3/DateInputValidator;", "", "stateData", "Landroidx/compose/material3/StateData;", "dateInputFormat", "Landroidx/compose/material3/DateInputFormat;", "dateFormatter", "Landroidx/compose/material3/DatePickerFormatter;", "dateValidator", "Lkotlin/Function1;", "", "", "errorDatePattern", "", "errorDateOutOfYearRange", "errorInvalidNotAllowed", "errorInvalidRangeInput", "(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "validate", "calendarDate", "Landroidx/compose/material3/CalendarDate;", "inputIdentifier", "Landroidx/compose/material3/InputIdentifier;", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "validate-XivgLIo", "(Landroidx/compose/material3/CalendarDate;ILjava/util/Locale;)Ljava/lang/String;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DateInputValidator {
    private final DatePickerFormatter dateFormatter;
    private final DateInputFormat dateInputFormat;
    private final Function1<Long, Boolean> dateValidator;
    private final String errorDateOutOfYearRange;
    private final String errorDatePattern;
    private final String errorInvalidNotAllowed;
    private final String errorInvalidRangeInput;
    private final StateData stateData;

    /* JADX WARN: Multi-variable type inference failed */
    public DateInputValidator(StateData stateData, DateInputFormat dateInputFormat, DatePickerFormatter dateFormatter, Function1<? super Long, Boolean> dateValidator, String errorDatePattern, String errorDateOutOfYearRange, String errorInvalidNotAllowed, String errorInvalidRangeInput) {
        Intrinsics.checkNotNullParameter(stateData, "stateData");
        Intrinsics.checkNotNullParameter(dateInputFormat, "dateInputFormat");
        Intrinsics.checkNotNullParameter(dateFormatter, "dateFormatter");
        Intrinsics.checkNotNullParameter(dateValidator, "dateValidator");
        Intrinsics.checkNotNullParameter(errorDatePattern, "errorDatePattern");
        Intrinsics.checkNotNullParameter(errorDateOutOfYearRange, "errorDateOutOfYearRange");
        Intrinsics.checkNotNullParameter(errorInvalidNotAllowed, "errorInvalidNotAllowed");
        Intrinsics.checkNotNullParameter(errorInvalidRangeInput, "errorInvalidRangeInput");
        this.stateData = stateData;
        this.dateInputFormat = dateInputFormat;
        this.dateFormatter = dateFormatter;
        this.dateValidator = dateValidator;
        this.errorDatePattern = errorDatePattern;
        this.errorDateOutOfYearRange = errorDateOutOfYearRange;
        this.errorInvalidNotAllowed = errorInvalidNotAllowed;
        this.errorInvalidRangeInput = errorInvalidRangeInput;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d1, code lost:
    
        if (r0 < (r12 != null ? r12.getUtcTimeMillis() : Long.MAX_VALUE)) goto L22;
     */
    /* renamed from: validate-XivgLIo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m1143validateXivgLIo(androidx.compose.material3.CalendarDate r10, int r11, java.util.Locale r12) {
        /*
            r9 = this;
            java.lang.String r0 = "locale"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            r0 = 1
            java.lang.String r1 = "format(this, *args)"
            if (r10 != 0) goto L2e
            java.lang.String r10 = r9.errorDatePattern
            androidx.compose.material3.DateInputFormat r9 = r9.dateInputFormat
            java.lang.String r9 = r9.getPatternWithDelimiters()
            java.util.Locale r11 = java.util.Locale.ROOT
            java.lang.String r9 = r9.toUpperCase(r11)
            java.lang.String r11 = "this as java.lang.String).toUpperCase(Locale.ROOT)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r11)
            java.lang.Object[] r9 = new java.lang.Object[]{r9}
            java.lang.Object[] r9 = java.util.Arrays.copyOf(r9, r0)
            java.lang.String r9 = java.lang.String.format(r10, r9)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r1)
            return r9
        L2e:
            androidx.compose.material3.StateData r2 = r9.stateData
            kotlin.ranges.IntRange r2 = r2.getYearRange()
            int r3 = r10.getYear()
            boolean r2 = r2.contains(r3)
            if (r2 != 0) goto L6d
            java.lang.String r10 = r9.errorDateOutOfYearRange
            androidx.compose.material3.StateData r11 = r9.stateData
            kotlin.ranges.IntRange r11 = r11.getYearRange()
            int r11 = r11.getFirst()
            java.lang.String r11 = androidx.compose.material3.DatePickerKt.toLocalString(r11)
            androidx.compose.material3.StateData r9 = r9.stateData
            kotlin.ranges.IntRange r9 = r9.getYearRange()
            int r9 = r9.getLast()
            java.lang.String r9 = androidx.compose.material3.DatePickerKt.toLocalString(r9)
            java.lang.Object[] r9 = new java.lang.Object[]{r11, r9}
            r11 = 2
            java.lang.Object[] r9 = java.util.Arrays.copyOf(r9, r11)
            java.lang.String r9 = java.lang.String.format(r10, r9)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r1)
            return r9
        L6d:
            kotlin.jvm.functions.Function1<java.lang.Long, java.lang.Boolean> r2 = r9.dateValidator
            long r3 = r10.getUtcTimeMillis()
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            java.lang.Object r2 = r2.invoke(r3)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto La7
            java.lang.String r11 = r9.errorInvalidNotAllowed
            androidx.compose.material3.DatePickerFormatter r2 = r9.dateFormatter
            androidx.compose.material3.StateData r9 = r9.stateData
            androidx.compose.material3.CalendarModel r4 = r9.getCalendarModel()
            r6 = 0
            r7 = 8
            r8 = 0
            r3 = r10
            r5 = r12
            java.lang.String r9 = androidx.compose.material3.DatePickerFormatter.formatDate$material3_release$default(r2, r3, r4, r5, r6, r7, r8)
            java.lang.Object[] r9 = new java.lang.Object[]{r9}
            java.lang.Object[] r9 = java.util.Arrays.copyOf(r9, r0)
            java.lang.String r9 = java.lang.String.format(r11, r9)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r1)
            return r9
        La7:
            androidx.compose.material3.InputIdentifier$Companion r12 = androidx.compose.material3.InputIdentifier.INSTANCE
            int r12 = r12.m1263getStartDateInputJ2x2o4M()
            boolean r12 = androidx.compose.material3.InputIdentifier.m1257equalsimpl0(r11, r12)
            if (r12 == 0) goto Ld3
            long r0 = r10.getUtcTimeMillis()
            androidx.compose.material3.StateData r12 = r9.stateData
            androidx.compose.runtime.MutableState r12 = r12.getSelectedEndDate()
            java.lang.Object r12 = r12.getValue()
            androidx.compose.material3.CalendarDate r12 = (androidx.compose.material3.CalendarDate) r12
            if (r12 == 0) goto Lca
            long r2 = r12.getUtcTimeMillis()
            goto Lcf
        Lca:
            r2 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
        Lcf:
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 >= 0) goto Lfc
        Ld3:
            androidx.compose.material3.InputIdentifier$Companion r12 = androidx.compose.material3.InputIdentifier.INSTANCE
            int r12 = r12.m1261getEndDateInputJ2x2o4M()
            boolean r11 = androidx.compose.material3.InputIdentifier.m1257equalsimpl0(r11, r12)
            if (r11 == 0) goto Lff
            long r10 = r10.getUtcTimeMillis()
            androidx.compose.material3.StateData r12 = r9.stateData
            androidx.compose.runtime.MutableState r12 = r12.getSelectedStartDate()
            java.lang.Object r12 = r12.getValue()
            androidx.compose.material3.CalendarDate r12 = (androidx.compose.material3.CalendarDate) r12
            if (r12 == 0) goto Lf6
            long r0 = r12.getUtcTimeMillis()
            goto Lf8
        Lf6:
            r0 = -9223372036854775808
        Lf8:
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 > 0) goto Lff
        Lfc:
            java.lang.String r9 = r9.errorInvalidRangeInput
            return r9
        Lff:
            java.lang.String r9 = ""
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DateInputValidator.m1143validateXivgLIo(androidx.compose.material3.CalendarDate, int, java.util.Locale):java.lang.String");
    }
}
