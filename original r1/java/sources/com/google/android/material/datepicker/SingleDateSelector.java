package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.core.util.Pair;
import com.google.android.material.R;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes2.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new Parcelable.Creator<SingleDateSelector>() { // from class: com.google.android.material.datepicker.SingleDateSelector.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SingleDateSelector createFromParcel(Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.selectedItem = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    };
    private CharSequence error;
    private Long selectedItem;
    private SimpleDateFormat textInputFormat;

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelection() {
        this.selectedItem = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.material.datepicker.DateSelector
    public Long getSelection() {
        return this.selectedItem;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        return this.selectedItem != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j) {
        this.selectedItem = Long.valueOf(j);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void setSelection(Long l) {
        this.selectedItem = l == null ? null : Long.valueOf(UtcDates.canonicalYearMonthDay(l.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<Pair<Long, Long>> getSelectedRanges() {
        return new ArrayList();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l = this.selectedItem;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void setTextInputFormat(SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat != null) {
            simpleDateFormat = (SimpleDateFormat) UtcDates.getNormalizedFormat(simpleDateFormat);
        }
        this.textInputFormat = simpleDateFormat;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, final OnSelectionChangedListener<Long> onSelectionChangedListener) {
        String defaultTextInputHint;
        View inflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date, viewGroup, false);
        final TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(R.id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters()) {
            editText.setInputType(17);
        }
        SimpleDateFormat simpleDateFormat = this.textInputFormat;
        boolean z = simpleDateFormat != null;
        if (!z) {
            simpleDateFormat = UtcDates.getDefaultTextInputFormat();
        }
        SimpleDateFormat simpleDateFormat2 = simpleDateFormat;
        if (z) {
            defaultTextInputHint = simpleDateFormat2.toPattern();
        } else {
            defaultTextInputHint = UtcDates.getDefaultTextInputHint(inflate.getResources(), simpleDateFormat2);
        }
        String str = defaultTextInputHint;
        textInputLayout.setPlaceholderText(str);
        Long l = this.selectedItem;
        if (l != null) {
            editText.setText(simpleDateFormat2.format(l));
        }
        editText.addTextChangedListener(new DateFormatTextWatcher(str, simpleDateFormat2, textInputLayout, calendarConstraints) { // from class: com.google.android.material.datepicker.SingleDateSelector.1
            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            void onValidDate(Long l2) {
                if (l2 == null) {
                    SingleDateSelector.this.clearSelection();
                } else {
                    SingleDateSelector.this.select(l2.longValue());
                }
                SingleDateSelector.this.error = null;
                onSelectionChangedListener.onSelectionChanged(SingleDateSelector.this.getSelection());
            }

            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            void onInvalidDate() {
                SingleDateSelector.this.error = textInputLayout.getError();
                onSelectionChangedListener.onIncompleteSelectionChanged();
            }
        });
        DateSelector.showKeyboardWithAutoHideBehavior(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(Context context) {
        return MaterialAttributes.resolveOrThrow(context, R.attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String getSelectionDisplayString(Context context) {
        Resources resources = context.getResources();
        Long l = this.selectedItem;
        if (l == null) {
            return resources.getString(R.string.mtrl_picker_date_header_unselected);
        }
        return resources.getString(R.string.mtrl_picker_date_header_selected, DateStrings.getYearMonthDay(l.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String getSelectionContentDescription(Context context) {
        String yearMonthDay;
        Resources resources = context.getResources();
        Long l = this.selectedItem;
        if (l == null) {
            yearMonthDay = resources.getString(R.string.mtrl_picker_announce_current_selection_none);
        } else {
            yearMonthDay = DateStrings.getYearMonthDay(l.longValue());
        }
        return resources.getString(R.string.mtrl_picker_announce_current_selection, yearMonthDay);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String getError() {
        if (TextUtils.isEmpty(this.error)) {
            return null;
        }
        return this.error.toString();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return R.string.mtrl_picker_date_header_title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.selectedItem);
    }
}
