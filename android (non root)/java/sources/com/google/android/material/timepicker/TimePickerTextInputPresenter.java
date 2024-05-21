package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.timepicker.TimePickerView;
import java.lang.reflect.Field;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TimePickerTextInputPresenter implements TimePickerView.OnSelectionChange, TimePickerPresenter {
    private final TimePickerTextInputKeyController controller;
    private final EditText hourEditText;
    private final ChipTextInputComboView hourTextInput;
    private final EditText minuteEditText;
    private final ChipTextInputComboView minuteTextInput;
    private final TimeModel time;
    private final LinearLayout timePickerView;
    private MaterialButtonToggleGroup toggle;
    private final TextWatcher minuteTextWatcher = new TextWatcherAdapter() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.1
        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    TimePickerTextInputPresenter.this.time.setMinute(0);
                } else {
                    TimePickerTextInputPresenter.this.time.setMinute(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    };
    private final TextWatcher hourTextWatcher = new TextWatcherAdapter() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.2
        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    TimePickerTextInputPresenter.this.time.setHour(0);
                } else {
                    TimePickerTextInputPresenter.this.time.setHour(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    };

    public TimePickerTextInputPresenter(LinearLayout linearLayout, final TimeModel timeModel) {
        this.timePickerView = linearLayout;
        this.time = timeModel;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_minute_text_input);
        this.minuteTextInput = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_hour_text_input);
        this.hourTextInput = chipTextInputComboView2;
        TextView textView = (TextView) chipTextInputComboView.findViewById(R.id.material_label);
        TextView textView2 = (TextView) chipTextInputComboView2.findViewById(R.id.material_label);
        textView.setText(resources.getString(R.string.material_timepicker_minute));
        textView2.setText(resources.getString(R.string.material_timepicker_hour));
        chipTextInputComboView.setTag(R.id.selection_type, 12);
        chipTextInputComboView2.setTag(R.id.selection_type, 10);
        if (timeModel.format == 0) {
            setupPeriodToggle();
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TimePickerTextInputPresenter.this.onSelectionChanged(((Integer) view.getTag(R.id.selection_type)).intValue());
            }
        };
        chipTextInputComboView2.setOnClickListener(onClickListener);
        chipTextInputComboView.setOnClickListener(onClickListener);
        chipTextInputComboView2.addInputFilter(timeModel.getHourInputValidator());
        chipTextInputComboView.addInputFilter(timeModel.getMinuteInputValidator());
        this.hourEditText = chipTextInputComboView2.getTextInput().getEditText();
        this.minuteEditText = chipTextInputComboView.getTextInput().getEditText();
        this.controller = new TimePickerTextInputKeyController(chipTextInputComboView2, chipTextInputComboView, timeModel);
        chipTextInputComboView2.setChipDelegate(new ClickActionDelegate(linearLayout.getContext(), R.string.material_hour_selection) { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.4
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(timeModel.getHourContentDescriptionResId(), String.valueOf(timeModel.getHourForDisplay())));
            }
        });
        chipTextInputComboView.setChipDelegate(new ClickActionDelegate(linearLayout.getContext(), R.string.material_minute_selection) { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.5
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(timeModel.minute)));
            }
        });
        initialize();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void initialize() {
        addTextWatchers();
        setTime(this.time);
        this.controller.bind();
    }

    private void addTextWatchers() {
        this.hourEditText.addTextChangedListener(this.hourTextWatcher);
        this.minuteEditText.addTextChangedListener(this.minuteTextWatcher);
    }

    private void removeTextWatchers() {
        this.hourEditText.removeTextChangedListener(this.hourTextWatcher);
        this.minuteEditText.removeTextChangedListener(this.minuteTextWatcher);
    }

    private void setTime(TimeModel timeModel) {
        removeTextWatchers();
        Locale locale = this.timePickerView.getResources().getConfiguration().locale;
        String format = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.minute));
        String format2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.getHourForDisplay()));
        this.minuteTextInput.setText(format);
        this.hourTextInput.setText(format2);
        addTextWatchers();
        updateSelection();
    }

    private void setupPeriodToggle() {
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.timePickerView.findViewById(R.id.material_clock_period_toggle);
        this.toggle = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter$$ExternalSyntheticLambda0
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
            public final void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup2, int i, boolean z) {
                TimePickerTextInputPresenter.this.m5572xf2085e95(materialButtonToggleGroup2, i, z);
            }
        });
        this.toggle.setVisibility(0);
        updateSelection();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setupPeriodToggle$0$com-google-android-material-timepicker-TimePickerTextInputPresenter, reason: not valid java name */
    public /* synthetic */ void m5572xf2085e95(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
        if (z) {
            this.time.setPeriod(i == R.id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    private void updateSelection() {
        int i;
        MaterialButtonToggleGroup materialButtonToggleGroup = this.toggle;
        if (materialButtonToggleGroup == null) {
            return;
        }
        if (this.time.period == 0) {
            i = R.id.material_clock_period_am_button;
        } else {
            i = R.id.material_clock_period_pm_button;
        }
        materialButtonToggleGroup.check(i);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnSelectionChange
    public void onSelectionChanged(int i) {
        this.time.selection = i;
        this.minuteTextInput.setChecked(i == 12);
        this.hourTextInput.setChecked(i == 10);
        updateSelection();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void show() {
        this.timePickerView.setVisibility(0);
        onSelectionChanged(this.time.selection);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void hide() {
        View focusedChild = this.timePickerView.getFocusedChild();
        if (focusedChild != null) {
            ViewUtils.hideKeyboard(focusedChild, false);
        }
        this.timePickerView.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void invalidate() {
        setTime(this.time);
    }

    private static void setCursorDrawableColor(EditText editText, int i) {
        try {
            Context context = editText.getContext();
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i2 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            Drawable drawable = AppCompatResources.getDrawable(context, i2);
            drawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, new Drawable[]{drawable, drawable});
        } catch (Throwable unused) {
        }
    }

    public void resetChecked() {
        this.minuteTextInput.setChecked(this.time.selection == 12);
        this.hourTextInput.setChecked(this.time.selection == 10);
    }

    public void clearCheck() {
        this.minuteTextInput.setChecked(false);
        this.hourTextInput.setChecked(false);
    }
}
