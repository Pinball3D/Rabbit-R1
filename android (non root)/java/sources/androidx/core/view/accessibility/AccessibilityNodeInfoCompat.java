package androidx.core.view.accessibility;

import android.R;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import java.lang.ref.WeakReference;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_COLUMN_INT = "android.view.accessibility.action.ARGUMENT_COLUMN_INT";
    public static final String ACTION_ARGUMENT_DIRECTION_INT = "androidx.core.view.accessibility.action.ARGUMENT_DIRECTION_INT";
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_X = "ACTION_ARGUMENT_MOVE_WINDOW_X";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_Y = "ACTION_ARGUMENT_MOVE_WINDOW_Y";
    public static final String ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT = "android.view.accessibility.action.ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT";
    public static final String ACTION_ARGUMENT_PROGRESS_VALUE = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE";
    public static final String ACTION_ARGUMENT_ROW_INT = "android.view.accessibility.action.ARGUMENT_ROW_INT";
    public static final String ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT = "androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    private static final int BOOLEAN_PROPERTY_ACCESSIBILITY_DATA_SENSITIVE = 64;
    private static final int BOOLEAN_PROPERTY_HAS_REQUEST_INITIAL_ACCESSIBILITY_FOCUS = 32;
    private static final int BOOLEAN_PROPERTY_IS_HEADING = 2;
    private static final int BOOLEAN_PROPERTY_IS_SHOWING_HINT = 4;
    private static final int BOOLEAN_PROPERTY_IS_TEXT_ENTRY_KEY = 8;
    private static final String BOOLEAN_PROPERTY_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY";
    private static final int BOOLEAN_PROPERTY_SCREEN_READER_FOCUSABLE = 1;
    private static final int BOOLEAN_PROPERTY_SUPPORTS_GRANULAR_SCROLLING = 67108864;
    private static final int BOOLEAN_PROPERTY_TEXT_SELECTABLE = 8388608;
    private static final String BOUNDS_IN_WINDOW_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOUNDS_IN_WINDOW_KEY";
    private static final String CONTAINER_TITLE_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.CONTAINER_TITLE_KEY";
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH";
    public static final int EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH = 20000;
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX";
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY";
    public static final int FLAG_PREFETCH_ANCESTORS = 1;
    public static final int FLAG_PREFETCH_DESCENDANTS_BREADTH_FIRST = 16;
    public static final int FLAG_PREFETCH_DESCENDANTS_DEPTH_FIRST = 8;
    public static final int FLAG_PREFETCH_DESCENDANTS_HYBRID = 4;
    public static final int FLAG_PREFETCH_SIBLINGS = 2;
    public static final int FLAG_PREFETCH_UNINTERRUPTIBLE = 32;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    private static final String HINT_TEXT_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY";
    public static final int MAX_NUMBER_OF_PREFETCHED_NODES = 50;
    private static final String MIN_DURATION_BETWEEN_CONTENT_CHANGES_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.MIN_DURATION_BETWEEN_CONTENT_CHANGES_KEY";
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    private static final String PANE_TITLE_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY";
    private static final String ROLE_DESCRIPTION_KEY = "AccessibilityNodeInfo.roleDescription";
    private static final String SPANS_ACTION_ID_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY";
    private static final String SPANS_END_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY";
    private static final String SPANS_FLAGS_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY";
    private static final String SPANS_ID_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY";
    private static final String SPANS_START_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY";
    private static final String STATE_DESCRIPTION_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY";
    private static final String TOOLTIP_TEXT_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY";
    private static final String UNIQUE_ID_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY";
    private static int sClickableSpanId;
    private final AccessibilityNodeInfo mInfo;
    public int mParentVirtualDescendantId = -1;
    private int mVirtualDescendantId = -1;

    static String getActionSymbolicName(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.KEYCODE_3D_MODE:
                return "ACTION_SCROLL_IN_DIRECTION";
            default:
                switch (i) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                switch (i) {
                                    case R.id.accessibilityActionImeEnter:
                                        return "ACTION_IME_ENTER";
                                    case R.id.ALT:
                                        return "ACTION_DRAG_START";
                                    case R.id.CTRL:
                                        return "ACTION_DRAG_DROP";
                                    case R.id.FUNCTION:
                                        return "ACTION_DRAG_CANCEL";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
        }
    }

    public void addSpansToExtras(CharSequence charSequence, View view) {
    }

    @Deprecated
    public Object getInfo() {
        return this.mInfo;
    }

    @Deprecated
    public void recycle() {
    }

    public AccessibilityNodeInfo unwrap() {
        return this.mInfo;
    }

    /* loaded from: classes.dex */
    public static class AccessibilityActionCompat {
        public static final AccessibilityActionCompat ACTION_SCROLL_IN_DIRECTION;
        public static final AccessibilityActionCompat ACTION_SHOW_TEXT_SUGGESTIONS;
        private static final String TAG = "A11yActionCompat";
        final Object mAction;
        protected final AccessibilityViewCommand mCommand;
        private final int mId;
        private final Class<? extends AccessibilityViewCommand.CommandArguments> mViewCommandArgumentClass;
        public static final AccessibilityActionCompat ACTION_FOCUS = new AccessibilityActionCompat(1, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS = new AccessibilityActionCompat(2, null);
        public static final AccessibilityActionCompat ACTION_SELECT = new AccessibilityActionCompat(4, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION = new AccessibilityActionCompat(8, null);
        public static final AccessibilityActionCompat ACTION_CLICK = new AccessibilityActionCompat(16, null);
        public static final AccessibilityActionCompat ACTION_LONG_CLICK = new AccessibilityActionCompat(32, null);
        public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(64, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(128, null);
        public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(256, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(512, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat(1024, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat(2048, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD = new AccessibilityActionCompat(4096, null);
        public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat(8192, null);
        public static final AccessibilityActionCompat ACTION_COPY = new AccessibilityActionCompat(16384, null);
        public static final AccessibilityActionCompat ACTION_PASTE = new AccessibilityActionCompat(32768, null);
        public static final AccessibilityActionCompat ACTION_CUT = new AccessibilityActionCompat(65536, null);
        public static final AccessibilityActionCompat ACTION_SET_SELECTION = new AccessibilityActionCompat(131072, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.SetSelectionArguments.class);
        public static final AccessibilityActionCompat ACTION_EXPAND = new AccessibilityActionCompat(262144, null);
        public static final AccessibilityActionCompat ACTION_COLLAPSE = new AccessibilityActionCompat(524288, null);
        public static final AccessibilityActionCompat ACTION_DISMISS = new AccessibilityActionCompat(1048576, null);
        public static final AccessibilityActionCompat ACTION_SET_TEXT = new AccessibilityActionCompat(2097152, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.SetTextArguments.class);
        public static final AccessibilityActionCompat ACTION_SHOW_ON_SCREEN = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null, null, null);
        public static final AccessibilityActionCompat ACTION_SCROLL_TO_POSITION = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, null, null, AccessibilityViewCommand.ScrollToPositionArguments.class);
        public static final AccessibilityActionCompat ACTION_SCROLL_UP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
        public static final AccessibilityActionCompat ACTION_SCROLL_LEFT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null, null, null);
        public static final AccessibilityActionCompat ACTION_SCROLL_DOWN = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
        public static final AccessibilityActionCompat ACTION_SCROLL_RIGHT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null, null, null);
        public static final AccessibilityActionCompat ACTION_PAGE_UP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP, R.id.accessibilityActionPageUp, null, null, null);
        public static final AccessibilityActionCompat ACTION_PAGE_DOWN = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN, R.id.accessibilityActionPageDown, null, null, null);
        public static final AccessibilityActionCompat ACTION_PAGE_LEFT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT, R.id.accessibilityActionPageLeft, null, null, null);
        public static final AccessibilityActionCompat ACTION_PAGE_RIGHT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT, R.id.accessibilityActionPageRight, null, null, null);
        public static final AccessibilityActionCompat ACTION_CONTEXT_CLICK = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null, null, null);
        public static final AccessibilityActionCompat ACTION_SET_PROGRESS = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, R.id.accessibilityActionSetProgress, null, null, AccessibilityViewCommand.SetProgressArguments.class);
        public static final AccessibilityActionCompat ACTION_MOVE_WINDOW = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW, R.id.accessibilityActionMoveWindow, null, null, AccessibilityViewCommand.MoveWindowArguments.class);
        public static final AccessibilityActionCompat ACTION_SHOW_TOOLTIP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP, R.id.accessibilityActionShowTooltip, null, null, null);
        public static final AccessibilityActionCompat ACTION_HIDE_TOOLTIP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP, R.id.accessibilityActionHideTooltip, null, null, null);
        public static final AccessibilityActionCompat ACTION_PRESS_AND_HOLD = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD, R.id.accessibilityActionPressAndHold, null, null, null);
        public static final AccessibilityActionCompat ACTION_IME_ENTER = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER, R.id.accessibilityActionImeEnter, null, null, null);
        public static final AccessibilityActionCompat ACTION_DRAG_START = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START, R.id.ALT, null, null, null);
        public static final AccessibilityActionCompat ACTION_DRAG_DROP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP, R.id.CTRL, null, null, null);
        public static final AccessibilityActionCompat ACTION_DRAG_CANCEL = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL, R.id.FUNCTION, null, null, null);

        static {
            ACTION_SHOW_TEXT_SUGGESTIONS = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.KEYCODE_0, null, null, null);
            ACTION_SCROLL_IN_DIRECTION = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 34 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION : null, R.id.KEYCODE_3D_MODE, null, null, null);
        }

        public AccessibilityActionCompat(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        public AccessibilityActionCompat(int i, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            this(null, i, charSequence, accessibilityViewCommand, null);
        }

        AccessibilityActionCompat(Object obj) {
            this(obj, 0, null, null, null);
        }

        private AccessibilityActionCompat(int i, CharSequence charSequence, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this(null, i, charSequence, null, cls);
        }

        AccessibilityActionCompat(Object obj, int i, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this.mId = i;
            this.mCommand = accessibilityViewCommand;
            if (obj == null) {
                this.mAction = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            } else {
                this.mAction = obj;
            }
            this.mViewCommandArgumentClass = cls;
        }

        public int getId() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.mAction).getId();
        }

        public CharSequence getLabel() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.mAction).getLabel();
        }

        public boolean perform(View view, Bundle bundle) {
            AccessibilityViewCommand.CommandArguments newInstance;
            if (this.mCommand == null) {
                return false;
            }
            Class<? extends AccessibilityViewCommand.CommandArguments> cls = this.mViewCommandArgumentClass;
            AccessibilityViewCommand.CommandArguments commandArguments = null;
            if (cls != null) {
                try {
                    newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e) {
                    e = e;
                }
                try {
                    newInstance.setBundle(bundle);
                    commandArguments = newInstance;
                } catch (Exception e2) {
                    e = e2;
                    commandArguments = newInstance;
                    Class<? extends AccessibilityViewCommand.CommandArguments> cls2 = this.mViewCommandArgumentClass;
                    Log.e(TAG, "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? "null" : cls2.getName()), e);
                    return this.mCommand.perform(view, commandArguments);
                }
            }
            return this.mCommand.perform(view, commandArguments);
        }

        public AccessibilityActionCompat createReplacementAction(CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            return new AccessibilityActionCompat(null, this.mId, charSequence, accessibilityViewCommand, this.mViewCommandArgumentClass);
        }

        public int hashCode() {
            Object obj = this.mAction;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof AccessibilityActionCompat)) {
                return false;
            }
            AccessibilityActionCompat accessibilityActionCompat = (AccessibilityActionCompat) obj;
            Object obj2 = this.mAction;
            return obj2 == null ? accessibilityActionCompat.mAction == null : obj2.equals(accessibilityActionCompat.mAction);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
            String actionSymbolicName = AccessibilityNodeInfoCompat.getActionSymbolicName(this.mId);
            if (actionSymbolicName.equals("ACTION_UNKNOWN") && getLabel() != null) {
                actionSymbolicName = getLabel().toString();
            }
            sb.append(actionSymbolicName);
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionInfoCompat {
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;
        final Object mInfo;

        public static CollectionInfoCompat obtain(int i, int i2, boolean z, int i3) {
            return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3));
        }

        public static CollectionInfoCompat obtain(int i, int i2, boolean z) {
            return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z));
        }

        CollectionInfoCompat(Object obj) {
            this.mInfo = obj;
        }

        public int getColumnCount() {
            return ((AccessibilityNodeInfo.CollectionInfo) this.mInfo).getColumnCount();
        }

        public int getRowCount() {
            return ((AccessibilityNodeInfo.CollectionInfo) this.mInfo).getRowCount();
        }

        public boolean isHierarchical() {
            return ((AccessibilityNodeInfo.CollectionInfo) this.mInfo).isHierarchical();
        }

        public int getSelectionMode() {
            return ((AccessibilityNodeInfo.CollectionInfo) this.mInfo).getSelectionMode();
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionItemInfoCompat {
        final Object mInfo;

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z));
        }

        CollectionItemInfoCompat(Object obj) {
            this.mInfo = obj;
        }

        public int getColumnIndex() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).getColumnIndex();
        }

        public int getColumnSpan() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).getColumnSpan();
        }

        public int getRowIndex() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).getRowIndex();
        }

        public int getRowSpan() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).getRowSpan();
        }

        @Deprecated
        public boolean isHeading() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).isHeading();
        }

        public boolean isSelected() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).isSelected();
        }

        public String getRowTitle() {
            if (Build.VERSION.SDK_INT >= 33) {
                return Api33Impl.getCollectionItemRowTitle(this.mInfo);
            }
            return null;
        }

        public String getColumnTitle() {
            if (Build.VERSION.SDK_INT >= 33) {
                return Api33Impl.getCollectionItemColumnTitle(this.mInfo);
            }
            return null;
        }

        /* loaded from: classes.dex */
        public static final class Builder {
            private int mColumnIndex;
            private int mColumnSpan;
            private String mColumnTitle;
            private boolean mHeading;
            private int mRowIndex;
            private int mRowSpan;
            private String mRowTitle;
            private boolean mSelected;

            public Builder setColumnIndex(int i) {
                this.mColumnIndex = i;
                return this;
            }

            public Builder setColumnSpan(int i) {
                this.mColumnSpan = i;
                return this;
            }

            public Builder setColumnTitle(String str) {
                this.mColumnTitle = str;
                return this;
            }

            public Builder setHeading(boolean z) {
                this.mHeading = z;
                return this;
            }

            public Builder setRowIndex(int i) {
                this.mRowIndex = i;
                return this;
            }

            public Builder setRowSpan(int i) {
                this.mRowSpan = i;
                return this;
            }

            public Builder setRowTitle(String str) {
                this.mRowTitle = str;
                return this;
            }

            public Builder setSelected(boolean z) {
                this.mSelected = z;
                return this;
            }

            public CollectionItemInfoCompat build() {
                if (Build.VERSION.SDK_INT >= 33) {
                    return Api33Impl.buildCollectionItemInfoCompat(this.mHeading, this.mColumnIndex, this.mRowIndex, this.mColumnSpan, this.mRowSpan, this.mSelected, this.mRowTitle, this.mColumnTitle);
                }
                return Api21Impl.createCollectionItemInfo(this.mRowIndex, this.mRowSpan, this.mColumnIndex, this.mColumnSpan, this.mHeading, this.mSelected);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class RangeInfoCompat {
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;
        final Object mInfo;

        public static RangeInfoCompat obtain(int i, float f, float f2, float f3) {
            return new RangeInfoCompat(AccessibilityNodeInfo.RangeInfo.obtain(i, f, f2, f3));
        }

        RangeInfoCompat(Object obj) {
            this.mInfo = obj;
        }

        public RangeInfoCompat(int i, float f, float f2, float f3) {
            this.mInfo = Api30Impl.createRangeInfo(i, f, f2, f3);
        }

        public float getCurrent() {
            return ((AccessibilityNodeInfo.RangeInfo) this.mInfo).getCurrent();
        }

        public float getMax() {
            return ((AccessibilityNodeInfo.RangeInfo) this.mInfo).getMax();
        }

        public float getMin() {
            return ((AccessibilityNodeInfo.RangeInfo) this.mInfo).getMin();
        }

        public int getType() {
            return ((AccessibilityNodeInfo.RangeInfo) this.mInfo).getType();
        }
    }

    /* loaded from: classes.dex */
    public static final class TouchDelegateInfoCompat {
        final AccessibilityNodeInfo.TouchDelegateInfo mInfo;

        public TouchDelegateInfoCompat(Map<Region, View> map) {
            this.mInfo = new AccessibilityNodeInfo.TouchDelegateInfo(map);
        }

        TouchDelegateInfoCompat(AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo) {
            this.mInfo = touchDelegateInfo;
        }

        public int getRegionCount() {
            return this.mInfo.getRegionCount();
        }

        public Region getRegionAt(int i) {
            return this.mInfo.getRegionAt(i);
        }

        public AccessibilityNodeInfoCompat getTargetForRegion(Region region) {
            AccessibilityNodeInfo targetForRegion = this.mInfo.getTargetForRegion(region);
            if (targetForRegion != null) {
                return AccessibilityNodeInfoCompat.wrap(targetForRegion);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessibilityNodeInfoCompat wrapNonNullInstance(Object obj) {
        if (obj != null) {
            return new AccessibilityNodeInfoCompat(obj);
        }
        return null;
    }

    @Deprecated
    public AccessibilityNodeInfoCompat(Object obj) {
        this.mInfo = (AccessibilityNodeInfo) obj;
    }

    private AccessibilityNodeInfoCompat(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.mInfo = accessibilityNodeInfo;
    }

    public static AccessibilityNodeInfoCompat wrap(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
    }

    public static AccessibilityNodeInfoCompat obtain(View view) {
        return wrap(AccessibilityNodeInfo.obtain(view));
    }

    public static AccessibilityNodeInfoCompat obtain(View view, int i) {
        return wrapNonNullInstance(AccessibilityNodeInfo.obtain(view, i));
    }

    public static AccessibilityNodeInfoCompat obtain() {
        return wrap(AccessibilityNodeInfo.obtain());
    }

    public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return wrap(AccessibilityNodeInfo.obtain(accessibilityNodeInfoCompat.mInfo));
    }

    public void setSource(View view) {
        this.mVirtualDescendantId = -1;
        this.mInfo.setSource(view);
    }

    public void setSource(View view, int i) {
        this.mVirtualDescendantId = i;
        this.mInfo.setSource(view, i);
    }

    public AccessibilityNodeInfoCompat findFocus(int i) {
        return wrapNonNullInstance(this.mInfo.findFocus(i));
    }

    public AccessibilityNodeInfoCompat focusSearch(int i) {
        return wrapNonNullInstance(this.mInfo.focusSearch(i));
    }

    public int getWindowId() {
        return this.mInfo.getWindowId();
    }

    public int getChildCount() {
        return this.mInfo.getChildCount();
    }

    public AccessibilityNodeInfoCompat getChild(int i) {
        return wrapNonNullInstance(this.mInfo.getChild(i));
    }

    public AccessibilityNodeInfoCompat getChild(int i, int i2) {
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.getChild(this.mInfo, i, i2);
        }
        return getChild(i);
    }

    public void addChild(View view) {
        this.mInfo.addChild(view);
    }

    public void addChild(View view, int i) {
        this.mInfo.addChild(view, i);
    }

    public boolean removeChild(View view) {
        return this.mInfo.removeChild(view);
    }

    public boolean removeChild(View view, int i) {
        return this.mInfo.removeChild(view, i);
    }

    @Deprecated
    public int getActions() {
        return this.mInfo.getActions();
    }

    public void addAction(int i) {
        this.mInfo.addAction(i);
    }

    private List<Integer> extrasIntList(String str) {
        ArrayList<Integer> integerArrayList = Api19Impl.getExtras(this.mInfo).getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        Api19Impl.getExtras(this.mInfo).putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    public void addAction(AccessibilityActionCompat accessibilityActionCompat) {
        this.mInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.mAction);
    }

    public boolean removeAction(AccessibilityActionCompat accessibilityActionCompat) {
        return this.mInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.mAction);
    }

    public boolean performAction(int i) {
        return this.mInfo.performAction(i);
    }

    public boolean performAction(int i, Bundle bundle) {
        return this.mInfo.performAction(i, bundle);
    }

    public void setMovementGranularities(int i) {
        this.mInfo.setMovementGranularities(i);
    }

    public int getMovementGranularities() {
        return this.mInfo.getMovementGranularities();
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str) {
        ArrayList arrayList = new ArrayList();
        List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText = this.mInfo.findAccessibilityNodeInfosByText(str);
        int size = findAccessibilityNodeInfosByText.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(wrap(findAccessibilityNodeInfosByText.get(i)));
        }
        return arrayList;
    }

    public AccessibilityNodeInfoCompat getParent() {
        return wrapNonNullInstance(this.mInfo.getParent());
    }

    public AccessibilityNodeInfoCompat getParent(int i) {
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.getParent(this.mInfo, i);
        }
        return getParent();
    }

    public void setParent(View view) {
        this.mParentVirtualDescendantId = -1;
        this.mInfo.setParent(view);
    }

    public void setParent(View view, int i) {
        this.mParentVirtualDescendantId = i;
        this.mInfo.setParent(view, i);
    }

    @Deprecated
    public void getBoundsInParent(Rect rect) {
        this.mInfo.getBoundsInParent(rect);
    }

    @Deprecated
    public void setBoundsInParent(Rect rect) {
        this.mInfo.setBoundsInParent(rect);
    }

    public void getBoundsInScreen(Rect rect) {
        this.mInfo.getBoundsInScreen(rect);
    }

    public void setBoundsInScreen(Rect rect) {
        this.mInfo.setBoundsInScreen(rect);
    }

    public void getBoundsInWindow(Rect rect) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.getBoundsInWindow(this.mInfo, rect);
            return;
        }
        Rect rect2 = (Rect) Api19Impl.getExtras(this.mInfo).getParcelable(BOUNDS_IN_WINDOW_KEY);
        if (rect2 != null) {
            rect.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
    }

    public void setBoundsInWindow(Rect rect) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.setBoundsInWindow(this.mInfo, rect);
        } else {
            Api19Impl.getExtras(this.mInfo).putParcelable(BOUNDS_IN_WINDOW_KEY, rect);
        }
    }

    public boolean isCheckable() {
        return this.mInfo.isCheckable();
    }

    public void setCheckable(boolean z) {
        this.mInfo.setCheckable(z);
    }

    public boolean isChecked() {
        return this.mInfo.isChecked();
    }

    public void setChecked(boolean z) {
        this.mInfo.setChecked(z);
    }

    public boolean isFocusable() {
        return this.mInfo.isFocusable();
    }

    public void setFocusable(boolean z) {
        this.mInfo.setFocusable(z);
    }

    public boolean isFocused() {
        return this.mInfo.isFocused();
    }

    public void setFocused(boolean z) {
        this.mInfo.setFocused(z);
    }

    public boolean isVisibleToUser() {
        return this.mInfo.isVisibleToUser();
    }

    public void setVisibleToUser(boolean z) {
        this.mInfo.setVisibleToUser(z);
    }

    public boolean isAccessibilityFocused() {
        return this.mInfo.isAccessibilityFocused();
    }

    public void setAccessibilityFocused(boolean z) {
        this.mInfo.setAccessibilityFocused(z);
    }

    public boolean isSelected() {
        return this.mInfo.isSelected();
    }

    public void setSelected(boolean z) {
        this.mInfo.setSelected(z);
    }

    public boolean isClickable() {
        return this.mInfo.isClickable();
    }

    public void setClickable(boolean z) {
        this.mInfo.setClickable(z);
    }

    public boolean isLongClickable() {
        return this.mInfo.isLongClickable();
    }

    public void setLongClickable(boolean z) {
        this.mInfo.setLongClickable(z);
    }

    public boolean isEnabled() {
        return this.mInfo.isEnabled();
    }

    public void setEnabled(boolean z) {
        this.mInfo.setEnabled(z);
    }

    public boolean isPassword() {
        return this.mInfo.isPassword();
    }

    public void setPassword(boolean z) {
        this.mInfo.setPassword(z);
    }

    public boolean isScrollable() {
        return this.mInfo.isScrollable();
    }

    public void setScrollable(boolean z) {
        this.mInfo.setScrollable(z);
    }

    public boolean isGranularScrollingSupported() {
        return getBooleanProperty(67108864);
    }

    public void setGranularScrollingSupported(boolean z) {
        setBooleanProperty(67108864, z);
    }

    public boolean isTextSelectable() {
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.isTextSelectable(this.mInfo);
        }
        return getBooleanProperty(8388608);
    }

    public void setTextSelectable(boolean z) {
        if (Build.VERSION.SDK_INT >= 33) {
            Api33Impl.setTextSelectable(this.mInfo, z);
        } else {
            setBooleanProperty(8388608, z);
        }
    }

    public long getMinDurationBetweenContentChangesMillis() {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.getMinDurationBetweenContentChangeMillis(this.mInfo);
        }
        return Api19Impl.getExtras(this.mInfo).getLong(MIN_DURATION_BETWEEN_CONTENT_CHANGES_KEY);
    }

    public void setMinDurationBetweenContentChangesMillis(long j) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.setMinDurationBetweenContentChangeMillis(this.mInfo, j);
        } else {
            Api19Impl.getExtras(this.mInfo).putLong(MIN_DURATION_BETWEEN_CONTENT_CHANGES_KEY, j);
        }
    }

    public boolean isImportantForAccessibility() {
        return this.mInfo.isImportantForAccessibility();
    }

    public void setImportantForAccessibility(boolean z) {
        this.mInfo.setImportantForAccessibility(z);
    }

    public boolean isAccessibilityDataSensitive() {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.isAccessibilityDataSensitive(this.mInfo);
        }
        return getBooleanProperty(64);
    }

    public void setAccessibilityDataSensitive(boolean z) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.setAccessibilityDataSensitive(this.mInfo, z);
        } else {
            setBooleanProperty(64, z);
        }
    }

    public CharSequence getPackageName() {
        return this.mInfo.getPackageName();
    }

    public void setPackageName(CharSequence charSequence) {
        this.mInfo.setPackageName(charSequence);
    }

    public CharSequence getClassName() {
        return this.mInfo.getClassName();
    }

    public void setClassName(CharSequence charSequence) {
        this.mInfo.setClassName(charSequence);
    }

    public CharSequence getText() {
        if (hasSpans()) {
            List<Integer> extrasIntList = extrasIntList(SPANS_START_KEY);
            List<Integer> extrasIntList2 = extrasIntList(SPANS_END_KEY);
            List<Integer> extrasIntList3 = extrasIntList(SPANS_FLAGS_KEY);
            List<Integer> extrasIntList4 = extrasIntList(SPANS_ID_KEY);
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.mInfo.getText(), 0, this.mInfo.getText().length()));
            for (int i = 0; i < extrasIntList.size(); i++) {
                spannableString.setSpan(new AccessibilityClickableSpanCompat(extrasIntList4.get(i).intValue(), this, getExtras().getInt(SPANS_ACTION_ID_KEY)), extrasIntList.get(i).intValue(), extrasIntList2.get(i).intValue(), extrasIntList3.get(i).intValue());
            }
            return spannableString;
        }
        return this.mInfo.getText();
    }

    public void setText(CharSequence charSequence) {
        this.mInfo.setText(charSequence);
    }

    private SparseArray<WeakReference<ClickableSpan>> getOrCreateSpansFromViewTags(View view) {
        SparseArray<WeakReference<ClickableSpan>> spansFromViewTags = getSpansFromViewTags(view);
        if (spansFromViewTags != null) {
            return spansFromViewTags;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(androidx.core.R.id.tag_accessibility_clickable_spans, sparseArray);
        return sparseArray;
    }

    private SparseArray<WeakReference<ClickableSpan>> getSpansFromViewTags(View view) {
        return (SparseArray) view.getTag(androidx.core.R.id.tag_accessibility_clickable_spans);
    }

    public static ClickableSpan[] getClickableSpans(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    private int idForClickableSpan(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = sClickableSpanId;
        sClickableSpanId = i2 + 1;
        return i2;
    }

    private boolean hasSpans() {
        return !extrasIntList(SPANS_START_KEY).isEmpty();
    }

    private void clearExtrasSpans() {
        Api19Impl.getExtras(this.mInfo).remove(SPANS_START_KEY);
        Api19Impl.getExtras(this.mInfo).remove(SPANS_END_KEY);
        Api19Impl.getExtras(this.mInfo).remove(SPANS_FLAGS_KEY);
        Api19Impl.getExtras(this.mInfo).remove(SPANS_ID_KEY);
    }

    private void addSpanLocationToExtras(ClickableSpan clickableSpan, Spanned spanned, int i) {
        extrasIntList(SPANS_START_KEY).add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        extrasIntList(SPANS_END_KEY).add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        extrasIntList(SPANS_FLAGS_KEY).add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        extrasIntList(SPANS_ID_KEY).add(Integer.valueOf(i));
    }

    private void removeCollectedSpans(View view) {
        SparseArray<WeakReference<ClickableSpan>> spansFromViewTags = getSpansFromViewTags(view);
        if (spansFromViewTags != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < spansFromViewTags.size(); i++) {
                if (spansFromViewTags.valueAt(i).get() == null) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                spansFromViewTags.remove(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    public CharSequence getContentDescription() {
        return this.mInfo.getContentDescription();
    }

    public CharSequence getStateDescription() {
        return Api30Impl.getStateDescription(this.mInfo);
    }

    public void setContentDescription(CharSequence charSequence) {
        this.mInfo.setContentDescription(charSequence);
    }

    public void setStateDescription(CharSequence charSequence) {
        Api30Impl.setStateDescription(this.mInfo, charSequence);
    }

    public String getUniqueId() {
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.getUniqueId(this.mInfo);
        }
        return Api19Impl.getExtras(this.mInfo).getString(UNIQUE_ID_KEY);
    }

    public void setUniqueId(String str) {
        if (Build.VERSION.SDK_INT >= 33) {
            Api33Impl.setUniqueId(this.mInfo, str);
        } else {
            Api19Impl.getExtras(this.mInfo).putString(UNIQUE_ID_KEY, str);
        }
    }

    public void setContainerTitle(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.setContainerTitle(this.mInfo, charSequence);
        } else {
            Api19Impl.getExtras(this.mInfo).putCharSequence(CONTAINER_TITLE_KEY, charSequence);
        }
    }

    public CharSequence getContainerTitle() {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.getContainerTitle(this.mInfo);
        }
        return Api19Impl.getExtras(this.mInfo).getCharSequence(CONTAINER_TITLE_KEY);
    }

    public void setViewIdResourceName(String str) {
        this.mInfo.setViewIdResourceName(str);
    }

    public String getViewIdResourceName() {
        return this.mInfo.getViewIdResourceName();
    }

    public int getLiveRegion() {
        return this.mInfo.getLiveRegion();
    }

    public void setLiveRegion(int i) {
        this.mInfo.setLiveRegion(i);
    }

    public int getDrawingOrder() {
        return this.mInfo.getDrawingOrder();
    }

    public void setDrawingOrder(int i) {
        this.mInfo.setDrawingOrder(i);
    }

    public CollectionInfoCompat getCollectionInfo() {
        AccessibilityNodeInfo.CollectionInfo collectionInfo = this.mInfo.getCollectionInfo();
        if (collectionInfo != null) {
            return new CollectionInfoCompat(collectionInfo);
        }
        return null;
    }

    public void setCollectionInfo(Object obj) {
        this.mInfo.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((CollectionInfoCompat) obj).mInfo);
    }

    public void setCollectionItemInfo(Object obj) {
        this.mInfo.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((CollectionItemInfoCompat) obj).mInfo);
    }

    public CollectionItemInfoCompat getCollectionItemInfo() {
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo = this.mInfo.getCollectionItemInfo();
        if (collectionItemInfo != null) {
            return new CollectionItemInfoCompat(collectionItemInfo);
        }
        return null;
    }

    public RangeInfoCompat getRangeInfo() {
        AccessibilityNodeInfo.RangeInfo rangeInfo = this.mInfo.getRangeInfo();
        if (rangeInfo != null) {
            return new RangeInfoCompat(rangeInfo);
        }
        return null;
    }

    public void setRangeInfo(RangeInfoCompat rangeInfoCompat) {
        this.mInfo.setRangeInfo((AccessibilityNodeInfo.RangeInfo) rangeInfoCompat.mInfo);
    }

    public AccessibilityNodeInfo.ExtraRenderingInfo getExtraRenderingInfo() {
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.getExtraRenderingInfo(this.mInfo);
        }
        return null;
    }

    public List<AccessibilityActionCompat> getActionList() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.mInfo.getActionList();
        if (actionList != null) {
            ArrayList arrayList = new ArrayList();
            int size = actionList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(new AccessibilityActionCompat(actionList.get(i)));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public void setContentInvalid(boolean z) {
        this.mInfo.setContentInvalid(z);
    }

    public boolean isContentInvalid() {
        return this.mInfo.isContentInvalid();
    }

    public boolean isContextClickable() {
        return this.mInfo.isContextClickable();
    }

    public void setContextClickable(boolean z) {
        this.mInfo.setContextClickable(z);
    }

    public CharSequence getHintText() {
        return this.mInfo.getHintText();
    }

    public void setHintText(CharSequence charSequence) {
        this.mInfo.setHintText(charSequence);
    }

    public void setError(CharSequence charSequence) {
        this.mInfo.setError(charSequence);
    }

    public CharSequence getError() {
        return this.mInfo.getError();
    }

    public void setLabelFor(View view) {
        this.mInfo.setLabelFor(view);
    }

    public void setLabelFor(View view, int i) {
        this.mInfo.setLabelFor(view, i);
    }

    public AccessibilityNodeInfoCompat getLabelFor() {
        return wrapNonNullInstance(this.mInfo.getLabelFor());
    }

    public void setLabeledBy(View view) {
        this.mInfo.setLabeledBy(view);
    }

    public void setLabeledBy(View view, int i) {
        this.mInfo.setLabeledBy(view, i);
    }

    public AccessibilityNodeInfoCompat getLabeledBy() {
        return wrapNonNullInstance(this.mInfo.getLabeledBy());
    }

    public boolean canOpenPopup() {
        return this.mInfo.canOpenPopup();
    }

    public void setCanOpenPopup(boolean z) {
        this.mInfo.setCanOpenPopup(z);
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String str) {
        List<AccessibilityNodeInfo> findAccessibilityNodeInfosByViewId = this.mInfo.findAccessibilityNodeInfosByViewId(str);
        ArrayList arrayList = new ArrayList();
        Iterator<AccessibilityNodeInfo> it = findAccessibilityNodeInfosByViewId.iterator();
        while (it.hasNext()) {
            arrayList.add(wrap(it.next()));
        }
        return arrayList;
    }

    public Bundle getExtras() {
        return Api19Impl.getExtras(this.mInfo);
    }

    public int getInputType() {
        return this.mInfo.getInputType();
    }

    public void setInputType(int i) {
        this.mInfo.setInputType(i);
    }

    public List<String> getAvailableExtraData() {
        return this.mInfo.getAvailableExtraData();
    }

    public void setAvailableExtraData(List<String> list) {
        this.mInfo.setAvailableExtraData(list);
    }

    public void setMaxTextLength(int i) {
        this.mInfo.setMaxTextLength(i);
    }

    public int getMaxTextLength() {
        return this.mInfo.getMaxTextLength();
    }

    public void setTextSelection(int i, int i2) {
        this.mInfo.setTextSelection(i, i2);
    }

    public int getTextSelectionStart() {
        return this.mInfo.getTextSelectionStart();
    }

    public int getTextSelectionEnd() {
        return this.mInfo.getTextSelectionEnd();
    }

    public AccessibilityNodeInfoCompat getTraversalBefore() {
        return wrapNonNullInstance(this.mInfo.getTraversalBefore());
    }

    public void setTraversalBefore(View view) {
        this.mInfo.setTraversalBefore(view);
    }

    public void setTraversalBefore(View view, int i) {
        this.mInfo.setTraversalBefore(view, i);
    }

    public AccessibilityNodeInfoCompat getTraversalAfter() {
        return wrapNonNullInstance(this.mInfo.getTraversalAfter());
    }

    public void setTraversalAfter(View view) {
        this.mInfo.setTraversalAfter(view);
    }

    public void setTraversalAfter(View view, int i) {
        this.mInfo.setTraversalAfter(view, i);
    }

    public AccessibilityWindowInfoCompat getWindow() {
        return AccessibilityWindowInfoCompat.wrapNonNullInstance(this.mInfo.getWindow());
    }

    public boolean isDismissable() {
        return this.mInfo.isDismissable();
    }

    public void setDismissable(boolean z) {
        this.mInfo.setDismissable(z);
    }

    public boolean isEditable() {
        return this.mInfo.isEditable();
    }

    public void setEditable(boolean z) {
        this.mInfo.setEditable(z);
    }

    public boolean isMultiLine() {
        return this.mInfo.isMultiLine();
    }

    public void setMultiLine(boolean z) {
        this.mInfo.setMultiLine(z);
    }

    public CharSequence getTooltipText() {
        return this.mInfo.getTooltipText();
    }

    public void setTooltipText(CharSequence charSequence) {
        this.mInfo.setTooltipText(charSequence);
    }

    public void setPaneTitle(CharSequence charSequence) {
        this.mInfo.setPaneTitle(charSequence);
    }

    public CharSequence getPaneTitle() {
        return this.mInfo.getPaneTitle();
    }

    public boolean isScreenReaderFocusable() {
        return this.mInfo.isScreenReaderFocusable();
    }

    public void setScreenReaderFocusable(boolean z) {
        this.mInfo.setScreenReaderFocusable(z);
    }

    public boolean isShowingHintText() {
        return this.mInfo.isShowingHintText();
    }

    public void setShowingHintText(boolean z) {
        this.mInfo.setShowingHintText(z);
    }

    public boolean isHeading() {
        return this.mInfo.isHeading();
    }

    public void setHeading(boolean z) {
        this.mInfo.setHeading(z);
    }

    public boolean isTextEntryKey() {
        return this.mInfo.isTextEntryKey();
    }

    public void setTextEntryKey(boolean z) {
        this.mInfo.setTextEntryKey(z);
    }

    public boolean hasRequestInitialAccessibilityFocus() {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.hasRequestInitialAccessibilityFocus(this.mInfo);
        }
        return getBooleanProperty(32);
    }

    public void setRequestInitialAccessibilityFocus(boolean z) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.setRequestInitialAccessibilityFocus(this.mInfo, z);
        } else {
            setBooleanProperty(32, z);
        }
    }

    public boolean refresh() {
        return this.mInfo.refresh();
    }

    public CharSequence getRoleDescription() {
        return Api19Impl.getExtras(this.mInfo).getCharSequence(ROLE_DESCRIPTION_KEY);
    }

    public void setRoleDescription(CharSequence charSequence) {
        Api19Impl.getExtras(this.mInfo).putCharSequence(ROLE_DESCRIPTION_KEY, charSequence);
    }

    public TouchDelegateInfoCompat getTouchDelegateInfo() {
        AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo = this.mInfo.getTouchDelegateInfo();
        if (touchDelegateInfo != null) {
            return new TouchDelegateInfoCompat(touchDelegateInfo);
        }
        return null;
    }

    public void setTouchDelegateInfo(TouchDelegateInfoCompat touchDelegateInfoCompat) {
        this.mInfo.setTouchDelegateInfo(touchDelegateInfoCompat.mInfo);
    }

    public void setQueryFromAppProcessEnabled(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.setQueryFromAppProcessEnabled(this.mInfo, view, z);
        }
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.mInfo;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityNodeInfoCompat)) {
            return false;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.mInfo;
        if (accessibilityNodeInfo == null) {
            if (accessibilityNodeInfoCompat.mInfo != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(accessibilityNodeInfoCompat.mInfo)) {
            return false;
        }
        return this.mVirtualDescendantId == accessibilityNodeInfoCompat.mVirtualDescendantId && this.mParentVirtualDescendantId == accessibilityNodeInfoCompat.mParentVirtualDescendantId;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        getBoundsInWindow(rect);
        sb.append("; boundsInWindow: " + rect);
        sb.append("; packageName: ").append(getPackageName());
        sb.append("; className: ").append(getClassName());
        sb.append("; text: ").append(getText());
        sb.append("; error: ").append(getError());
        sb.append("; maxTextLength: ").append(getMaxTextLength());
        sb.append("; stateDescription: ").append(getStateDescription());
        sb.append("; contentDescription: ").append(getContentDescription());
        sb.append("; tooltipText: ").append(getTooltipText());
        sb.append("; viewIdResName: ").append(getViewIdResourceName());
        sb.append("; uniqueId: ").append(getUniqueId());
        sb.append("; checkable: ").append(isCheckable());
        sb.append("; checked: ").append(isChecked());
        sb.append("; focusable: ").append(isFocusable());
        sb.append("; focused: ").append(isFocused());
        sb.append("; selected: ").append(isSelected());
        sb.append("; clickable: ").append(isClickable());
        sb.append("; longClickable: ").append(isLongClickable());
        sb.append("; contextClickable: ").append(isContextClickable());
        sb.append("; enabled: ").append(isEnabled());
        sb.append("; password: ").append(isPassword());
        sb.append("; scrollable: " + isScrollable());
        sb.append("; containerTitle: ").append(getContainerTitle());
        sb.append("; granularScrollingSupported: ").append(isGranularScrollingSupported());
        sb.append("; importantForAccessibility: ").append(isImportantForAccessibility());
        sb.append("; visible: ").append(isVisibleToUser());
        sb.append("; isTextSelectable: ").append(isTextSelectable());
        sb.append("; accessibilityDataSensitive: ").append(isAccessibilityDataSensitive());
        sb.append("; [");
        List<AccessibilityActionCompat> actionList = getActionList();
        for (int i = 0; i < actionList.size(); i++) {
            AccessibilityActionCompat accessibilityActionCompat = actionList.get(i);
            String actionSymbolicName = getActionSymbolicName(accessibilityActionCompat.getId());
            if (actionSymbolicName.equals("ACTION_UNKNOWN") && accessibilityActionCompat.getLabel() != null) {
                actionSymbolicName = accessibilityActionCompat.getLabel().toString();
            }
            sb.append(actionSymbolicName);
            if (i != actionList.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    private void setBooleanProperty(int i, boolean z) {
        Bundle extras = getExtras();
        if (extras != null) {
            int i2 = extras.getInt(BOOLEAN_PROPERTY_KEY, 0) & (~i);
            if (!z) {
                i = 0;
            }
            extras.putInt(BOOLEAN_PROPERTY_KEY, i | i2);
        }
    }

    private boolean getBooleanProperty(int i) {
        Bundle extras = getExtras();
        return extras != null && (extras.getInt(BOOLEAN_PROPERTY_KEY, 0) & i) == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Api19Impl {
        private Api19Impl() {
        }

        public static Bundle getExtras(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getExtras();
        }

        public static Object createRangeInfo(int i, float f, float f2, float f3) {
            return AccessibilityNodeInfo.RangeInfo.obtain(i, f, f2, f3);
        }

        public static CollectionItemInfoCompat createCollectionItemInfo(int i, int i2, int i3, int i4, boolean z) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z));
        }
    }

    /* loaded from: classes.dex */
    private static class Api21Impl {
        private Api21Impl() {
        }

        public static CollectionItemInfoCompat createCollectionItemInfo(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        public static void setStateDescription(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
            accessibilityNodeInfo.setStateDescription(charSequence);
        }

        public static CharSequence getStateDescription(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getStateDescription();
        }

        public static Object createRangeInfo(int i, float f, float f2, float f3) {
            return new AccessibilityNodeInfo.RangeInfo(i, f, f2, f3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Api33Impl {
        private Api33Impl() {
        }

        public static AccessibilityNodeInfo.ExtraRenderingInfo getExtraRenderingInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getExtraRenderingInfo();
        }

        public static boolean isTextSelectable(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isTextSelectable();
        }

        public static void setTextSelectable(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setTextSelectable(z);
        }

        public static CollectionItemInfoCompat buildCollectionItemInfoCompat(boolean z, int i, int i2, int i3, int i4, boolean z2, String str, String str2) {
            return new CollectionItemInfoCompat(new AccessibilityNodeInfo.CollectionItemInfo.Builder().setHeading(z).setColumnIndex(i).setRowIndex(i2).setColumnSpan(i3).setRowSpan(i4).setSelected(z2).setRowTitle(str).setColumnTitle(str2).build());
        }

        public static AccessibilityNodeInfoCompat getChild(AccessibilityNodeInfo accessibilityNodeInfo, int i, int i2) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(accessibilityNodeInfo.getChild(i, i2));
        }

        public static AccessibilityNodeInfoCompat getParent(AccessibilityNodeInfo accessibilityNodeInfo, int i) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(accessibilityNodeInfo.getParent(i));
        }

        public static String getUniqueId(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getUniqueId();
        }

        public static void setUniqueId(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
            accessibilityNodeInfo.setUniqueId(str);
        }

        public static String getCollectionItemRowTitle(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getRowTitle();
        }

        public static String getCollectionItemColumnTitle(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getColumnTitle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Api34Impl {
        private Api34Impl() {
        }

        public static boolean isAccessibilityDataSensitive(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isAccessibilityDataSensitive();
        }

        public static void setAccessibilityDataSensitive(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setAccessibilityDataSensitive(z);
        }

        public static CharSequence getContainerTitle(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getContainerTitle();
        }

        public static void setContainerTitle(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
            accessibilityNodeInfo.setContainerTitle(charSequence);
        }

        public static void getBoundsInWindow(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
            accessibilityNodeInfo.getBoundsInWindow(rect);
        }

        public static void setBoundsInWindow(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
            accessibilityNodeInfo.setBoundsInWindow(rect);
        }

        public static boolean hasRequestInitialAccessibilityFocus(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.hasRequestInitialAccessibilityFocus();
        }

        public static void setRequestInitialAccessibilityFocus(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setRequestInitialAccessibilityFocus(z);
        }

        public static long getMinDurationBetweenContentChangeMillis(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getMinDurationBetweenContentChanges().toMillis();
        }

        public static void setMinDurationBetweenContentChangeMillis(AccessibilityNodeInfo accessibilityNodeInfo, long j) {
            accessibilityNodeInfo.setMinDurationBetweenContentChanges(Duration.ofMillis(j));
        }

        public static void setQueryFromAppProcessEnabled(AccessibilityNodeInfo accessibilityNodeInfo, View view, boolean z) {
            accessibilityNodeInfo.setQueryFromAppProcessEnabled(view, z);
        }
    }
}
