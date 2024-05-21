package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class WindowUtils {
    private static final String TAG = "WindowUtils";

    private WindowUtils() {
    }

    public static Rect getCurrentWindowBounds(Context context) {
        return Api30Impl.getCurrentWindowBounds((WindowManager) context.getSystemService("window"));
    }

    /* loaded from: classes2.dex */
    private static class Api30Impl {
        private Api30Impl() {
        }

        static Rect getCurrentWindowBounds(WindowManager windowManager) {
            return windowManager.getCurrentWindowMetrics().getBounds();
        }
    }

    /* loaded from: classes2.dex */
    private static class Api17Impl {
        private Api17Impl() {
        }

        static Rect getCurrentWindowBounds(WindowManager windowManager) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            Rect rect = new Rect();
            rect.right = point.x;
            rect.bottom = point.y;
            return rect;
        }
    }

    /* loaded from: classes2.dex */
    private static class Api14Impl {
        private Api14Impl() {
        }

        static Rect getCurrentWindowBounds(WindowManager windowManager) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point realSizeForDisplay = getRealSizeForDisplay(defaultDisplay);
            Rect rect = new Rect();
            if (realSizeForDisplay.x == 0 || realSizeForDisplay.y == 0) {
                defaultDisplay.getRectSize(rect);
            } else {
                rect.right = realSizeForDisplay.x;
                rect.bottom = realSizeForDisplay.y;
            }
            return rect;
        }

        private static Point getRealSizeForDisplay(Display display) {
            Point point = new Point();
            try {
                Method declaredMethod = Display.class.getDeclaredMethod("getRealSize", Point.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(display, point);
            } catch (IllegalAccessException e) {
                Log.w(WindowUtils.TAG, e);
            } catch (NoSuchMethodException e2) {
                Log.w(WindowUtils.TAG, e2);
            } catch (InvocationTargetException e3) {
                Log.w(WindowUtils.TAG, e3);
            }
            return point;
        }
    }
}
