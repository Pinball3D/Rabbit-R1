package androidx.databinding;

import androidx.databinding.Observable;

/* loaded from: classes.dex */
abstract class BaseObservableField extends BaseObservable {
    public BaseObservableField() {
    }

    public BaseObservableField(Observable... observableArr) {
        if (observableArr == null || observableArr.length == 0) {
            return;
        }
        DependencyCallback dependencyCallback = new DependencyCallback();
        for (Observable observable : observableArr) {
            observable.addOnPropertyChangedCallback(dependencyCallback);
        }
    }

    /* loaded from: classes.dex */
    class DependencyCallback extends Observable.OnPropertyChangedCallback {
        DependencyCallback() {
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable observable, int i) {
            BaseObservableField.this.notifyChange();
        }
    }
}
