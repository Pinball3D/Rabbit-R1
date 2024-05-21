package com.google.android.material.timepicker;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
interface TimePickerControls {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ActiveSelection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ClockPeriod {
    }

    void setActiveSelection(int i);

    void setHandRotation(float f);

    void setValues(String[] strArr, int i);

    void updateTime(int i, int i2, int i3);
}
