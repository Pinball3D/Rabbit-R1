package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.util.Preconditions;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {
    private static final int COMPARATOR_ALL_ID = 2;
    private static final int COMPARATOR_ANY_ID = 1;
    private final Operator operator;
    private final List<CalendarConstraints.DateValidator> validators;
    private static final Operator ANY_OPERATOR = new Operator() { // from class: com.google.android.material.datepicker.CompositeDateValidator.1
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public int getId() {
            return 1;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public boolean isValid(List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && dateValidator.isValid(j)) {
                    return true;
                }
            }
            return false;
        }
    };
    private static final Operator ALL_OPERATOR = new Operator() { // from class: com.google.android.material.datepicker.CompositeDateValidator.2
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public int getId() {
            return 2;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public boolean isValid(List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && !dateValidator.isValid(j)) {
                    return false;
                }
            }
            return true;
        }
    };
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new Parcelable.Creator<CompositeDateValidator>() { // from class: com.google.android.material.datepicker.CompositeDateValidator.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CompositeDateValidator createFromParcel(Parcel parcel) {
            Operator operator;
            ArrayList readArrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int readInt = parcel.readInt();
            if (readInt == 2) {
                operator = CompositeDateValidator.ALL_OPERATOR;
            } else if (readInt == 1) {
                operator = CompositeDateValidator.ANY_OPERATOR;
            } else {
                operator = CompositeDateValidator.ALL_OPERATOR;
            }
            return new CompositeDateValidator((List) Preconditions.checkNotNull(readArrayList), operator);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CompositeDateValidator[] newArray(int i) {
            return new CompositeDateValidator[i];
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface Operator {
        int getId();

        boolean isValid(List<CalendarConstraints.DateValidator> list, long j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private CompositeDateValidator(List<CalendarConstraints.DateValidator> list, Operator operator) {
        this.validators = list;
        this.operator = operator;
    }

    public static CalendarConstraints.DateValidator allOf(List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, ALL_OPERATOR);
    }

    public static CalendarConstraints.DateValidator anyOf(List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, ANY_OPERATOR);
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public boolean isValid(long j) {
        return this.operator.isValid(this.validators, j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.validators);
        parcel.writeInt(this.operator.getId());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
        return this.validators.equals(compositeDateValidator.validators) && this.operator.getId() == compositeDateValidator.operator.getId();
    }

    public int hashCode() {
        return this.validators.hashCode();
    }
}
