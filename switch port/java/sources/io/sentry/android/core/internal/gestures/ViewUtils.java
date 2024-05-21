package io.sentry.android.core.internal.gestures;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.internal.gestures.GestureTargetLocator;
import io.sentry.internal.gestures.UiElement;
import io.sentry.util.Objects;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes3.dex */
public final class ViewUtils {
    private static boolean isViewIdGenerated(int i) {
        return ((-16777216) & i) == 0 && (i & ViewCompat.MEASURED_SIZE_MASK) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UiElement findTarget(SentryAndroidOptions sentryAndroidOptions, View view, float f, float f2, UiElement.Type type) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(view);
        UiElement uiElement = null;
        while (linkedList.size() > 0) {
            View view2 = (View) Objects.requireNonNull((View) linkedList.poll(), "view is required");
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    linkedList.add(viewGroup.getChildAt(i));
                }
            }
            Iterator<GestureTargetLocator> it = sentryAndroidOptions.getGestureTargetLocators().iterator();
            while (it.hasNext()) {
                UiElement locate = it.next().locate(view2, f, f2, type);
                if (locate != null) {
                    if (type != UiElement.Type.CLICKABLE) {
                        return locate;
                    }
                    uiElement = locate;
                }
            }
        }
        return uiElement;
    }

    static String getResourceIdWithFallback(View view) {
        try {
            return getResourceId(view);
        } catch (Resources.NotFoundException unused) {
            return "0x" + Integer.toString(view.getId(), 16);
        }
    }

    public static String getResourceId(View view) throws Resources.NotFoundException {
        int id = view.getId();
        if (id == -1 || isViewIdGenerated(id)) {
            throw new Resources.NotFoundException();
        }
        Resources resources = view.getContext().getResources();
        return resources != null ? resources.getResourceEntryName(id) : "";
    }
}
