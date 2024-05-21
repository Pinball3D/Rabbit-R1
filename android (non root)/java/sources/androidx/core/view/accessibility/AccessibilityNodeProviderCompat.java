package androidx.core.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AccessibilityNodeProviderCompat {
    public static final int HOST_VIEW_ID = -1;
    private final Object mProvider;

    public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
    }

    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
        return null;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str, int i) {
        return null;
    }

    public AccessibilityNodeInfoCompat findFocus(int i) {
        return null;
    }

    public Object getProvider() {
        return this.mProvider;
    }

    public boolean performAction(int i, int i2, Bundle bundle) {
        return false;
    }

    /* loaded from: classes.dex */
    static class AccessibilityNodeProviderApi16 extends AccessibilityNodeProvider {
        final AccessibilityNodeProviderCompat mCompat;

        AccessibilityNodeProviderApi16(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            this.mCompat = accessibilityNodeProviderCompat;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            AccessibilityNodeInfoCompat createAccessibilityNodeInfo = this.mCompat.createAccessibilityNodeInfo(i);
            if (createAccessibilityNodeInfo == null) {
                return null;
            }
            return createAccessibilityNodeInfo.unwrap();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText = this.mCompat.findAccessibilityNodeInfosByText(str, i);
            if (findAccessibilityNodeInfosByText == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = findAccessibilityNodeInfosByText.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(findAccessibilityNodeInfosByText.get(i2).unwrap());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.mCompat.performAction(i, i2, bundle);
        }
    }

    /* loaded from: classes.dex */
    static class AccessibilityNodeProviderApi19 extends AccessibilityNodeProviderApi16 {
        AccessibilityNodeProviderApi19(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            super(accessibilityNodeProviderCompat);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            AccessibilityNodeInfoCompat findFocus = this.mCompat.findFocus(i);
            if (findFocus == null) {
                return null;
            }
            return findFocus.unwrap();
        }
    }

    /* loaded from: classes.dex */
    static class AccessibilityNodeProviderApi26 extends AccessibilityNodeProviderApi19 {
        AccessibilityNodeProviderApi26(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            super(accessibilityNodeProviderCompat);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.mCompat.addExtraDataToAccessibilityNodeInfo(i, AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo), str, bundle);
        }
    }

    public AccessibilityNodeProviderCompat() {
        this.mProvider = new AccessibilityNodeProviderApi26(this);
    }

    public AccessibilityNodeProviderCompat(Object obj) {
        this.mProvider = obj;
    }
}
