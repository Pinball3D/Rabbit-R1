package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: DateRangePicker.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \"2\u00020\u0001:\u0001\"B8\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\tø\u0001\u0000¢\u0006\u0002\u0010\nB\u000f\b\u0002\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u001f\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u00032\b\u0010 \u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010!R4\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t8F@FX\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00038F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u00038F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u0014\u0010\u000b\u001a\u00020\fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006#"}, d2 = {"Landroidx/compose/material3/DateRangePickerState;", "", "initialSelectedStartDateMillis", "", "initialSelectedEndDateMillis", "initialDisplayedMonthMillis", "yearRange", "Lkotlin/ranges/IntRange;", "initialDisplayMode", "Landroidx/compose/material3/DisplayMode;", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "stateData", "Landroidx/compose/material3/StateData;", "(Landroidx/compose/material3/StateData;)V", "<set-?>", "displayMode", "getDisplayMode-jFl-4v0", "()I", "setDisplayMode-vCnGnXg", "(I)V", "displayMode$delegate", "Landroidx/compose/runtime/MutableState;", "selectedEndDateMillis", "getSelectedEndDateMillis", "()Ljava/lang/Long;", "selectedStartDateMillis", "getSelectedStartDateMillis", "getStateData$material3_release", "()Landroidx/compose/material3/StateData;", "setSelection", "", "startDateMillis", "endDateMillis", "(Ljava/lang/Long;Ljava/lang/Long;)V", "Companion", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DateRangePickerState {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: displayMode$delegate, reason: from kotlin metadata */
    private final MutableState displayMode;
    private final StateData stateData;

    public /* synthetic */ DateRangePickerState(StateData stateData, DefaultConstructorMarker defaultConstructorMarker) {
        this(stateData);
    }

    public /* synthetic */ DateRangePickerState(Long l, Long l2, Long l3, IntRange intRange, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(l, l2, l3, intRange, i);
    }

    /* renamed from: getStateData$material3_release, reason: from getter */
    public final StateData getStateData() {
        return this.stateData;
    }

    private DateRangePickerState(StateData stateData) {
        this.stateData = stateData;
        this.displayMode = stateData.getDisplayMode();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    private DateRangePickerState(Long l, Long l2, Long l3, IntRange yearRange, int i) {
        this(new StateData(l, l2, l3, yearRange, i, null));
        Intrinsics.checkNotNullParameter(yearRange, "yearRange");
    }

    public final Long getSelectedStartDateMillis() {
        CalendarDate value = this.stateData.getSelectedStartDate().getValue();
        if (value != null) {
            return Long.valueOf(value.getUtcTimeMillis());
        }
        return null;
    }

    public final Long getSelectedEndDateMillis() {
        CalendarDate value = this.stateData.getSelectedEndDate().getValue();
        if (value != null) {
            return Long.valueOf(value.getUtcTimeMillis());
        }
        return null;
    }

    public final void setSelection(Long startDateMillis, Long endDateMillis) {
        this.stateData.setSelection(startDateMillis, endDateMillis);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getDisplayMode-jFl-4v0, reason: not valid java name */
    public final int m1166getDisplayModejFl4v0() {
        return ((DisplayMode) this.displayMode.getValue()).getValue();
    }

    /* renamed from: setDisplayMode-vCnGnXg, reason: not valid java name */
    public final void m1167setDisplayModevCnGnXg(int i) {
        this.displayMode.setValue(DisplayMode.m1176boximpl(i));
    }

    /* compiled from: DateRangePicker.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\f\u0012\u0004\u0012\u00020\u0005\u0012\u0002\b\u00030\u0004¨\u0006\u0006"}, d2 = {"Landroidx/compose/material3/DateRangePickerState$Companion;", "", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/material3/DateRangePickerState;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver<DateRangePickerState, ?> Saver() {
            return SaverKt.Saver(new Function2<SaverScope, DateRangePickerState, Object>() { // from class: androidx.compose.material3.DateRangePickerState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(SaverScope Saver, DateRangePickerState it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return StateData.INSTANCE.Saver().save(Saver, it.getStateData());
                }
            }, new Function1<Object, DateRangePickerState>() { // from class: androidx.compose.material3.DateRangePickerState$Companion$Saver$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                public final DateRangePickerState invoke(Object value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    StateData restore = StateData.INSTANCE.Saver().restore(value);
                    Intrinsics.checkNotNull(restore);
                    return new DateRangePickerState(restore, null);
                }
            });
        }
    }
}
