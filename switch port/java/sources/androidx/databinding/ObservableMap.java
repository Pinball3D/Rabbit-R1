package androidx.databinding;

import java.util.Map;

/* loaded from: classes.dex */
public interface ObservableMap<K, V> extends Map<K, V> {

    /* loaded from: classes.dex */
    public static abstract class OnMapChangedCallback<T extends ObservableMap<K, V>, K, V> {
        public abstract void onMapChanged(T sender, K key);
    }

    void addOnMapChangedCallback(OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> callback);

    void removeOnMapChangedCallback(OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> callback);
}
