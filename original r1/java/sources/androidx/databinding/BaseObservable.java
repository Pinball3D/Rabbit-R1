package androidx.databinding;

import androidx.databinding.Observable;

/* loaded from: classes.dex */
public class BaseObservable implements Observable {
    private transient PropertyChangeRegistry mCallbacks;

    @Override // androidx.databinding.Observable
    public void addOnPropertyChangedCallback(Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        synchronized (this) {
            if (this.mCallbacks == null) {
                this.mCallbacks = new PropertyChangeRegistry();
            }
        }
        this.mCallbacks.add(onPropertyChangedCallback);
    }

    @Override // androidx.databinding.Observable
    public void removeOnPropertyChangedCallback(Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        synchronized (this) {
            PropertyChangeRegistry propertyChangeRegistry = this.mCallbacks;
            if (propertyChangeRegistry == null) {
                return;
            }
            propertyChangeRegistry.remove(onPropertyChangedCallback);
        }
    }

    public void notifyChange() {
        synchronized (this) {
            PropertyChangeRegistry propertyChangeRegistry = this.mCallbacks;
            if (propertyChangeRegistry == null) {
                return;
            }
            propertyChangeRegistry.notifyCallbacks(this, 0, null);
        }
    }

    public void notifyPropertyChanged(int i) {
        synchronized (this) {
            PropertyChangeRegistry propertyChangeRegistry = this.mCallbacks;
            if (propertyChangeRegistry == null) {
                return;
            }
            propertyChangeRegistry.notifyCallbacks(this, i, null);
        }
    }
}
