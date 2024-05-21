package io.flutter.view;

import android.app.Activity;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.net.Uri;
import android.opengl.Matrix;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.LocaleSpan;
import android.text.style.TtsSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.exoplayer2.C;
import io.flutter.Log;
import io.flutter.embedding.engine.systemchannels.AccessibilityChannel;
import io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate;
import io.flutter.util.Predicate;
import io.flutter.util.ViewUtils;
import io.flutter.view.AccessibilityBridge;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class AccessibilityBridge extends AccessibilityNodeProvider {
    private static final int ACTION_SHOW_ON_SCREEN = 16908342;
    private static final int BOLD_TEXT_WEIGHT_ADJUSTMENT = 300;
    private static final int MIN_ENGINE_GENERATED_NODE_ID = 65536;
    private static final int ROOT_NODE_ID = 0;
    private static final float SCROLL_EXTENT_FOR_INFINITY = 100000.0f;
    private static final float SCROLL_POSITION_CAP_FOR_INFINITY = 70000.0f;
    private static final String TAG = "AccessibilityBridge";
    private final AccessibilityChannel accessibilityChannel;
    private int accessibilityFeatureFlags;
    private SemanticsNode accessibilityFocusedSemanticsNode;
    private final AccessibilityManager accessibilityManager;
    private final AccessibilityChannel.AccessibilityMessageHandler accessibilityMessageHandler;
    private final AccessibilityManager.AccessibilityStateChangeListener accessibilityStateChangeListener;
    private final AccessibilityViewEmbedder accessibilityViewEmbedder;
    private boolean accessibleNavigation;
    private final ContentObserver animationScaleObserver;
    private final ContentResolver contentResolver;
    private final Map<Integer, CustomAccessibilityAction> customAccessibilityActions;
    private Integer embeddedAccessibilityFocusedNodeId;
    private Integer embeddedInputFocusedNodeId;
    private final List<Integer> flutterNavigationStack;
    private final Map<Integer, SemanticsNode> flutterSemanticsTree;
    private SemanticsNode hoveredObject;
    private SemanticsNode inputFocusedSemanticsNode;
    private boolean isReleased;
    private SemanticsNode lastInputFocusedSemanticsNode;
    private Integer lastLeftFrameInset;
    private OnAccessibilityChangeListener onAccessibilityChangeListener;
    private final PlatformViewsAccessibilityDelegate platformViewsAccessibilityDelegate;
    private int previousRouteId;
    private final View rootAccessibilityView;
    private final AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener;
    private static final int SCROLLABLE_ACTIONS = ((Action.SCROLL_RIGHT.value | Action.SCROLL_LEFT.value) | Action.SCROLL_UP.value) | Action.SCROLL_DOWN.value;
    private static final int FOCUSABLE_FLAGS = ((((((((((Flag.HAS_CHECKED_STATE.value | Flag.IS_CHECKED.value) | Flag.IS_SELECTED.value) | Flag.IS_TEXT_FIELD.value) | Flag.IS_FOCUSED.value) | Flag.HAS_ENABLED_STATE.value) | Flag.IS_ENABLED.value) | Flag.IS_IN_MUTUALLY_EXCLUSIVE_GROUP.value) | Flag.HAS_TOGGLED_STATE.value) | Flag.IS_TOGGLED.value) | Flag.IS_FOCUSABLE.value) | Flag.IS_SLIDER.value;
    private static int FIRST_RESOURCE_ID = 267386881;
    static int systemAction = (Action.DID_GAIN_ACCESSIBILITY_FOCUS.value & Action.DID_LOSE_ACCESSIBILITY_FOCUS.value) & Action.SHOW_ON_SCREEN.value;

    /* loaded from: classes3.dex */
    public interface OnAccessibilityChangeListener {
        void onAccessibilityChanged(boolean z, boolean z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum StringAttributeType {
        SPELLOUT,
        LOCALE
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum TextDirection {
        UNKNOWN,
        LTR,
        RTL;

        public static TextDirection fromInt(int i) {
            return i != 1 ? i != 2 ? UNKNOWN : LTR : RTL;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$shouldSetCollectionInfo$0(SemanticsNode semanticsNode, SemanticsNode semanticsNode2) {
        return semanticsNode2 == semanticsNode;
    }

    public boolean getAccessibleNavigation() {
        return this.accessibleNavigation;
    }

    public void setOnAccessibilityChangeListener(OnAccessibilityChangeListener onAccessibilityChangeListener) {
        this.onAccessibilityChangeListener = onAccessibilityChangeListener;
    }

    static /* synthetic */ int access$1172(AccessibilityBridge accessibilityBridge, int i) {
        int i2 = i & accessibilityBridge.accessibilityFeatureFlags;
        accessibilityBridge.accessibilityFeatureFlags = i2;
        return i2;
    }

    static /* synthetic */ int access$1176(AccessibilityBridge accessibilityBridge, int i) {
        int i2 = i | accessibilityBridge.accessibilityFeatureFlags;
        accessibilityBridge.accessibilityFeatureFlags = i2;
        return i2;
    }

    public int getHoveredObjectId() {
        return this.hoveredObject.id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAccessibleNavigation(boolean z) {
        if (this.accessibleNavigation == z) {
            return;
        }
        this.accessibleNavigation = z;
        if (z) {
            this.accessibilityFeatureFlags |= AccessibilityFeature.ACCESSIBLE_NAVIGATION.value;
        } else {
            this.accessibilityFeatureFlags &= ~AccessibilityFeature.ACCESSIBLE_NAVIGATION.value;
        }
        sendLatestAccessibilityFlagsToFlutter();
    }

    public AccessibilityBridge(View view, AccessibilityChannel accessibilityChannel, AccessibilityManager accessibilityManager, ContentResolver contentResolver, PlatformViewsAccessibilityDelegate platformViewsAccessibilityDelegate) {
        this(view, accessibilityChannel, accessibilityManager, contentResolver, new AccessibilityViewEmbedder(view, 65536), platformViewsAccessibilityDelegate);
    }

    public AccessibilityBridge(View view, AccessibilityChannel accessibilityChannel, final AccessibilityManager accessibilityManager, ContentResolver contentResolver, AccessibilityViewEmbedder accessibilityViewEmbedder, PlatformViewsAccessibilityDelegate platformViewsAccessibilityDelegate) {
        this.flutterSemanticsTree = new HashMap();
        this.customAccessibilityActions = new HashMap();
        this.accessibilityFeatureFlags = 0;
        this.flutterNavigationStack = new ArrayList();
        this.previousRouteId = 0;
        this.lastLeftFrameInset = 0;
        this.accessibleNavigation = false;
        this.isReleased = false;
        this.accessibilityMessageHandler = new AccessibilityChannel.AccessibilityMessageHandler() { // from class: io.flutter.view.AccessibilityBridge.1
            @Override // io.flutter.embedding.engine.systemchannels.AccessibilityChannel.AccessibilityMessageHandler
            public void onTooltip(String str) {
            }

            @Override // io.flutter.embedding.engine.systemchannels.AccessibilityChannel.AccessibilityMessageHandler
            public void announce(String str) {
                AccessibilityBridge.this.rootAccessibilityView.announceForAccessibility(str);
            }

            @Override // io.flutter.embedding.engine.systemchannels.AccessibilityChannel.AccessibilityMessageHandler
            public void onTap(int i) {
                AccessibilityBridge.this.sendAccessibilityEvent(i, 1);
            }

            @Override // io.flutter.embedding.engine.systemchannels.AccessibilityChannel.AccessibilityMessageHandler
            public void onLongPress(int i) {
                AccessibilityBridge.this.sendAccessibilityEvent(i, 2);
            }

            @Override // io.flutter.embedding.engine.systemchannels.AccessibilityChannel.AccessibilityMessageHandler
            public void onFocus(int i) {
                AccessibilityBridge.this.sendAccessibilityEvent(i, 8);
            }

            @Override // io.flutter.embedding.engine.FlutterJNI.AccessibilityDelegate
            public void updateCustomAccessibilityActions(ByteBuffer byteBuffer, String[] strArr) {
                byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
                AccessibilityBridge.this.updateCustomAccessibilityActions(byteBuffer, strArr);
            }

            @Override // io.flutter.embedding.engine.FlutterJNI.AccessibilityDelegate
            public void updateSemantics(ByteBuffer byteBuffer, String[] strArr, ByteBuffer[] byteBufferArr) {
                byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
                for (ByteBuffer byteBuffer2 : byteBufferArr) {
                    byteBuffer2.order(ByteOrder.LITTLE_ENDIAN);
                }
                AccessibilityBridge.this.updateSemantics(byteBuffer, strArr, byteBufferArr);
            }
        };
        AccessibilityManager.AccessibilityStateChangeListener accessibilityStateChangeListener = new AccessibilityManager.AccessibilityStateChangeListener() { // from class: io.flutter.view.AccessibilityBridge.2
            @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
            public void onAccessibilityStateChanged(boolean z) {
                if (AccessibilityBridge.this.isReleased) {
                    return;
                }
                if (z) {
                    AccessibilityBridge.this.accessibilityChannel.setAccessibilityMessageHandler(AccessibilityBridge.this.accessibilityMessageHandler);
                    AccessibilityBridge.this.accessibilityChannel.onAndroidAccessibilityEnabled();
                } else {
                    AccessibilityBridge.this.setAccessibleNavigation(false);
                    AccessibilityBridge.this.accessibilityChannel.setAccessibilityMessageHandler(null);
                    AccessibilityBridge.this.accessibilityChannel.onAndroidAccessibilityDisabled();
                }
                if (AccessibilityBridge.this.onAccessibilityChangeListener != null) {
                    AccessibilityBridge.this.onAccessibilityChangeListener.onAccessibilityChanged(z, AccessibilityBridge.this.accessibilityManager.isTouchExplorationEnabled());
                }
            }
        };
        this.accessibilityStateChangeListener = accessibilityStateChangeListener;
        ContentObserver contentObserver = new ContentObserver(new Handler()) { // from class: io.flutter.view.AccessibilityBridge.3
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                onChange(z, null);
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                if (AccessibilityBridge.this.isReleased) {
                    return;
                }
                String string = Settings.Global.getString(AccessibilityBridge.this.contentResolver, "transition_animation_scale");
                if (string != null && string.equals("0")) {
                    AccessibilityBridge.access$1176(AccessibilityBridge.this, AccessibilityFeature.DISABLE_ANIMATIONS.value);
                } else {
                    AccessibilityBridge.access$1172(AccessibilityBridge.this, ~AccessibilityFeature.DISABLE_ANIMATIONS.value);
                }
                AccessibilityBridge.this.sendLatestAccessibilityFlagsToFlutter();
            }
        };
        this.animationScaleObserver = contentObserver;
        this.rootAccessibilityView = view;
        this.accessibilityChannel = accessibilityChannel;
        this.accessibilityManager = accessibilityManager;
        this.contentResolver = contentResolver;
        this.accessibilityViewEmbedder = accessibilityViewEmbedder;
        this.platformViewsAccessibilityDelegate = platformViewsAccessibilityDelegate;
        accessibilityStateChangeListener.onAccessibilityStateChanged(accessibilityManager.isEnabled());
        accessibilityManager.addAccessibilityStateChangeListener(accessibilityStateChangeListener);
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: io.flutter.view.AccessibilityBridge.4
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public void onTouchExplorationStateChanged(boolean z) {
                if (AccessibilityBridge.this.isReleased) {
                    return;
                }
                if (!z) {
                    AccessibilityBridge.this.setAccessibleNavigation(false);
                    AccessibilityBridge.this.onTouchExplorationExit();
                }
                if (AccessibilityBridge.this.onAccessibilityChangeListener != null) {
                    AccessibilityBridge.this.onAccessibilityChangeListener.onAccessibilityChanged(accessibilityManager.isEnabled(), z);
                }
            }
        };
        this.touchExplorationStateChangeListener = touchExplorationStateChangeListener;
        touchExplorationStateChangeListener.onTouchExplorationStateChanged(accessibilityManager.isTouchExplorationEnabled());
        accessibilityManager.addTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
        contentObserver.onChange(false);
        contentResolver.registerContentObserver(Settings.Global.getUriFor("transition_animation_scale"), false, contentObserver);
        setBoldTextFlag();
        platformViewsAccessibilityDelegate.attachAccessibilityBridge(this);
    }

    public void release() {
        this.isReleased = true;
        this.platformViewsAccessibilityDelegate.detachAccessibilityBridge();
        setOnAccessibilityChangeListener(null);
        this.accessibilityManager.removeAccessibilityStateChangeListener(this.accessibilityStateChangeListener);
        this.accessibilityManager.removeTouchExplorationStateChangeListener(this.touchExplorationStateChangeListener);
        this.contentResolver.unregisterContentObserver(this.animationScaleObserver);
        this.accessibilityChannel.setAccessibilityMessageHandler(null);
    }

    public boolean isAccessibilityEnabled() {
        return this.accessibilityManager.isEnabled();
    }

    public boolean isTouchExplorationEnabled() {
        return this.accessibilityManager.isTouchExplorationEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLatestAccessibilityFlagsToFlutter() {
        this.accessibilityChannel.setAccessibilityFeatures(this.accessibilityFeatureFlags);
    }

    private boolean shouldSetCollectionInfo(final SemanticsNode semanticsNode) {
        return semanticsNode.scrollChildren > 0 && (SemanticsNode.nullableHasAncestor(this.accessibilityFocusedSemanticsNode, new Predicate() { // from class: io.flutter.view.AccessibilityBridge$$ExternalSyntheticLambda0
            @Override // io.flutter.util.Predicate
            public final boolean test(Object obj) {
                return AccessibilityBridge.lambda$shouldSetCollectionInfo$0(AccessibilityBridge.SemanticsNode.this, (AccessibilityBridge.SemanticsNode) obj);
            }
        }) || !SemanticsNode.nullableHasAncestor(this.accessibilityFocusedSemanticsNode, new Predicate() { // from class: io.flutter.view.AccessibilityBridge$$ExternalSyntheticLambda1
            @Override // io.flutter.util.Predicate
            public final boolean test(Object obj) {
                boolean hasFlag;
                hasFlag = ((AccessibilityBridge.SemanticsNode) obj).hasFlag(AccessibilityBridge.Flag.HAS_IMPLICIT_SCROLLING);
                return hasFlag;
            }
        }));
    }

    private void setBoldTextFlag() {
        View view = this.rootAccessibilityView;
        if (view == null || view.getResources() == null) {
            return;
        }
        int i = this.rootAccessibilityView.getResources().getConfiguration().fontWeightAdjustment;
        if (i != Integer.MAX_VALUE && i >= 300) {
            this.accessibilityFeatureFlags |= AccessibilityFeature.BOLD_TEXT.value;
        } else {
            this.accessibilityFeatureFlags &= AccessibilityFeature.BOLD_TEXT.value;
        }
        sendLatestAccessibilityFlagsToFlutter();
    }

    public AccessibilityNodeInfo obtainAccessibilityNodeInfo(View view) {
        return AccessibilityNodeInfo.obtain(view);
    }

    public AccessibilityNodeInfo obtainAccessibilityNodeInfo(View view, int i) {
        return AccessibilityNodeInfo.obtain(view, i);
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        CharSequence valueLabelHint;
        int i2;
        boolean z = true;
        setAccessibleNavigation(true);
        if (i >= 65536) {
            return this.accessibilityViewEmbedder.createAccessibilityNodeInfo(i);
        }
        if (i == -1) {
            AccessibilityNodeInfo obtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(this.rootAccessibilityView);
            this.rootAccessibilityView.onInitializeAccessibilityNodeInfo(obtainAccessibilityNodeInfo);
            if (this.flutterSemanticsTree.containsKey(0)) {
                obtainAccessibilityNodeInfo.addChild(this.rootAccessibilityView, 0);
            }
            obtainAccessibilityNodeInfo.setImportantForAccessibility(false);
            return obtainAccessibilityNodeInfo;
        }
        SemanticsNode semanticsNode = this.flutterSemanticsTree.get(Integer.valueOf(i));
        if (semanticsNode == null) {
            return null;
        }
        if (semanticsNode.platformViewId == -1 || !this.platformViewsAccessibilityDelegate.usesVirtualDisplay(semanticsNode.platformViewId)) {
            AccessibilityNodeInfo obtainAccessibilityNodeInfo2 = obtainAccessibilityNodeInfo(this.rootAccessibilityView, i);
            obtainAccessibilityNodeInfo2.setImportantForAccessibility(isImportant(semanticsNode));
            obtainAccessibilityNodeInfo2.setViewIdResourceName("");
            if (semanticsNode.identifier != null) {
                obtainAccessibilityNodeInfo2.setViewIdResourceName(semanticsNode.identifier);
            }
            obtainAccessibilityNodeInfo2.setPackageName(this.rootAccessibilityView.getContext().getPackageName());
            obtainAccessibilityNodeInfo2.setClassName(AndroidComposeViewAccessibilityDelegateCompat.ClassName);
            obtainAccessibilityNodeInfo2.setSource(this.rootAccessibilityView, i);
            obtainAccessibilityNodeInfo2.setFocusable(semanticsNode.isFocusable());
            SemanticsNode semanticsNode2 = this.inputFocusedSemanticsNode;
            if (semanticsNode2 != null) {
                obtainAccessibilityNodeInfo2.setFocused(semanticsNode2.id == i);
            }
            SemanticsNode semanticsNode3 = this.accessibilityFocusedSemanticsNode;
            if (semanticsNode3 != null) {
                obtainAccessibilityNodeInfo2.setAccessibilityFocused(semanticsNode3.id == i);
            }
            if (semanticsNode.hasFlag(Flag.IS_TEXT_FIELD)) {
                obtainAccessibilityNodeInfo2.setPassword(semanticsNode.hasFlag(Flag.IS_OBSCURED));
                if (!semanticsNode.hasFlag(Flag.IS_READ_ONLY)) {
                    obtainAccessibilityNodeInfo2.setClassName(AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName);
                }
                obtainAccessibilityNodeInfo2.setEditable(!semanticsNode.hasFlag(Flag.IS_READ_ONLY));
                if (semanticsNode.textSelectionBase != -1 && semanticsNode.textSelectionExtent != -1) {
                    obtainAccessibilityNodeInfo2.setTextSelection(semanticsNode.textSelectionBase, semanticsNode.textSelectionExtent);
                }
                SemanticsNode semanticsNode4 = this.accessibilityFocusedSemanticsNode;
                if (semanticsNode4 != null && semanticsNode4.id == i) {
                    obtainAccessibilityNodeInfo2.setLiveRegion(1);
                }
                if (semanticsNode.hasAction(Action.MOVE_CURSOR_FORWARD_BY_CHARACTER)) {
                    obtainAccessibilityNodeInfo2.addAction(256);
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                if (semanticsNode.hasAction(Action.MOVE_CURSOR_BACKWARD_BY_CHARACTER)) {
                    obtainAccessibilityNodeInfo2.addAction(512);
                    i2 |= 1;
                }
                if (semanticsNode.hasAction(Action.MOVE_CURSOR_FORWARD_BY_WORD)) {
                    obtainAccessibilityNodeInfo2.addAction(256);
                    i2 |= 2;
                }
                if (semanticsNode.hasAction(Action.MOVE_CURSOR_BACKWARD_BY_WORD)) {
                    obtainAccessibilityNodeInfo2.addAction(512);
                    i2 |= 2;
                }
                obtainAccessibilityNodeInfo2.setMovementGranularities(i2);
                if (semanticsNode.maxValueLength >= 0) {
                    int length = semanticsNode.value == null ? 0 : semanticsNode.value.length();
                    int unused = semanticsNode.currentValueLength;
                    int unused2 = semanticsNode.maxValueLength;
                    obtainAccessibilityNodeInfo2.setMaxTextLength((length - semanticsNode.currentValueLength) + semanticsNode.maxValueLength);
                }
            }
            if (semanticsNode.hasAction(Action.SET_SELECTION)) {
                obtainAccessibilityNodeInfo2.addAction(131072);
            }
            if (semanticsNode.hasAction(Action.COPY)) {
                obtainAccessibilityNodeInfo2.addAction(16384);
            }
            if (semanticsNode.hasAction(Action.CUT)) {
                obtainAccessibilityNodeInfo2.addAction(65536);
            }
            if (semanticsNode.hasAction(Action.PASTE)) {
                obtainAccessibilityNodeInfo2.addAction(32768);
            }
            if (semanticsNode.hasAction(Action.SET_TEXT)) {
                obtainAccessibilityNodeInfo2.addAction(2097152);
            }
            if (semanticsNode.hasFlag(Flag.IS_BUTTON) || semanticsNode.hasFlag(Flag.IS_LINK)) {
                obtainAccessibilityNodeInfo2.setClassName("android.widget.Button");
            }
            if (semanticsNode.hasFlag(Flag.IS_IMAGE)) {
                obtainAccessibilityNodeInfo2.setClassName("android.widget.ImageView");
            }
            if (semanticsNode.hasAction(Action.DISMISS)) {
                obtainAccessibilityNodeInfo2.setDismissable(true);
                obtainAccessibilityNodeInfo2.addAction(1048576);
            }
            if (semanticsNode.parent == null) {
                obtainAccessibilityNodeInfo2.setParent(this.rootAccessibilityView);
            } else {
                obtainAccessibilityNodeInfo2.setParent(this.rootAccessibilityView, semanticsNode.parent.id);
            }
            if (semanticsNode.previousNodeId != -1) {
                obtainAccessibilityNodeInfo2.setTraversalAfter(this.rootAccessibilityView, semanticsNode.previousNodeId);
            }
            Rect globalRect = semanticsNode.getGlobalRect();
            if (semanticsNode.parent == null) {
                obtainAccessibilityNodeInfo2.setBoundsInParent(globalRect);
            } else {
                Rect globalRect2 = semanticsNode.parent.getGlobalRect();
                Rect rect = new Rect(globalRect);
                rect.offset(-globalRect2.left, -globalRect2.top);
                obtainAccessibilityNodeInfo2.setBoundsInParent(rect);
            }
            obtainAccessibilityNodeInfo2.setBoundsInScreen(getBoundsInScreen(globalRect));
            obtainAccessibilityNodeInfo2.setVisibleToUser(true);
            obtainAccessibilityNodeInfo2.setEnabled(!semanticsNode.hasFlag(Flag.HAS_ENABLED_STATE) || semanticsNode.hasFlag(Flag.IS_ENABLED));
            if (semanticsNode.hasAction(Action.TAP)) {
                if (semanticsNode.onTapOverride != null) {
                    obtainAccessibilityNodeInfo2.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, semanticsNode.onTapOverride.hint));
                    obtainAccessibilityNodeInfo2.setClickable(true);
                } else {
                    obtainAccessibilityNodeInfo2.addAction(16);
                    obtainAccessibilityNodeInfo2.setClickable(true);
                }
            }
            if (semanticsNode.hasAction(Action.LONG_PRESS)) {
                if (semanticsNode.onLongPressOverride != null) {
                    obtainAccessibilityNodeInfo2.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, semanticsNode.onLongPressOverride.hint));
                    obtainAccessibilityNodeInfo2.setLongClickable(true);
                } else {
                    obtainAccessibilityNodeInfo2.addAction(32);
                    obtainAccessibilityNodeInfo2.setLongClickable(true);
                }
            }
            if (semanticsNode.hasAction(Action.SCROLL_LEFT) || semanticsNode.hasAction(Action.SCROLL_UP) || semanticsNode.hasAction(Action.SCROLL_RIGHT) || semanticsNode.hasAction(Action.SCROLL_DOWN)) {
                obtainAccessibilityNodeInfo2.setScrollable(true);
                if (semanticsNode.hasFlag(Flag.HAS_IMPLICIT_SCROLLING)) {
                    if (semanticsNode.hasAction(Action.SCROLL_LEFT) || semanticsNode.hasAction(Action.SCROLL_RIGHT)) {
                        if (shouldSetCollectionInfo(semanticsNode)) {
                            obtainAccessibilityNodeInfo2.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(0, semanticsNode.scrollChildren, false));
                        } else {
                            obtainAccessibilityNodeInfo2.setClassName("android.widget.HorizontalScrollView");
                        }
                    } else if (shouldSetCollectionInfo(semanticsNode)) {
                        obtainAccessibilityNodeInfo2.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(semanticsNode.scrollChildren, 0, false));
                    } else {
                        obtainAccessibilityNodeInfo2.setClassName("android.widget.ScrollView");
                    }
                }
                if (semanticsNode.hasAction(Action.SCROLL_LEFT) || semanticsNode.hasAction(Action.SCROLL_UP)) {
                    obtainAccessibilityNodeInfo2.addAction(4096);
                }
                if (semanticsNode.hasAction(Action.SCROLL_RIGHT) || semanticsNode.hasAction(Action.SCROLL_DOWN)) {
                    obtainAccessibilityNodeInfo2.addAction(8192);
                }
            }
            if (semanticsNode.hasAction(Action.INCREASE) || semanticsNode.hasAction(Action.DECREASE)) {
                obtainAccessibilityNodeInfo2.setClassName("android.widget.SeekBar");
                if (semanticsNode.hasAction(Action.INCREASE)) {
                    obtainAccessibilityNodeInfo2.addAction(4096);
                }
                if (semanticsNode.hasAction(Action.DECREASE)) {
                    obtainAccessibilityNodeInfo2.addAction(8192);
                }
            }
            if (semanticsNode.hasFlag(Flag.IS_LIVE_REGION)) {
                obtainAccessibilityNodeInfo2.setLiveRegion(1);
            }
            if (semanticsNode.hasFlag(Flag.IS_TEXT_FIELD)) {
                obtainAccessibilityNodeInfo2.setText(semanticsNode.getValue());
                obtainAccessibilityNodeInfo2.setHintText(semanticsNode.getTextFieldHint());
            } else if (!semanticsNode.hasFlag(Flag.SCOPES_ROUTE) && (valueLabelHint = semanticsNode.getValueLabelHint()) != null) {
                obtainAccessibilityNodeInfo2.setContentDescription(valueLabelHint);
            }
            if (semanticsNode.tooltip != null) {
                obtainAccessibilityNodeInfo2.setTooltipText(semanticsNode.tooltip);
            }
            boolean hasFlag = semanticsNode.hasFlag(Flag.HAS_CHECKED_STATE);
            boolean hasFlag2 = semanticsNode.hasFlag(Flag.HAS_TOGGLED_STATE);
            if (!hasFlag && !hasFlag2) {
                z = false;
            }
            obtainAccessibilityNodeInfo2.setCheckable(z);
            if (hasFlag) {
                obtainAccessibilityNodeInfo2.setChecked(semanticsNode.hasFlag(Flag.IS_CHECKED));
                if (semanticsNode.hasFlag(Flag.IS_IN_MUTUALLY_EXCLUSIVE_GROUP)) {
                    obtainAccessibilityNodeInfo2.setClassName("android.widget.RadioButton");
                } else {
                    obtainAccessibilityNodeInfo2.setClassName("android.widget.CheckBox");
                }
            } else if (hasFlag2) {
                obtainAccessibilityNodeInfo2.setChecked(semanticsNode.hasFlag(Flag.IS_TOGGLED));
                obtainAccessibilityNodeInfo2.setClassName("android.widget.Switch");
            }
            obtainAccessibilityNodeInfo2.setSelected(semanticsNode.hasFlag(Flag.IS_SELECTED));
            obtainAccessibilityNodeInfo2.setHeading(semanticsNode.hasFlag(Flag.IS_HEADER));
            SemanticsNode semanticsNode5 = this.accessibilityFocusedSemanticsNode;
            if (semanticsNode5 != null && semanticsNode5.id == i) {
                obtainAccessibilityNodeInfo2.addAction(128);
            } else {
                obtainAccessibilityNodeInfo2.addAction(64);
            }
            if (semanticsNode.customAccessibilityActions != null) {
                for (CustomAccessibilityAction customAccessibilityAction : semanticsNode.customAccessibilityActions) {
                    obtainAccessibilityNodeInfo2.addAction(new AccessibilityNodeInfo.AccessibilityAction(customAccessibilityAction.resourceId, customAccessibilityAction.label));
                }
            }
            for (SemanticsNode semanticsNode6 : semanticsNode.childrenInTraversalOrder) {
                if (!semanticsNode6.hasFlag(Flag.IS_HIDDEN)) {
                    if (semanticsNode6.platformViewId != -1) {
                        View platformViewById = this.platformViewsAccessibilityDelegate.getPlatformViewById(semanticsNode6.platformViewId);
                        if (!this.platformViewsAccessibilityDelegate.usesVirtualDisplay(semanticsNode6.platformViewId)) {
                            obtainAccessibilityNodeInfo2.addChild(platformViewById);
                        }
                    }
                    obtainAccessibilityNodeInfo2.addChild(this.rootAccessibilityView, semanticsNode6.id);
                }
            }
            return obtainAccessibilityNodeInfo2;
        }
        View platformViewById2 = this.platformViewsAccessibilityDelegate.getPlatformViewById(semanticsNode.platformViewId);
        if (platformViewById2 == null) {
            return null;
        }
        return this.accessibilityViewEmbedder.getRootNode(platformViewById2, semanticsNode.id, semanticsNode.getGlobalRect());
    }

    private boolean isImportant(SemanticsNode semanticsNode) {
        if (semanticsNode.hasFlag(Flag.SCOPES_ROUTE)) {
            return false;
        }
        return (semanticsNode.getValueLabelHint() == null && (semanticsNode.actions & (~systemAction)) == 0) ? false : true;
    }

    private Rect getBoundsInScreen(Rect rect) {
        Rect rect2 = new Rect(rect);
        int[] iArr = new int[2];
        this.rootAccessibilityView.getLocationOnScreen(iArr);
        rect2.offset(iArr[0], iArr[1]);
        return rect2;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public boolean performAction(int i, int i2, Bundle bundle) {
        if (i >= 65536) {
            boolean performAction = this.accessibilityViewEmbedder.performAction(i, i2, bundle);
            if (performAction && i2 == 128) {
                this.embeddedAccessibilityFocusedNodeId = null;
            }
            return performAction;
        }
        SemanticsNode semanticsNode = this.flutterSemanticsTree.get(Integer.valueOf(i));
        if (semanticsNode == null) {
            return false;
        }
        switch (i2) {
            case 16:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.TAP);
                return true;
            case 32:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.LONG_PRESS);
                return true;
            case 64:
                if (this.accessibilityFocusedSemanticsNode == null) {
                    this.rootAccessibilityView.invalidate();
                }
                this.accessibilityFocusedSemanticsNode = semanticsNode;
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.DID_GAIN_ACCESSIBILITY_FOCUS);
                HashMap hashMap = new HashMap();
                hashMap.put("type", "didGainFocus");
                hashMap.put("nodeId", Integer.valueOf(semanticsNode.id));
                this.accessibilityChannel.channel.send(hashMap);
                sendAccessibilityEvent(i, 32768);
                if (semanticsNode.hasAction(Action.INCREASE) || semanticsNode.hasAction(Action.DECREASE)) {
                    sendAccessibilityEvent(i, 4);
                }
                return true;
            case 128:
                SemanticsNode semanticsNode2 = this.accessibilityFocusedSemanticsNode;
                if (semanticsNode2 != null && semanticsNode2.id == i) {
                    this.accessibilityFocusedSemanticsNode = null;
                }
                Integer num = this.embeddedAccessibilityFocusedNodeId;
                if (num != null && num.intValue() == i) {
                    this.embeddedAccessibilityFocusedNodeId = null;
                }
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.DID_LOSE_ACCESSIBILITY_FOCUS);
                sendAccessibilityEvent(i, 65536);
                return true;
            case 256:
                return performCursorMoveAction(semanticsNode, i, bundle, true);
            case 512:
                return performCursorMoveAction(semanticsNode, i, bundle, false);
            case 4096:
                if (semanticsNode.hasAction(Action.SCROLL_UP)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.SCROLL_UP);
                } else if (semanticsNode.hasAction(Action.SCROLL_LEFT)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.SCROLL_LEFT);
                } else {
                    if (!semanticsNode.hasAction(Action.INCREASE)) {
                        return false;
                    }
                    semanticsNode.value = semanticsNode.increasedValue;
                    semanticsNode.valueAttributes = semanticsNode.increasedValueAttributes;
                    sendAccessibilityEvent(i, 4);
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.INCREASE);
                }
                return true;
            case 8192:
                if (semanticsNode.hasAction(Action.SCROLL_DOWN)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.SCROLL_DOWN);
                } else if (semanticsNode.hasAction(Action.SCROLL_RIGHT)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.SCROLL_RIGHT);
                } else {
                    if (!semanticsNode.hasAction(Action.DECREASE)) {
                        return false;
                    }
                    semanticsNode.value = semanticsNode.decreasedValue;
                    semanticsNode.valueAttributes = semanticsNode.decreasedValueAttributes;
                    sendAccessibilityEvent(i, 4);
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.DECREASE);
                }
                return true;
            case 16384:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.COPY);
                return true;
            case 32768:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.PASTE);
                return true;
            case 65536:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.CUT);
                return true;
            case 131072:
                HashMap hashMap2 = new HashMap();
                if (bundle != null && bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SELECTION_START_INT) && bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SELECTION_END_INT)) {
                    hashMap2.put("base", Integer.valueOf(bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SELECTION_START_INT)));
                    hashMap2.put("extent", Integer.valueOf(bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SELECTION_END_INT)));
                } else {
                    hashMap2.put("base", Integer.valueOf(semanticsNode.textSelectionExtent));
                    hashMap2.put("extent", Integer.valueOf(semanticsNode.textSelectionExtent));
                }
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.SET_SELECTION, hashMap2);
                SemanticsNode semanticsNode3 = this.flutterSemanticsTree.get(Integer.valueOf(i));
                semanticsNode3.textSelectionBase = ((Integer) hashMap2.get("base")).intValue();
                semanticsNode3.textSelectionExtent = ((Integer) hashMap2.get("extent")).intValue();
                return true;
            case 1048576:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.DISMISS);
                return true;
            case 2097152:
                return performSetText(semanticsNode, i, bundle);
            case 16908342:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.SHOW_ON_SCREEN);
                return true;
            default:
                CustomAccessibilityAction customAccessibilityAction = this.customAccessibilityActions.get(Integer.valueOf(i2 - FIRST_RESOURCE_ID));
                if (customAccessibilityAction == null) {
                    return false;
                }
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.CUSTOM_ACTION, Integer.valueOf(customAccessibilityAction.id));
                return true;
        }
    }

    private boolean performCursorMoveAction(SemanticsNode semanticsNode, int i, Bundle bundle, boolean z) {
        int i2 = bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT);
        boolean z2 = bundle.getBoolean(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN);
        int i3 = semanticsNode.textSelectionBase;
        int i4 = semanticsNode.textSelectionExtent;
        predictCursorMovement(semanticsNode, i2, z, z2);
        if (i3 != semanticsNode.textSelectionBase || i4 != semanticsNode.textSelectionExtent) {
            String str = semanticsNode.value != null ? semanticsNode.value : "";
            AccessibilityEvent obtainAccessibilityEvent = obtainAccessibilityEvent(semanticsNode.id, 8192);
            obtainAccessibilityEvent.getText().add(str);
            obtainAccessibilityEvent.setFromIndex(semanticsNode.textSelectionBase);
            obtainAccessibilityEvent.setToIndex(semanticsNode.textSelectionExtent);
            obtainAccessibilityEvent.setItemCount(str.length());
            sendAccessibilityEvent(obtainAccessibilityEvent);
        }
        if (i2 == 1) {
            if (z && semanticsNode.hasAction(Action.MOVE_CURSOR_FORWARD_BY_CHARACTER)) {
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.MOVE_CURSOR_FORWARD_BY_CHARACTER, Boolean.valueOf(z2));
                return true;
            }
            if (z || !semanticsNode.hasAction(Action.MOVE_CURSOR_BACKWARD_BY_CHARACTER)) {
                return false;
            }
            this.accessibilityChannel.dispatchSemanticsAction(i, Action.MOVE_CURSOR_BACKWARD_BY_CHARACTER, Boolean.valueOf(z2));
            return true;
        }
        if (i2 != 2) {
            return i2 == 4 || i2 == 8 || i2 == 16;
        }
        if (z && semanticsNode.hasAction(Action.MOVE_CURSOR_FORWARD_BY_WORD)) {
            this.accessibilityChannel.dispatchSemanticsAction(i, Action.MOVE_CURSOR_FORWARD_BY_WORD, Boolean.valueOf(z2));
            return true;
        }
        if (z || !semanticsNode.hasAction(Action.MOVE_CURSOR_BACKWARD_BY_WORD)) {
            return false;
        }
        this.accessibilityChannel.dispatchSemanticsAction(i, Action.MOVE_CURSOR_BACKWARD_BY_WORD, Boolean.valueOf(z2));
        return true;
    }

    private void predictCursorMovement(SemanticsNode semanticsNode, int i, boolean z, boolean z2) {
        if (semanticsNode.textSelectionExtent < 0 || semanticsNode.textSelectionBase < 0) {
            return;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i == 8 || i == 16) {
                        if (z) {
                            semanticsNode.textSelectionExtent = semanticsNode.value.length();
                        } else {
                            semanticsNode.textSelectionExtent = 0;
                        }
                    }
                } else if (!z || semanticsNode.textSelectionExtent >= semanticsNode.value.length()) {
                    if (!z && semanticsNode.textSelectionExtent > 0) {
                        Matcher matcher = Pattern.compile("(?s:.*)(\\n)").matcher(semanticsNode.value.substring(0, semanticsNode.textSelectionExtent));
                        if (matcher.find()) {
                            semanticsNode.textSelectionExtent = matcher.start(1);
                        } else {
                            semanticsNode.textSelectionExtent = 0;
                        }
                    }
                } else {
                    Matcher matcher2 = Pattern.compile("(?!^)(\\n)").matcher(semanticsNode.value.substring(semanticsNode.textSelectionExtent));
                    if (matcher2.find()) {
                        SemanticsNode.access$2212(semanticsNode, matcher2.start(1));
                    } else {
                        semanticsNode.textSelectionExtent = semanticsNode.value.length();
                    }
                }
            } else if (!z || semanticsNode.textSelectionExtent >= semanticsNode.value.length()) {
                if (!z && semanticsNode.textSelectionExtent > 0) {
                    Matcher matcher3 = Pattern.compile("(?s:.*)(\\b)\\p{L}").matcher(semanticsNode.value.substring(0, semanticsNode.textSelectionExtent));
                    if (matcher3.find()) {
                        semanticsNode.textSelectionExtent = matcher3.start(1);
                    }
                }
            } else {
                Matcher matcher4 = Pattern.compile("\\p{L}(\\b)").matcher(semanticsNode.value.substring(semanticsNode.textSelectionExtent));
                matcher4.find();
                if (matcher4.find()) {
                    SemanticsNode.access$2212(semanticsNode, matcher4.start(1));
                } else {
                    semanticsNode.textSelectionExtent = semanticsNode.value.length();
                }
            }
        } else if (z && semanticsNode.textSelectionExtent < semanticsNode.value.length()) {
            SemanticsNode.access$2212(semanticsNode, 1);
        } else if (!z && semanticsNode.textSelectionExtent > 0) {
            SemanticsNode.access$2220(semanticsNode, 1);
        }
        if (z2) {
            return;
        }
        semanticsNode.textSelectionBase = semanticsNode.textSelectionExtent;
    }

    private boolean performSetText(SemanticsNode semanticsNode, int i, Bundle bundle) {
        String string = (bundle == null || !bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE)) ? "" : bundle.getString(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE);
        this.accessibilityChannel.dispatchSemanticsAction(i, Action.SET_TEXT, string);
        semanticsNode.value = string;
        semanticsNode.valueAttributes = null;
        return true;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public AccessibilityNodeInfo findFocus(int i) {
        if (i == 1) {
            SemanticsNode semanticsNode = this.inputFocusedSemanticsNode;
            if (semanticsNode != null) {
                return createAccessibilityNodeInfo(semanticsNode.id);
            }
            Integer num = this.embeddedInputFocusedNodeId;
            if (num != null) {
                return createAccessibilityNodeInfo(num.intValue());
            }
        } else if (i != 2) {
            return null;
        }
        SemanticsNode semanticsNode2 = this.accessibilityFocusedSemanticsNode;
        if (semanticsNode2 != null) {
            return createAccessibilityNodeInfo(semanticsNode2.id);
        }
        Integer num2 = this.embeddedAccessibilityFocusedNodeId;
        if (num2 != null) {
            return createAccessibilityNodeInfo(num2.intValue());
        }
        return null;
    }

    private SemanticsNode getRootSemanticsNode() {
        return this.flutterSemanticsTree.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SemanticsNode getOrCreateSemanticsNode(int i) {
        SemanticsNode semanticsNode = this.flutterSemanticsTree.get(Integer.valueOf(i));
        if (semanticsNode != null) {
            return semanticsNode;
        }
        SemanticsNode semanticsNode2 = new SemanticsNode(this);
        semanticsNode2.id = i;
        this.flutterSemanticsTree.put(Integer.valueOf(i), semanticsNode2);
        return semanticsNode2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CustomAccessibilityAction getOrCreateAccessibilityAction(int i) {
        CustomAccessibilityAction customAccessibilityAction = this.customAccessibilityActions.get(Integer.valueOf(i));
        if (customAccessibilityAction != null) {
            return customAccessibilityAction;
        }
        CustomAccessibilityAction customAccessibilityAction2 = new CustomAccessibilityAction();
        customAccessibilityAction2.id = i;
        customAccessibilityAction2.resourceId = FIRST_RESOURCE_ID + i;
        this.customAccessibilityActions.put(Integer.valueOf(i), customAccessibilityAction2);
        return customAccessibilityAction2;
    }

    public boolean onAccessibilityHoverEvent(MotionEvent motionEvent) {
        return onAccessibilityHoverEvent(motionEvent, false);
    }

    public boolean onAccessibilityHoverEvent(MotionEvent motionEvent, boolean z) {
        if (!this.accessibilityManager.isTouchExplorationEnabled() || this.flutterSemanticsTree.isEmpty()) {
            return false;
        }
        SemanticsNode hitTest = getRootSemanticsNode().hitTest(new float[]{motionEvent.getX(), motionEvent.getY(), 0.0f, 1.0f}, z);
        if (hitTest != null && hitTest.platformViewId != -1) {
            if (z) {
                return false;
            }
            return this.accessibilityViewEmbedder.onAccessibilityHoverEvent(hitTest.id, motionEvent);
        }
        if (motionEvent.getAction() == 9 || motionEvent.getAction() == 7) {
            handleTouchExploration(motionEvent.getX(), motionEvent.getY(), z);
        } else if (motionEvent.getAction() == 10) {
            onTouchExplorationExit();
        } else {
            Log.d("flutter", "unexpected accessibility hover event: " + motionEvent);
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTouchExplorationExit() {
        SemanticsNode semanticsNode = this.hoveredObject;
        if (semanticsNode != null) {
            sendAccessibilityEvent(semanticsNode.id, 256);
            this.hoveredObject = null;
        }
    }

    private void handleTouchExploration(float f, float f2, boolean z) {
        SemanticsNode hitTest;
        if (this.flutterSemanticsTree.isEmpty() || (hitTest = getRootSemanticsNode().hitTest(new float[]{f, f2, 0.0f, 1.0f}, z)) == this.hoveredObject) {
            return;
        }
        if (hitTest != null) {
            sendAccessibilityEvent(hitTest.id, 128);
        }
        SemanticsNode semanticsNode = this.hoveredObject;
        if (semanticsNode != null) {
            sendAccessibilityEvent(semanticsNode.id, 256);
        }
        this.hoveredObject = hitTest;
    }

    void updateCustomAccessibilityActions(ByteBuffer byteBuffer, String[] strArr) {
        while (byteBuffer.hasRemaining()) {
            CustomAccessibilityAction orCreateAccessibilityAction = getOrCreateAccessibilityAction(byteBuffer.getInt());
            orCreateAccessibilityAction.overrideId = byteBuffer.getInt();
            int i = byteBuffer.getInt();
            String str = null;
            orCreateAccessibilityAction.label = i == -1 ? null : strArr[i];
            int i2 = byteBuffer.getInt();
            if (i2 != -1) {
                str = strArr[i2];
            }
            orCreateAccessibilityAction.hint = str;
        }
    }

    void updateSemantics(ByteBuffer byteBuffer, String[] strArr, ByteBuffer[] byteBufferArr) {
        SemanticsNode semanticsNode;
        SemanticsNode semanticsNode2;
        float f;
        float f2;
        WindowInsets rootWindowInsets;
        View platformViewById;
        ArrayList arrayList = new ArrayList();
        while (byteBuffer.hasRemaining()) {
            SemanticsNode orCreateSemanticsNode = getOrCreateSemanticsNode(byteBuffer.getInt());
            orCreateSemanticsNode.updateWith(byteBuffer, strArr, byteBufferArr);
            if (!orCreateSemanticsNode.hasFlag(Flag.IS_HIDDEN)) {
                if (orCreateSemanticsNode.hasFlag(Flag.IS_FOCUSED)) {
                    this.inputFocusedSemanticsNode = orCreateSemanticsNode;
                }
                if (orCreateSemanticsNode.hadPreviousConfig) {
                    arrayList.add(orCreateSemanticsNode);
                }
                if (orCreateSemanticsNode.platformViewId != -1 && !this.platformViewsAccessibilityDelegate.usesVirtualDisplay(orCreateSemanticsNode.platformViewId) && (platformViewById = this.platformViewsAccessibilityDelegate.getPlatformViewById(orCreateSemanticsNode.platformViewId)) != null) {
                    platformViewById.setImportantForAccessibility(0);
                }
            }
        }
        HashSet hashSet = new HashSet();
        SemanticsNode rootSemanticsNode = getRootSemanticsNode();
        ArrayList<SemanticsNode> arrayList2 = new ArrayList();
        if (rootSemanticsNode != null) {
            float[] fArr = new float[16];
            Matrix.setIdentityM(fArr, 0);
            if (doesLayoutInDisplayCutoutModeRequireLeftInset() && (rootWindowInsets = this.rootAccessibilityView.getRootWindowInsets()) != null) {
                if (!this.lastLeftFrameInset.equals(Integer.valueOf(rootWindowInsets.getSystemWindowInsetLeft()))) {
                    rootSemanticsNode.globalGeometryDirty = true;
                    rootSemanticsNode.inverseTransformDirty = true;
                }
                this.lastLeftFrameInset = Integer.valueOf(rootWindowInsets.getSystemWindowInsetLeft());
                Matrix.translateM(fArr, 0, r4.intValue(), 0.0f, 0.0f);
            }
            rootSemanticsNode.updateRecursively(fArr, hashSet, false);
            rootSemanticsNode.collectRoutes(arrayList2);
        }
        SemanticsNode semanticsNode3 = null;
        for (SemanticsNode semanticsNode4 : arrayList2) {
            if (!this.flutterNavigationStack.contains(Integer.valueOf(semanticsNode4.id))) {
                semanticsNode3 = semanticsNode4;
            }
        }
        if (semanticsNode3 == null && arrayList2.size() > 0) {
            semanticsNode3 = (SemanticsNode) arrayList2.get(arrayList2.size() - 1);
        }
        if (semanticsNode3 != null && (semanticsNode3.id != this.previousRouteId || arrayList2.size() != this.flutterNavigationStack.size())) {
            this.previousRouteId = semanticsNode3.id;
            onWindowNameChange(semanticsNode3);
        }
        this.flutterNavigationStack.clear();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            this.flutterNavigationStack.add(Integer.valueOf(((SemanticsNode) it.next()).id));
        }
        Iterator<Map.Entry<Integer, SemanticsNode>> it2 = this.flutterSemanticsTree.entrySet().iterator();
        while (it2.hasNext()) {
            SemanticsNode value = it2.next().getValue();
            if (!hashSet.contains(value)) {
                willRemoveSemanticsNode(value);
                it2.remove();
            }
        }
        sendWindowContentChangeEvent(0);
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            SemanticsNode semanticsNode5 = (SemanticsNode) it3.next();
            if (semanticsNode5.didScroll()) {
                AccessibilityEvent obtainAccessibilityEvent = obtainAccessibilityEvent(semanticsNode5.id, 4096);
                float f3 = semanticsNode5.scrollPosition;
                float f4 = semanticsNode5.scrollExtentMax;
                if (Float.isInfinite(semanticsNode5.scrollExtentMax)) {
                    if (f3 > SCROLL_POSITION_CAP_FOR_INFINITY) {
                        f3 = 70000.0f;
                    }
                    f4 = 100000.0f;
                }
                if (Float.isInfinite(semanticsNode5.scrollExtentMin)) {
                    f = f4 + SCROLL_EXTENT_FOR_INFINITY;
                    if (f3 < -70000.0f) {
                        f3 = -70000.0f;
                    }
                    f2 = f3 + SCROLL_EXTENT_FOR_INFINITY;
                } else {
                    f = f4 - semanticsNode5.scrollExtentMin;
                    f2 = f3 - semanticsNode5.scrollExtentMin;
                }
                if (semanticsNode5.hadAction(Action.SCROLL_UP) || semanticsNode5.hadAction(Action.SCROLL_DOWN)) {
                    obtainAccessibilityEvent.setScrollY((int) f2);
                    obtainAccessibilityEvent.setMaxScrollY((int) f);
                } else if (semanticsNode5.hadAction(Action.SCROLL_LEFT) || semanticsNode5.hadAction(Action.SCROLL_RIGHT)) {
                    obtainAccessibilityEvent.setScrollX((int) f2);
                    obtainAccessibilityEvent.setMaxScrollX((int) f);
                }
                if (semanticsNode5.scrollChildren > 0) {
                    obtainAccessibilityEvent.setItemCount(semanticsNode5.scrollChildren);
                    obtainAccessibilityEvent.setFromIndex(semanticsNode5.scrollIndex);
                    Iterator it4 = semanticsNode5.childrenInHitTestOrder.iterator();
                    int i = 0;
                    while (it4.hasNext()) {
                        if (!((SemanticsNode) it4.next()).hasFlag(Flag.IS_HIDDEN)) {
                            i++;
                        }
                    }
                    obtainAccessibilityEvent.setToIndex((semanticsNode5.scrollIndex + i) - 1);
                }
                sendAccessibilityEvent(obtainAccessibilityEvent);
            }
            if (semanticsNode5.hasFlag(Flag.IS_LIVE_REGION) && semanticsNode5.didChangeLabel()) {
                sendWindowContentChangeEvent(semanticsNode5.id);
            }
            SemanticsNode semanticsNode6 = this.accessibilityFocusedSemanticsNode;
            if (semanticsNode6 != null && semanticsNode6.id == semanticsNode5.id && !semanticsNode5.hadFlag(Flag.IS_SELECTED) && semanticsNode5.hasFlag(Flag.IS_SELECTED)) {
                AccessibilityEvent obtainAccessibilityEvent2 = obtainAccessibilityEvent(semanticsNode5.id, 4);
                obtainAccessibilityEvent2.getText().add(semanticsNode5.label);
                sendAccessibilityEvent(obtainAccessibilityEvent2);
            }
            SemanticsNode semanticsNode7 = this.inputFocusedSemanticsNode;
            if (semanticsNode7 != null && semanticsNode7.id == semanticsNode5.id && ((semanticsNode2 = this.lastInputFocusedSemanticsNode) == null || semanticsNode2.id != this.inputFocusedSemanticsNode.id)) {
                this.lastInputFocusedSemanticsNode = this.inputFocusedSemanticsNode;
                sendAccessibilityEvent(obtainAccessibilityEvent(semanticsNode5.id, 8));
            } else if (this.inputFocusedSemanticsNode == null) {
                this.lastInputFocusedSemanticsNode = null;
            }
            SemanticsNode semanticsNode8 = this.inputFocusedSemanticsNode;
            if (semanticsNode8 != null && semanticsNode8.id == semanticsNode5.id && semanticsNode5.hadFlag(Flag.IS_TEXT_FIELD) && semanticsNode5.hasFlag(Flag.IS_TEXT_FIELD) && ((semanticsNode = this.accessibilityFocusedSemanticsNode) == null || semanticsNode.id == this.inputFocusedSemanticsNode.id)) {
                String str = semanticsNode5.previousValue != null ? semanticsNode5.previousValue : "";
                String str2 = semanticsNode5.value != null ? semanticsNode5.value : "";
                AccessibilityEvent createTextChangedEvent = createTextChangedEvent(semanticsNode5.id, str, str2);
                if (createTextChangedEvent != null) {
                    sendAccessibilityEvent(createTextChangedEvent);
                }
                if (semanticsNode5.previousTextSelectionBase != semanticsNode5.textSelectionBase || semanticsNode5.previousTextSelectionExtent != semanticsNode5.textSelectionExtent) {
                    AccessibilityEvent obtainAccessibilityEvent3 = obtainAccessibilityEvent(semanticsNode5.id, 8192);
                    obtainAccessibilityEvent3.getText().add(str2);
                    obtainAccessibilityEvent3.setFromIndex(semanticsNode5.textSelectionBase);
                    obtainAccessibilityEvent3.setToIndex(semanticsNode5.textSelectionExtent);
                    obtainAccessibilityEvent3.setItemCount(str2.length());
                    sendAccessibilityEvent(obtainAccessibilityEvent3);
                }
            }
        }
    }

    private AccessibilityEvent createTextChangedEvent(int i, String str, String str2) {
        AccessibilityEvent obtainAccessibilityEvent = obtainAccessibilityEvent(i, 16);
        obtainAccessibilityEvent.setBeforeText(str);
        obtainAccessibilityEvent.getText().add(str2);
        int i2 = 0;
        while (i2 < str.length() && i2 < str2.length() && str.charAt(i2) == str2.charAt(i2)) {
            i2++;
        }
        if (i2 >= str.length() && i2 >= str2.length()) {
            return null;
        }
        obtainAccessibilityEvent.setFromIndex(i2);
        int length = str.length() - 1;
        int length2 = str2.length() - 1;
        while (length >= i2 && length2 >= i2 && str.charAt(length) == str2.charAt(length2)) {
            length--;
            length2--;
        }
        obtainAccessibilityEvent.setRemovedCount((length - i2) + 1);
        obtainAccessibilityEvent.setAddedCount((length2 - i2) + 1);
        return obtainAccessibilityEvent;
    }

    public void sendAccessibilityEvent(int i, int i2) {
        if (this.accessibilityManager.isEnabled()) {
            sendAccessibilityEvent(obtainAccessibilityEvent(i, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (this.accessibilityManager.isEnabled()) {
            this.rootAccessibilityView.getParent().requestSendAccessibilityEvent(this.rootAccessibilityView, accessibilityEvent);
        }
    }

    private void onWindowNameChange(SemanticsNode semanticsNode) {
        String routeName = semanticsNode.getRouteName();
        if (routeName == null) {
            routeName = " ";
        }
        setAccessibilityPaneTitle(routeName);
    }

    private void setAccessibilityPaneTitle(String str) {
        this.rootAccessibilityView.setAccessibilityPaneTitle(str);
    }

    private void sendWindowContentChangeEvent(int i) {
        AccessibilityEvent obtainAccessibilityEvent = obtainAccessibilityEvent(i, 2048);
        obtainAccessibilityEvent.setContentChangeTypes(1);
        sendAccessibilityEvent(obtainAccessibilityEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccessibilityEvent obtainAccessibilityEvent(int i, int i2) {
        AccessibilityEvent obtainAccessibilityEvent = obtainAccessibilityEvent(i2);
        obtainAccessibilityEvent.setPackageName(this.rootAccessibilityView.getContext().getPackageName());
        obtainAccessibilityEvent.setSource(this.rootAccessibilityView, i);
        return obtainAccessibilityEvent;
    }

    public AccessibilityEvent obtainAccessibilityEvent(int i) {
        return AccessibilityEvent.obtain(i);
    }

    private boolean doesLayoutInDisplayCutoutModeRequireLeftInset() {
        Activity activity = ViewUtils.getActivity(this.rootAccessibilityView.getContext());
        if (activity == null || activity.getWindow() == null) {
            return false;
        }
        int i = activity.getWindow().getAttributes().layoutInDisplayCutoutMode;
        return i == 2 || i == 0;
    }

    private void willRemoveSemanticsNode(SemanticsNode semanticsNode) {
        View platformViewById;
        Integer num;
        semanticsNode.parent = null;
        if (semanticsNode.platformViewId != -1 && (num = this.embeddedAccessibilityFocusedNodeId) != null && this.accessibilityViewEmbedder.platformViewOfNode(num.intValue()) == this.platformViewsAccessibilityDelegate.getPlatformViewById(semanticsNode.platformViewId)) {
            sendAccessibilityEvent(this.embeddedAccessibilityFocusedNodeId.intValue(), 65536);
            this.embeddedAccessibilityFocusedNodeId = null;
        }
        if (semanticsNode.platformViewId != -1 && (platformViewById = this.platformViewsAccessibilityDelegate.getPlatformViewById(semanticsNode.platformViewId)) != null) {
            platformViewById.setImportantForAccessibility(4);
        }
        SemanticsNode semanticsNode2 = this.accessibilityFocusedSemanticsNode;
        if (semanticsNode2 == semanticsNode) {
            sendAccessibilityEvent(semanticsNode2.id, 65536);
            this.accessibilityFocusedSemanticsNode = null;
        }
        if (this.inputFocusedSemanticsNode == semanticsNode) {
            this.inputFocusedSemanticsNode = null;
        }
        if (this.hoveredObject == semanticsNode) {
            this.hoveredObject = null;
        }
    }

    public void reset() {
        this.flutterSemanticsTree.clear();
        SemanticsNode semanticsNode = this.accessibilityFocusedSemanticsNode;
        if (semanticsNode != null) {
            sendAccessibilityEvent(semanticsNode.id, 65536);
        }
        this.accessibilityFocusedSemanticsNode = null;
        this.hoveredObject = null;
        sendWindowContentChangeEvent(0);
    }

    /* loaded from: classes3.dex */
    public enum Action {
        TAP(1),
        LONG_PRESS(2),
        SCROLL_LEFT(4),
        SCROLL_RIGHT(8),
        SCROLL_UP(16),
        SCROLL_DOWN(32),
        INCREASE(64),
        DECREASE(128),
        SHOW_ON_SCREEN(256),
        MOVE_CURSOR_FORWARD_BY_CHARACTER(512),
        MOVE_CURSOR_BACKWARD_BY_CHARACTER(1024),
        SET_SELECTION(2048),
        COPY(4096),
        CUT(8192),
        PASTE(16384),
        DID_GAIN_ACCESSIBILITY_FOCUS(32768),
        DID_LOSE_ACCESSIBILITY_FOCUS(65536),
        CUSTOM_ACTION(131072),
        DISMISS(262144),
        MOVE_CURSOR_FORWARD_BY_WORD(524288),
        MOVE_CURSOR_BACKWARD_BY_WORD(1048576),
        SET_TEXT(2097152);

        public final int value;

        Action(int i) {
            this.value = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum Flag {
        HAS_CHECKED_STATE(1),
        IS_CHECKED(2),
        IS_SELECTED(4),
        IS_BUTTON(8),
        IS_TEXT_FIELD(16),
        IS_FOCUSED(32),
        HAS_ENABLED_STATE(64),
        IS_ENABLED(128),
        IS_IN_MUTUALLY_EXCLUSIVE_GROUP(256),
        IS_HEADER(512),
        IS_OBSCURED(1024),
        SCOPES_ROUTE(2048),
        NAMES_ROUTE(4096),
        IS_HIDDEN(8192),
        IS_IMAGE(16384),
        IS_LIVE_REGION(32768),
        HAS_TOGGLED_STATE(65536),
        IS_TOGGLED(131072),
        HAS_IMPLICIT_SCROLLING(262144),
        IS_MULTILINE(524288),
        IS_READ_ONLY(1048576),
        IS_FOCUSABLE(2097152),
        IS_LINK(4194304),
        IS_SLIDER(8388608),
        IS_KEYBOARD_KEY(16777216),
        IS_CHECK_STATE_MIXED(33554432),
        HAS_EXPANDED_STATE(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL),
        IS_EXPANDED(134217728);

        final int value;

        Flag(int i) {
            this.value = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum AccessibilityFeature {
        ACCESSIBLE_NAVIGATION(1),
        INVERT_COLORS(2),
        DISABLE_ANIMATIONS(4),
        BOLD_TEXT(8),
        REDUCE_MOTION(16),
        HIGH_CONTRAST(32),
        ON_OFF_SWITCH_LABELS(64);

        final int value;

        AccessibilityFeature(int i) {
            this.value = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class CustomAccessibilityAction {
        private String hint;
        private String label;
        private int resourceId = -1;
        private int id = -1;
        private int overrideId = -1;

        CustomAccessibilityAction() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class StringAttribute {
        int end;
        int start;
        StringAttributeType type;

        private StringAttribute() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class SpellOutStringAttribute extends StringAttribute {
        private SpellOutStringAttribute() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class LocaleStringAttribute extends StringAttribute {
        String locale;

        private LocaleStringAttribute() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class SemanticsNode {
        final AccessibilityBridge accessibilityBridge;
        private int actions;
        private float bottom;
        private int currentValueLength;
        private List<CustomAccessibilityAction> customAccessibilityActions;
        private String decreasedValue;
        private List<StringAttribute> decreasedValueAttributes;
        private int flags;
        private Rect globalRect;
        private float[] globalTransform;
        private String hint;
        private List<StringAttribute> hintAttributes;
        private String identifier;
        private String increasedValue;
        private List<StringAttribute> increasedValueAttributes;
        private float[] inverseTransform;
        private String label;
        private List<StringAttribute> labelAttributes;
        private float left;
        private int maxValueLength;
        private CustomAccessibilityAction onLongPressOverride;
        private CustomAccessibilityAction onTapOverride;
        private SemanticsNode parent;
        private int platformViewId;
        private int previousActions;
        private int previousFlags;
        private String previousLabel;
        private float previousScrollExtentMax;
        private float previousScrollExtentMin;
        private float previousScrollPosition;
        private int previousTextSelectionBase;
        private int previousTextSelectionExtent;
        private String previousValue;
        private float right;
        private int scrollChildren;
        private float scrollExtentMax;
        private float scrollExtentMin;
        private int scrollIndex;
        private float scrollPosition;
        private TextDirection textDirection;
        private int textSelectionBase;
        private int textSelectionExtent;
        private String tooltip;
        private float top;
        private float[] transform;
        private String value;
        private List<StringAttribute> valueAttributes;
        private int id = -1;
        private int previousNodeId = -1;
        private boolean hadPreviousConfig = false;
        private List<SemanticsNode> childrenInTraversalOrder = new ArrayList();
        private List<SemanticsNode> childrenInHitTestOrder = new ArrayList();
        private boolean inverseTransformDirty = true;
        private boolean globalGeometryDirty = true;

        /* JADX INFO: Access modifiers changed from: private */
        public Rect getGlobalRect() {
            return this.globalRect;
        }

        private void log(String str, boolean z) {
        }

        static /* synthetic */ int access$2212(SemanticsNode semanticsNode, int i) {
            int i2 = semanticsNode.textSelectionExtent + i;
            semanticsNode.textSelectionExtent = i2;
            return i2;
        }

        static /* synthetic */ int access$2220(SemanticsNode semanticsNode, int i) {
            int i2 = semanticsNode.textSelectionExtent - i;
            semanticsNode.textSelectionExtent = i2;
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean nullableHasAncestor(SemanticsNode semanticsNode, Predicate<SemanticsNode> predicate) {
            return (semanticsNode == null || semanticsNode.getAncestor(predicate) == null) ? false : true;
        }

        SemanticsNode(AccessibilityBridge accessibilityBridge) {
            this.accessibilityBridge = accessibilityBridge;
        }

        private SemanticsNode getAncestor(Predicate<SemanticsNode> predicate) {
            for (SemanticsNode semanticsNode = this.parent; semanticsNode != null; semanticsNode = semanticsNode.parent) {
                if (predicate.test(semanticsNode)) {
                    return semanticsNode;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasAction(Action action) {
            return (this.actions & action.value) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hadAction(Action action) {
            return (this.previousActions & action.value) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasFlag(Flag flag) {
            return (this.flags & flag.value) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hadFlag(Flag flag) {
            return (this.previousFlags & flag.value) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean didScroll() {
            return (Float.isNaN(this.scrollPosition) || Float.isNaN(this.previousScrollPosition) || this.previousScrollPosition == this.scrollPosition) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean didChangeLabel() {
            String str;
            String str2 = this.label;
            if (str2 == null && this.previousLabel == null) {
                return false;
            }
            return str2 == null || (str = this.previousLabel) == null || !str2.equals(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateWith(ByteBuffer byteBuffer, String[] strArr, ByteBuffer[] byteBufferArr) {
            this.hadPreviousConfig = true;
            this.previousValue = this.value;
            this.previousLabel = this.label;
            this.previousFlags = this.flags;
            this.previousActions = this.actions;
            this.previousTextSelectionBase = this.textSelectionBase;
            this.previousTextSelectionExtent = this.textSelectionExtent;
            this.previousScrollPosition = this.scrollPosition;
            this.previousScrollExtentMax = this.scrollExtentMax;
            this.previousScrollExtentMin = this.scrollExtentMin;
            this.flags = byteBuffer.getInt();
            this.actions = byteBuffer.getInt();
            this.maxValueLength = byteBuffer.getInt();
            this.currentValueLength = byteBuffer.getInt();
            this.textSelectionBase = byteBuffer.getInt();
            this.textSelectionExtent = byteBuffer.getInt();
            this.platformViewId = byteBuffer.getInt();
            this.scrollChildren = byteBuffer.getInt();
            this.scrollIndex = byteBuffer.getInt();
            this.scrollPosition = byteBuffer.getFloat();
            this.scrollExtentMax = byteBuffer.getFloat();
            this.scrollExtentMin = byteBuffer.getFloat();
            int i = byteBuffer.getInt();
            this.identifier = i == -1 ? null : strArr[i];
            int i2 = byteBuffer.getInt();
            this.label = i2 == -1 ? null : strArr[i2];
            this.labelAttributes = getStringAttributesFromBuffer(byteBuffer, byteBufferArr);
            int i3 = byteBuffer.getInt();
            this.value = i3 == -1 ? null : strArr[i3];
            this.valueAttributes = getStringAttributesFromBuffer(byteBuffer, byteBufferArr);
            int i4 = byteBuffer.getInt();
            this.increasedValue = i4 == -1 ? null : strArr[i4];
            this.increasedValueAttributes = getStringAttributesFromBuffer(byteBuffer, byteBufferArr);
            int i5 = byteBuffer.getInt();
            this.decreasedValue = i5 == -1 ? null : strArr[i5];
            this.decreasedValueAttributes = getStringAttributesFromBuffer(byteBuffer, byteBufferArr);
            int i6 = byteBuffer.getInt();
            this.hint = i6 == -1 ? null : strArr[i6];
            this.hintAttributes = getStringAttributesFromBuffer(byteBuffer, byteBufferArr);
            int i7 = byteBuffer.getInt();
            this.tooltip = i7 == -1 ? null : strArr[i7];
            this.textDirection = TextDirection.fromInt(byteBuffer.getInt());
            this.left = byteBuffer.getFloat();
            this.top = byteBuffer.getFloat();
            this.right = byteBuffer.getFloat();
            this.bottom = byteBuffer.getFloat();
            if (this.transform == null) {
                this.transform = new float[16];
            }
            for (int i8 = 0; i8 < 16; i8++) {
                this.transform[i8] = byteBuffer.getFloat();
            }
            this.inverseTransformDirty = true;
            this.globalGeometryDirty = true;
            int i9 = byteBuffer.getInt();
            this.childrenInTraversalOrder.clear();
            this.childrenInHitTestOrder.clear();
            for (int i10 = 0; i10 < i9; i10++) {
                SemanticsNode orCreateSemanticsNode = this.accessibilityBridge.getOrCreateSemanticsNode(byteBuffer.getInt());
                orCreateSemanticsNode.parent = this;
                this.childrenInTraversalOrder.add(orCreateSemanticsNode);
            }
            for (int i11 = 0; i11 < i9; i11++) {
                SemanticsNode orCreateSemanticsNode2 = this.accessibilityBridge.getOrCreateSemanticsNode(byteBuffer.getInt());
                orCreateSemanticsNode2.parent = this;
                this.childrenInHitTestOrder.add(orCreateSemanticsNode2);
            }
            int i12 = byteBuffer.getInt();
            if (i12 == 0) {
                this.customAccessibilityActions = null;
                return;
            }
            List<CustomAccessibilityAction> list = this.customAccessibilityActions;
            if (list == null) {
                this.customAccessibilityActions = new ArrayList(i12);
            } else {
                list.clear();
            }
            for (int i13 = 0; i13 < i12; i13++) {
                CustomAccessibilityAction orCreateAccessibilityAction = this.accessibilityBridge.getOrCreateAccessibilityAction(byteBuffer.getInt());
                if (orCreateAccessibilityAction.overrideId == Action.TAP.value) {
                    this.onTapOverride = orCreateAccessibilityAction;
                } else if (orCreateAccessibilityAction.overrideId == Action.LONG_PRESS.value) {
                    this.onLongPressOverride = orCreateAccessibilityAction;
                } else {
                    this.customAccessibilityActions.add(orCreateAccessibilityAction);
                }
                this.customAccessibilityActions.add(orCreateAccessibilityAction);
            }
        }

        private List<StringAttribute> getStringAttributesFromBuffer(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr) {
            int i = byteBuffer.getInt();
            if (i == -1) {
                return null;
            }
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = byteBuffer.getInt();
                int i4 = byteBuffer.getInt();
                StringAttributeType stringAttributeType = StringAttributeType.values()[byteBuffer.getInt()];
                int i5 = AnonymousClass5.$SwitchMap$io$flutter$view$AccessibilityBridge$StringAttributeType[stringAttributeType.ordinal()];
                if (i5 == 1) {
                    byteBuffer.getInt();
                    SpellOutStringAttribute spellOutStringAttribute = new SpellOutStringAttribute();
                    spellOutStringAttribute.start = i3;
                    spellOutStringAttribute.end = i4;
                    spellOutStringAttribute.type = stringAttributeType;
                    arrayList.add(spellOutStringAttribute);
                } else if (i5 == 2) {
                    ByteBuffer byteBuffer2 = byteBufferArr[byteBuffer.getInt()];
                    LocaleStringAttribute localeStringAttribute = new LocaleStringAttribute();
                    localeStringAttribute.start = i3;
                    localeStringAttribute.end = i4;
                    localeStringAttribute.type = stringAttributeType;
                    localeStringAttribute.locale = Charset.forName(C.UTF8_NAME).decode(byteBuffer2).toString();
                    arrayList.add(localeStringAttribute);
                }
            }
            return arrayList;
        }

        private void ensureInverseTransform() {
            if (this.inverseTransformDirty) {
                this.inverseTransformDirty = false;
                if (this.inverseTransform == null) {
                    this.inverseTransform = new float[16];
                }
                if (Matrix.invertM(this.inverseTransform, 0, this.transform, 0)) {
                    return;
                }
                Arrays.fill(this.inverseTransform, 0.0f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SemanticsNode hitTest(float[] fArr, boolean z) {
            float f = fArr[3];
            boolean z2 = false;
            float f2 = fArr[0] / f;
            float f3 = fArr[1] / f;
            if (f2 < this.left || f2 >= this.right || f3 < this.top || f3 >= this.bottom) {
                return null;
            }
            float[] fArr2 = new float[4];
            for (SemanticsNode semanticsNode : this.childrenInHitTestOrder) {
                if (!semanticsNode.hasFlag(Flag.IS_HIDDEN)) {
                    semanticsNode.ensureInverseTransform();
                    Matrix.multiplyMV(fArr2, 0, semanticsNode.inverseTransform, 0, fArr, 0);
                    SemanticsNode hitTest = semanticsNode.hitTest(fArr2, z);
                    if (hitTest != null) {
                        return hitTest;
                    }
                }
            }
            if (z && this.platformViewId != -1) {
                z2 = true;
            }
            if (isFocusable() || z2) {
                return this;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isFocusable() {
            String str;
            String str2;
            String str3;
            if (hasFlag(Flag.SCOPES_ROUTE)) {
                return false;
            }
            if (hasFlag(Flag.IS_FOCUSABLE)) {
                return true;
            }
            return ((this.actions & (~AccessibilityBridge.SCROLLABLE_ACTIONS)) == 0 && (this.flags & AccessibilityBridge.FOCUSABLE_FLAGS) == 0 && ((str = this.label) == null || str.isEmpty()) && (((str2 = this.value) == null || str2.isEmpty()) && ((str3 = this.hint) == null || str3.isEmpty()))) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void collectRoutes(List<SemanticsNode> list) {
            if (hasFlag(Flag.SCOPES_ROUTE)) {
                list.add(this);
            }
            Iterator<SemanticsNode> it = this.childrenInTraversalOrder.iterator();
            while (it.hasNext()) {
                it.next().collectRoutes(list);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getRouteName() {
            String str;
            if (hasFlag(Flag.NAMES_ROUTE) && (str = this.label) != null && !str.isEmpty()) {
                return this.label;
            }
            Iterator<SemanticsNode> it = this.childrenInTraversalOrder.iterator();
            while (it.hasNext()) {
                String routeName = it.next().getRouteName();
                if (routeName != null && !routeName.isEmpty()) {
                    return routeName;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateRecursively(float[] fArr, Set<SemanticsNode> set, boolean z) {
            set.add(this);
            if (this.globalGeometryDirty) {
                z = true;
            }
            if (z) {
                if (this.globalTransform == null) {
                    this.globalTransform = new float[16];
                }
                if (this.transform == null) {
                    this.transform = new float[16];
                }
                Matrix.multiplyMM(this.globalTransform, 0, fArr, 0, this.transform, 0);
                float[] fArr2 = {this.left, this.top, 0.0f, 1.0f};
                float[] fArr3 = new float[4];
                float[] fArr4 = new float[4];
                float[] fArr5 = new float[4];
                float[] fArr6 = new float[4];
                transformPoint(fArr3, this.globalTransform, fArr2);
                fArr2[0] = this.right;
                fArr2[1] = this.top;
                transformPoint(fArr4, this.globalTransform, fArr2);
                fArr2[0] = this.right;
                fArr2[1] = this.bottom;
                transformPoint(fArr5, this.globalTransform, fArr2);
                fArr2[0] = this.left;
                fArr2[1] = this.bottom;
                transformPoint(fArr6, this.globalTransform, fArr2);
                if (this.globalRect == null) {
                    this.globalRect = new Rect();
                }
                this.globalRect.set(Math.round(min(fArr3[0], fArr4[0], fArr5[0], fArr6[0])), Math.round(min(fArr3[1], fArr4[1], fArr5[1], fArr6[1])), Math.round(max(fArr3[0], fArr4[0], fArr5[0], fArr6[0])), Math.round(max(fArr3[1], fArr4[1], fArr5[1], fArr6[1])));
                this.globalGeometryDirty = false;
            }
            int i = -1;
            for (SemanticsNode semanticsNode : this.childrenInTraversalOrder) {
                semanticsNode.previousNodeId = i;
                i = semanticsNode.id;
                semanticsNode.updateRecursively(this.globalTransform, set, z);
            }
        }

        private void transformPoint(float[] fArr, float[] fArr2, float[] fArr3) {
            Matrix.multiplyMV(fArr, 0, fArr2, 0, fArr3, 0);
            float f = fArr[3];
            fArr[0] = fArr[0] / f;
            fArr[1] = fArr[1] / f;
            fArr[2] = fArr[2] / f;
            fArr[3] = 0.0f;
        }

        private float min(float f, float f2, float f3, float f4) {
            return Math.min(f, Math.min(f2, Math.min(f3, f4)));
        }

        private float max(float f, float f2, float f3, float f4) {
            return Math.max(f, Math.max(f2, Math.max(f3, f4)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CharSequence getValue() {
            return createSpannableString(this.value, this.valueAttributes);
        }

        private CharSequence getLabel() {
            return createSpannableString(this.label, this.labelAttributes);
        }

        private CharSequence getHint() {
            return createSpannableString(this.hint, this.hintAttributes);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CharSequence getValueLabelHint() {
            CharSequence[] charSequenceArr = {getValue(), getLabel(), getHint()};
            CharSequence charSequence = null;
            for (int i = 0; i < 3; i++) {
                CharSequence charSequence2 = charSequenceArr[i];
                if (charSequence2 != null && charSequence2.length() > 0) {
                    charSequence = (charSequence == null || charSequence.length() == 0) ? charSequence2 : TextUtils.concat(charSequence, ", ", charSequence2);
                }
            }
            return charSequence;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CharSequence getTextFieldHint() {
            CharSequence[] charSequenceArr = {getLabel(), getHint()};
            CharSequence charSequence = null;
            for (int i = 0; i < 2; i++) {
                CharSequence charSequence2 = charSequenceArr[i];
                if (charSequence2 != null && charSequence2.length() > 0) {
                    charSequence = (charSequence == null || charSequence.length() == 0) ? charSequence2 : TextUtils.concat(charSequence, ", ", charSequence2);
                }
            }
            return charSequence;
        }

        private SpannableString createSpannableString(String str, List<StringAttribute> list) {
            if (str == null) {
                return null;
            }
            SpannableString spannableString = new SpannableString(str);
            if (list != null) {
                for (StringAttribute stringAttribute : list) {
                    int i = AnonymousClass5.$SwitchMap$io$flutter$view$AccessibilityBridge$StringAttributeType[stringAttribute.type.ordinal()];
                    if (i == 1) {
                        spannableString.setSpan(new TtsSpan.Builder("android.type.verbatim").build(), stringAttribute.start, stringAttribute.end, 0);
                    } else if (i == 2) {
                        spannableString.setSpan(new LocaleSpan(Locale.forLanguageTag(((LocaleStringAttribute) stringAttribute).locale)), stringAttribute.start, stringAttribute.end, 0);
                    }
                }
            }
            return spannableString;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.flutter.view.AccessibilityBridge$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$view$AccessibilityBridge$StringAttributeType;

        static {
            int[] iArr = new int[StringAttributeType.values().length];
            $SwitchMap$io$flutter$view$AccessibilityBridge$StringAttributeType = iArr;
            try {
                iArr[StringAttributeType.SPELLOUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$view$AccessibilityBridge$StringAttributeType[StringAttributeType.LOCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public boolean externalViewRequestSendAccessibilityEvent(View view, View view2, AccessibilityEvent accessibilityEvent) {
        Integer recordFlutterId;
        if (!this.accessibilityViewEmbedder.requestSendAccessibilityEvent(view, view2, accessibilityEvent) || (recordFlutterId = this.accessibilityViewEmbedder.getRecordFlutterId(view, accessibilityEvent)) == null) {
            return false;
        }
        int eventType = accessibilityEvent.getEventType();
        if (eventType == 8) {
            this.embeddedInputFocusedNodeId = recordFlutterId;
            this.inputFocusedSemanticsNode = null;
            return true;
        }
        if (eventType == 128) {
            this.hoveredObject = null;
            return true;
        }
        if (eventType == 32768) {
            this.embeddedAccessibilityFocusedNodeId = recordFlutterId;
            this.accessibilityFocusedSemanticsNode = null;
            return true;
        }
        if (eventType != 65536) {
            return true;
        }
        this.embeddedInputFocusedNodeId = null;
        this.embeddedAccessibilityFocusedNodeId = null;
        return true;
    }
}
