package androidx.databinding;

import java.io.Serializable;

/* loaded from: classes.dex */
public class ObservableField<T> extends BaseObservableField implements Serializable {
    static final long serialVersionUID = 1;
    private T mValue;

    public T get() {
        return this.mValue;
    }

    public ObservableField(T t) {
        this.mValue = t;
    }

    public ObservableField() {
    }

    public ObservableField(Observable... observableArr) {
        super(observableArr);
    }

    public void set(T t) {
        if (t != this.mValue) {
            this.mValue = t;
            notifyChange();
        }
    }
}
