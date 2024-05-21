package io.flutter.embedding.engine.deferredcomponents;

import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.systemchannels.DeferredComponentChannel;

/* loaded from: classes3.dex */
public interface DeferredComponentManager {
    void destroy();

    String getDeferredComponentInstallState(int i, String str);

    void installDeferredComponent(int i, String str);

    void loadAssets(int i, String str);

    void loadDartLibrary(int i, String str);

    void setDeferredComponentChannel(DeferredComponentChannel deferredComponentChannel);

    void setJNI(FlutterJNI flutterJNI);

    boolean uninstallDeferredComponent(int i, String str);
}
