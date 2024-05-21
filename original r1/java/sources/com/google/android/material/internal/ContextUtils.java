package com.google.android.material.internal;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;

/* loaded from: classes2.dex */
public class ContextUtils {
    public static Activity getActivity(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }
}
