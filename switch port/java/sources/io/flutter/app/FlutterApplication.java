package io.flutter.app;

import android.app.Activity;
import android.app.Application;
import io.flutter.FlutterInjector;

/* loaded from: classes3.dex */
public class FlutterApplication extends Application {
    private Activity mCurrentActivity = null;

    public Activity getCurrentActivity() {
        return this.mCurrentActivity;
    }

    public void setCurrentActivity(Activity activity) {
        this.mCurrentActivity = activity;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        FlutterInjector.instance().flutterLoader().startInitialization(this);
    }
}
