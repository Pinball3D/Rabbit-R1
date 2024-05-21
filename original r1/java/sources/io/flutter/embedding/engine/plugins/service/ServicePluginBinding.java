package io.flutter.embedding.engine.plugins.service;

import android.app.Service;
import io.flutter.embedding.engine.plugins.service.ServiceAware;

/* loaded from: classes3.dex */
public interface ServicePluginBinding {
    void addOnModeChangeListener(ServiceAware.OnModeChangeListener onModeChangeListener);

    Object getLifecycle();

    Service getService();

    void removeOnModeChangeListener(ServiceAware.OnModeChangeListener onModeChangeListener);
}
