package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.LocaleList;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.core.os.LocaleListCompat;

/* loaded from: classes.dex */
public class AccessibilityWindowInfoCompat {
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_MAGNIFICATION_OVERLAY = 6;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;
    private static final int UNDEFINED = -1;
    private final Object mInfo;

    private static String typeToString(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "<UNKNOWN>" : "TYPE_ACCESSIBILITY_OVERLAY" : "TYPE_SYSTEM" : "TYPE_INPUT_METHOD" : "TYPE_APPLICATION";
    }

    @Deprecated
    public void recycle() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessibilityWindowInfoCompat wrapNonNullInstance(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    public AccessibilityWindowInfoCompat() {
        this.mInfo = Api30Impl.instantiateAccessibilityWindowInfo();
    }

    private AccessibilityWindowInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    public int getType() {
        return Api21Impl.getType((AccessibilityWindowInfo) this.mInfo);
    }

    public int getLayer() {
        return Api21Impl.getLayer((AccessibilityWindowInfo) this.mInfo);
    }

    public AccessibilityNodeInfoCompat getRoot() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(Api21Impl.getRoot((AccessibilityWindowInfo) this.mInfo));
    }

    public AccessibilityNodeInfoCompat getRoot(int i) {
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.getRoot(this.mInfo, i);
        }
        return getRoot();
    }

    public boolean isInPictureInPictureMode() {
        return Api26Impl.isInPictureInPictureMode((AccessibilityWindowInfo) this.mInfo);
    }

    public AccessibilityWindowInfoCompat getParent() {
        return wrapNonNullInstance(Api21Impl.getParent((AccessibilityWindowInfo) this.mInfo));
    }

    public int getId() {
        return Api21Impl.getId((AccessibilityWindowInfo) this.mInfo);
    }

    public void getRegionInScreen(Region region) {
        if (Build.VERSION.SDK_INT >= 33) {
            Api33Impl.getRegionInScreen((AccessibilityWindowInfo) this.mInfo, region);
            return;
        }
        Rect rect = new Rect();
        Api21Impl.getBoundsInScreen((AccessibilityWindowInfo) this.mInfo, rect);
        region.set(rect);
    }

    public void getBoundsInScreen(Rect rect) {
        Api21Impl.getBoundsInScreen((AccessibilityWindowInfo) this.mInfo, rect);
    }

    public boolean isActive() {
        return Api21Impl.isActive((AccessibilityWindowInfo) this.mInfo);
    }

    public boolean isFocused() {
        return Api21Impl.isFocused((AccessibilityWindowInfo) this.mInfo);
    }

    public boolean isAccessibilityFocused() {
        return Api21Impl.isAccessibilityFocused((AccessibilityWindowInfo) this.mInfo);
    }

    public int getChildCount() {
        return Api21Impl.getChildCount((AccessibilityWindowInfo) this.mInfo);
    }

    public AccessibilityWindowInfoCompat getChild(int i) {
        return wrapNonNullInstance(Api21Impl.getChild((AccessibilityWindowInfo) this.mInfo, i));
    }

    public int getDisplayId() {
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.getDisplayId((AccessibilityWindowInfo) this.mInfo);
        }
        return 0;
    }

    public long getTransitionTimeMillis() {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.getTransitionTimeMillis((AccessibilityWindowInfo) this.mInfo);
        }
        return 0L;
    }

    public LocaleListCompat getLocales() {
        if (Build.VERSION.SDK_INT >= 34) {
            return LocaleListCompat.wrap(Api34Impl.getLocales((AccessibilityWindowInfo) this.mInfo));
        }
        return LocaleListCompat.getEmptyLocaleList();
    }

    public CharSequence getTitle() {
        return Api24Impl.getTitle((AccessibilityWindowInfo) this.mInfo);
    }

    public AccessibilityNodeInfoCompat getAnchor() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(Api24Impl.getAnchor((AccessibilityWindowInfo) this.mInfo));
    }

    public static AccessibilityWindowInfoCompat obtain() {
        return wrapNonNullInstance(Api21Impl.obtain());
    }

    public static AccessibilityWindowInfoCompat obtain(AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        if (accessibilityWindowInfoCompat == null) {
            return null;
        }
        return wrapNonNullInstance(Api21Impl.obtain((AccessibilityWindowInfo) accessibilityWindowInfoCompat.mInfo));
    }

    public AccessibilityWindowInfo unwrap() {
        return (AccessibilityWindowInfo) this.mInfo;
    }

    public int hashCode() {
        Object obj = this.mInfo;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityWindowInfoCompat)) {
            return false;
        }
        AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
        Object obj2 = this.mInfo;
        if (obj2 == null) {
            return accessibilityWindowInfoCompat.mInfo == null;
        }
        return obj2.equals(accessibilityWindowInfoCompat.mInfo);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityWindowInfo[id=");
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb.append(getId());
        sb.append(", type=").append(typeToString(getType()));
        sb.append(", layer=").append(getLayer());
        sb.append(", bounds=").append(rect);
        sb.append(", focused=").append(isFocused());
        sb.append(", active=").append(isActive());
        sb.append(", hasParent=").append(getParent() != null);
        sb.append(", hasChildren=").append(getChildCount() > 0);
        sb.append(", transitionTime=").append(getTransitionTimeMillis());
        sb.append(", locales=").append(getLocales());
        sb.append(']');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        static void getBoundsInScreen(AccessibilityWindowInfo accessibilityWindowInfo, Rect rect) {
            accessibilityWindowInfo.getBoundsInScreen(rect);
        }

        static AccessibilityWindowInfo getChild(AccessibilityWindowInfo accessibilityWindowInfo, int i) {
            return accessibilityWindowInfo.getChild(i);
        }

        static int getChildCount(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getChildCount();
        }

        static int getId(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getId();
        }

        static int getLayer(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getLayer();
        }

        static AccessibilityWindowInfo getParent(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getParent();
        }

        static AccessibilityNodeInfo getRoot(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getRoot();
        }

        static int getType(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getType();
        }

        static boolean isAccessibilityFocused(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isAccessibilityFocused();
        }

        static boolean isActive(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isActive();
        }

        static boolean isFocused(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isFocused();
        }

        static AccessibilityWindowInfo obtain() {
            return AccessibilityWindowInfo.obtain();
        }

        static AccessibilityWindowInfo obtain(AccessibilityWindowInfo accessibilityWindowInfo) {
            return AccessibilityWindowInfo.obtain(accessibilityWindowInfo);
        }
    }

    /* loaded from: classes.dex */
    private static class Api24Impl {
        private Api24Impl() {
        }

        static AccessibilityNodeInfo getAnchor(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getAnchor();
        }

        static CharSequence getTitle(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getTitle();
        }
    }

    /* loaded from: classes.dex */
    private static class Api26Impl {
        private Api26Impl() {
        }

        static boolean isInPictureInPictureMode(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isInPictureInPictureMode();
        }
    }

    /* loaded from: classes.dex */
    private static class Api30Impl {
        private Api30Impl() {
        }

        static AccessibilityWindowInfo instantiateAccessibilityWindowInfo() {
            return new AccessibilityWindowInfo();
        }
    }

    /* loaded from: classes.dex */
    private static class Api33Impl {
        private Api33Impl() {
        }

        static int getDisplayId(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getDisplayId();
        }

        static void getRegionInScreen(AccessibilityWindowInfo accessibilityWindowInfo, Region region) {
            accessibilityWindowInfo.getRegionInScreen(region);
        }

        public static AccessibilityNodeInfoCompat getRoot(Object obj, int i) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(((AccessibilityWindowInfo) obj).getRoot(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Api34Impl {
        private Api34Impl() {
        }

        public static long getTransitionTimeMillis(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getTransitionTimeMillis();
        }

        static LocaleList getLocales(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getLocales();
        }
    }
}
