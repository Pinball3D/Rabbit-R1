package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.R;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;
import kotlin.text.Typography;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class DateFormatTextWatcher extends TextWatcherAdapter {
    private final CalendarConstraints constraints;
    private final DateFormat dateFormat;
    private final String formatHint;
    private int lastLength = 0;
    private final String outOfRange;
    private final Runnable setErrorCallback;
    private Runnable setRangeErrorCallback;
    private final TextInputLayout textInputLayout;

    void onInvalidDate() {
    }

    abstract void onValidDate(Long l);

    /* JADX INFO: Access modifiers changed from: package-private */
    public DateFormatTextWatcher(final String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.formatHint = str;
        this.dateFormat = dateFormat;
        this.textInputLayout = textInputLayout;
        this.constraints = calendarConstraints;
        this.outOfRange = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.setErrorCallback = new Runnable() { // from class: com.google.android.material.datepicker.DateFormatTextWatcher$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DateFormatTextWatcher.this.m5531x5657fb8e(str);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-google-android-material-datepicker-DateFormatTextWatcher, reason: not valid java name */
    public /* synthetic */ void m5531x5657fb8e(String str) {
        TextInputLayout textInputLayout = this.textInputLayout;
        DateFormat dateFormat = this.dateFormat;
        Context context = textInputLayout.getContext();
        textInputLayout.setError(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), sanitizeDateString(str)) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), sanitizeDateString(dateFormat.format(new Date(UtcDates.getTodayCalendar().getTimeInMillis())))));
        onInvalidDate();
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.textInputLayout.removeCallbacks(this.setErrorCallback);
        this.textInputLayout.removeCallbacks(this.setRangeErrorCallback);
        this.textInputLayout.setError(null);
        onValidDate(null);
        if (TextUtils.isEmpty(charSequence) || charSequence.length() < this.formatHint.length()) {
            return;
        }
        try {
            Date parse = this.dateFormat.parse(charSequence.toString());
            this.textInputLayout.setError(null);
            long time = parse.getTime();
            if (this.constraints.getDateValidator().isValid(time) && this.constraints.isWithinBounds(time)) {
                onValidDate(Long.valueOf(parse.getTime()));
                return;
            }
            Runnable createRangeErrorCallback = createRangeErrorCallback(time);
            this.setRangeErrorCallback = createRangeErrorCallback;
            runValidation(this.textInputLayout, createRangeErrorCallback);
        } catch (ParseException unused) {
            runValidation(this.textInputLayout, this.setErrorCallback);
        }
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.lastLength = charSequence.length();
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (!Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) && editable.length() != 0 && editable.length() < this.formatHint.length() && editable.length() >= this.lastLength) {
            char charAt = this.formatHint.charAt(editable.length());
            if (Character.isDigit(charAt)) {
                return;
            }
            editable.append(charAt);
        }
    }

    private Runnable createRangeErrorCallback(final long j) {
        return new Runnable() { // from class: com.google.android.material.datepicker.DateFormatTextWatcher$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DateFormatTextWatcher.this.m5530x14d77527(j);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$createRangeErrorCallback$1$com-google-android-material-datepicker-DateFormatTextWatcher, reason: not valid java name */
    public /* synthetic */ void m5530x14d77527(long j) {
        this.textInputLayout.setError(String.format(this.outOfRange, sanitizeDateString(DateStrings.getDateString(j))));
        onInvalidDate();
    }

    private String sanitizeDateString(String str) {
        return str.replace(' ', Typography.nbsp);
    }

    public void runValidation(View view, Runnable runnable) {
        view.post(runnable);
    }
}
