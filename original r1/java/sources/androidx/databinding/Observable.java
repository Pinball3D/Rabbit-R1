package androidx.databinding;

/* loaded from: classes.dex */
public interface Observable {

    /* loaded from: classes.dex */
    public static abstract class OnPropertyChangedCallback {
        public abstract void onPropertyChanged(Observable sender, int propertyId);
    }

    void addOnPropertyChangedCallback(OnPropertyChangedCallback callback);

    void removeOnPropertyChangedCallback(OnPropertyChangedCallback callback);
}
