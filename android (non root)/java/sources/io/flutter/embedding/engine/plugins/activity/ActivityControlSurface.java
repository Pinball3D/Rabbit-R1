package io.flutter.embedding.engine.plugins.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import io.flutter.embedding.android.ExclusiveAppComponent;

/* loaded from: classes3.dex */
public interface ActivityControlSurface {
    void attachToActivity(ExclusiveAppComponent<Activity> exclusiveAppComponent, Lifecycle lifecycle);

    void detachFromActivity();

    void detachFromActivityForConfigChanges();

    boolean onActivityResult(int i, int i2, Intent intent);

    void onNewIntent(Intent intent);

    boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr);

    void onRestoreInstanceState(Bundle bundle);

    void onSaveInstanceState(Bundle bundle);

    void onUserLeaveHint();
}
