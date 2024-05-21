package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class CascadingMenuPopup extends MenuPopup implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {
    static final int HORIZ_POSITION_LEFT = 0;
    static final int HORIZ_POSITION_RIGHT = 1;
    private static final int ITEM_LAYOUT = R.layout.abc_cascading_menu_item_layout;
    static final int SUBMENU_TIMEOUT_MS = 200;
    private View mAnchorView;
    private final Context mContext;
    private boolean mHasXOffset;
    private boolean mHasYOffset;
    private final int mMenuMaxWidth;
    private PopupWindow.OnDismissListener mOnDismissListener;
    private final boolean mOverflowOnly;
    private final int mPopupStyleAttr;
    private final int mPopupStyleRes;
    private MenuPresenter.Callback mPresenterCallback;
    boolean mShouldCloseImmediately;
    private boolean mShowTitle;
    View mShownAnchorView;
    final Handler mSubMenuHoverHandler;
    ViewTreeObserver mTreeObserver;
    private int mXOffset;
    private int mYOffset;
    private final List<MenuBuilder> mPendingMenus = new ArrayList();
    final List<CascadingMenuInfo> mShowingMenus = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!CascadingMenuPopup.this.isShowing() || CascadingMenuPopup.this.mShowingMenus.size() <= 0 || CascadingMenuPopup.this.mShowingMenus.get(0).window.isModal()) {
                return;
            }
            View view = CascadingMenuPopup.this.mShownAnchorView;
            if (view == null || !view.isShown()) {
                CascadingMenuPopup.this.dismiss();
                return;
            }
            Iterator<CascadingMenuInfo> it = CascadingMenuPopup.this.mShowingMenus.iterator();
            while (it.hasNext()) {
                it.next().window.show();
            }
        }
    };
    private final View.OnAttachStateChangeListener mAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (CascadingMenuPopup.this.mTreeObserver != null) {
                if (!CascadingMenuPopup.this.mTreeObserver.isAlive()) {
                    CascadingMenuPopup.this.mTreeObserver = view.getViewTreeObserver();
                }
                CascadingMenuPopup.this.mTreeObserver.removeGlobalOnLayoutListener(CascadingMenuPopup.this.mGlobalLayoutListener);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private final MenuItemHoverListener mMenuItemHoverListener = new MenuItemHoverListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3
        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverExit(MenuBuilder menuBuilder, MenuItem menuItem) {
            CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages(menuBuilder);
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverEnter(final MenuBuilder menuBuilder, final MenuItem menuItem) {
            CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages(null);
            int size = CascadingMenuPopup.this.mShowingMenus.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (menuBuilder == CascadingMenuPopup.this.mShowingMenus.get(i).menu) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            final CascadingMenuInfo cascadingMenuInfo = i2 < CascadingMenuPopup.this.mShowingMenus.size() ? CascadingMenuPopup.this.mShowingMenus.get(i2) : null;
            CascadingMenuPopup.this.mSubMenuHoverHandler.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (cascadingMenuInfo != null) {
                        CascadingMenuPopup.this.mShouldCloseImmediately = true;
                        cascadingMenuInfo.menu.close(false);
                        CascadingMenuPopup.this.mShouldCloseImmediately = false;
                    }
                    if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                        menuBuilder.performItemAction(menuItem, 4);
                    }
                }
            }, menuBuilder, SystemClock.uptimeMillis() + 200);
        }
    };
    private int mRawDropDownGravity = 0;
    private int mDropDownGravity = 0;
    private boolean mForceShowIcon = false;
    private int mLastPosition = getInitialMenuPosition();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface HorizPosition {
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    protected boolean closeMenuOnSubMenuOpened() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.mPresenterCallback = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setForceShowIcon(boolean z) {
        this.mForceShowIcon = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setHorizontalOffset(int i) {
        this.mHasXOffset = true;
        this.mXOffset = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setShowTitle(boolean z) {
        this.mShowTitle = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setVerticalOffset(int i) {
        this.mHasYOffset = true;
        this.mYOffset = i;
    }

    public CascadingMenuPopup(Context context, View view, int i, int i2, boolean z) {
        this.mContext = context;
        this.mAnchorView = view;
        this.mPopupStyleAttr = i;
        this.mPopupStyleRes = i2;
        this.mOverflowOnly = z;
        Resources resources = context.getResources();
        this.mMenuMaxWidth = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.mSubMenuHoverHandler = new Handler();
    }

    private MenuPopupWindow createPopupWindow() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.mContext, null, this.mPopupStyleAttr, this.mPopupStyleRes);
        menuPopupWindow.setHoverListener(this.mMenuItemHoverListener);
        menuPopupWindow.setOnItemClickListener(this);
        menuPopupWindow.setOnDismissListener(this);
        menuPopupWindow.setAnchorView(this.mAnchorView);
        menuPopupWindow.setDropDownGravity(this.mDropDownGravity);
        menuPopupWindow.setModal(true);
        menuPopupWindow.setInputMethodMode(2);
        return menuPopupWindow;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        if (isShowing()) {
            return;
        }
        Iterator<MenuBuilder> it = this.mPendingMenus.iterator();
        while (it.hasNext()) {
            showMenu(it.next());
        }
        this.mPendingMenus.clear();
        View view = this.mAnchorView;
        this.mShownAnchorView = view;
        if (view != null) {
            boolean z = this.mTreeObserver == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.mTreeObserver = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener);
            }
            this.mShownAnchorView.addOnAttachStateChangeListener(this.mAttachStateChangeListener);
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        int size = this.mShowingMenus.size();
        if (size > 0) {
            CascadingMenuInfo[] cascadingMenuInfoArr = (CascadingMenuInfo[]) this.mShowingMenus.toArray(new CascadingMenuInfo[size]);
            for (int i = size - 1; i >= 0; i--) {
                CascadingMenuInfo cascadingMenuInfo = cascadingMenuInfoArr[i];
                if (cascadingMenuInfo.window.isShowing()) {
                    cascadingMenuInfo.window.dismiss();
                }
            }
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    private int getInitialMenuPosition() {
        return ViewCompat.getLayoutDirection(this.mAnchorView) == 1 ? 0 : 1;
    }

    private int getNextMenuPosition(int i) {
        List<CascadingMenuInfo> list = this.mShowingMenus;
        ListView listView = list.get(list.size() - 1).getListView();
        int[] iArr = new int[2];
        listView.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.mShownAnchorView.getWindowVisibleDisplayFrame(rect);
        return this.mLastPosition == 1 ? (iArr[0] + listView.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void addMenu(MenuBuilder menuBuilder) {
        menuBuilder.addMenuPresenter(this, this.mContext);
        if (isShowing()) {
            showMenu(menuBuilder);
        } else {
            this.mPendingMenus.add(menuBuilder);
        }
    }

    private void showMenu(MenuBuilder menuBuilder) {
        CascadingMenuInfo cascadingMenuInfo;
        View view;
        LayoutInflater from = LayoutInflater.from(this.mContext);
        MenuAdapter menuAdapter = new MenuAdapter(menuBuilder, from, this.mOverflowOnly, ITEM_LAYOUT);
        if (!isShowing() && this.mForceShowIcon) {
            menuAdapter.setForceShowIcon(true);
        } else if (isShowing()) {
            menuAdapter.setForceShowIcon(MenuPopup.shouldPreserveIconSpacing(menuBuilder));
        }
        int measureIndividualMenuWidth = measureIndividualMenuWidth(menuAdapter, null, this.mContext, this.mMenuMaxWidth);
        MenuPopupWindow createPopupWindow = createPopupWindow();
        createPopupWindow.setAdapter(menuAdapter);
        createPopupWindow.setContentWidth(measureIndividualMenuWidth);
        createPopupWindow.setDropDownGravity(this.mDropDownGravity);
        if (this.mShowingMenus.size() > 0) {
            List<CascadingMenuInfo> list = this.mShowingMenus;
            cascadingMenuInfo = list.get(list.size() - 1);
            view = findParentViewForSubmenu(cascadingMenuInfo, menuBuilder);
        } else {
            cascadingMenuInfo = null;
            view = null;
        }
        if (view != null) {
            createPopupWindow.setTouchModal(false);
            createPopupWindow.setEnterTransition(null);
            int nextMenuPosition = getNextMenuPosition(measureIndividualMenuWidth);
            boolean z = nextMenuPosition == 1;
            this.mLastPosition = nextMenuPosition;
            createPopupWindow.setAnchorView(view);
            if ((this.mDropDownGravity & 5) != 5) {
                measureIndividualMenuWidth = z ? view.getWidth() : 0 - measureIndividualMenuWidth;
            } else if (!z) {
                measureIndividualMenuWidth = 0 - view.getWidth();
            }
            createPopupWindow.setHorizontalOffset(measureIndividualMenuWidth);
            createPopupWindow.setOverlapAnchor(true);
            createPopupWindow.setVerticalOffset(0);
        } else {
            if (this.mHasXOffset) {
                createPopupWindow.setHorizontalOffset(this.mXOffset);
            }
            if (this.mHasYOffset) {
                createPopupWindow.setVerticalOffset(this.mYOffset);
            }
            createPopupWindow.setEpicenterBounds(getEpicenterBounds());
        }
        this.mShowingMenus.add(new CascadingMenuInfo(createPopupWindow, menuBuilder, this.mLastPosition));
        createPopupWindow.show();
        ListView listView = createPopupWindow.getListView();
        listView.setOnKeyListener(this);
        if (cascadingMenuInfo == null && this.mShowTitle && menuBuilder.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(menuBuilder.getHeaderTitle());
            listView.addHeaderView(frameLayout, null, false);
            createPopupWindow.show();
        }
    }

    private MenuItem findMenuItemForSubmenu(MenuBuilder menuBuilder, MenuBuilder menuBuilder2) {
        int size = menuBuilder.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menuBuilder.getItem(i);
            if (item.hasSubMenu() && menuBuilder2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View findParentViewForSubmenu(CascadingMenuInfo cascadingMenuInfo, MenuBuilder menuBuilder) {
        MenuAdapter menuAdapter;
        int i;
        int firstVisiblePosition;
        MenuItem findMenuItemForSubmenu = findMenuItemForSubmenu(cascadingMenuInfo.menu, menuBuilder);
        if (findMenuItemForSubmenu == null) {
            return null;
        }
        ListView listView = cascadingMenuInfo.getListView();
        ListAdapter adapter = listView.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
        } else {
            menuAdapter = (MenuAdapter) adapter;
            i = 0;
        }
        int count = menuAdapter.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            }
            if (findMenuItemForSubmenu == menuAdapter.getItem(i2)) {
                break;
            }
            i2++;
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + i) - listView.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listView.getChildCount()) {
            return listView.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.mShowingMenus.size() > 0 && this.mShowingMenus.get(0).window.isShowing();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        CascadingMenuInfo cascadingMenuInfo;
        int size = this.mShowingMenus.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                cascadingMenuInfo = null;
                break;
            }
            cascadingMenuInfo = this.mShowingMenus.get(i);
            if (!cascadingMenuInfo.window.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (cascadingMenuInfo != null) {
            cascadingMenuInfo.menu.close(false);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        Iterator<CascadingMenuInfo> it = this.mShowingMenus.iterator();
        while (it.hasNext()) {
            toMenuAdapter(it.next().getListView().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        for (CascadingMenuInfo cascadingMenuInfo : this.mShowingMenus) {
            if (subMenuBuilder == cascadingMenuInfo.menu) {
                cascadingMenuInfo.getListView().requestFocus();
                return true;
            }
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        addMenu(subMenuBuilder);
        MenuPresenter.Callback callback = this.mPresenterCallback;
        if (callback != null) {
            callback.onOpenSubMenu(subMenuBuilder);
        }
        return true;
    }

    private int findIndexOfAddedMenu(MenuBuilder menuBuilder) {
        int size = this.mShowingMenus.size();
        for (int i = 0; i < size; i++) {
            if (menuBuilder == this.mShowingMenus.get(i).menu) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        int findIndexOfAddedMenu = findIndexOfAddedMenu(menuBuilder);
        if (findIndexOfAddedMenu < 0) {
            return;
        }
        int i = findIndexOfAddedMenu + 1;
        if (i < this.mShowingMenus.size()) {
            this.mShowingMenus.get(i).menu.close(false);
        }
        CascadingMenuInfo remove = this.mShowingMenus.remove(findIndexOfAddedMenu);
        remove.menu.removeMenuPresenter(this);
        if (this.mShouldCloseImmediately) {
            remove.window.setExitTransition(null);
            remove.window.setAnimationStyle(0);
        }
        remove.window.dismiss();
        int size = this.mShowingMenus.size();
        if (size > 0) {
            this.mLastPosition = this.mShowingMenus.get(size - 1).position;
        } else {
            this.mLastPosition = getInitialMenuPosition();
        }
        if (size != 0) {
            if (z) {
                this.mShowingMenus.get(0).menu.close(false);
                return;
            }
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.mPresenterCallback;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, true);
        }
        ViewTreeObserver viewTreeObserver = this.mTreeObserver;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener);
            }
            this.mTreeObserver = null;
        }
        this.mShownAnchorView.removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
        this.mOnDismissListener.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setGravity(int i) {
        if (this.mRawDropDownGravity != i) {
            this.mRawDropDownGravity = i;
            this.mDropDownGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this.mAnchorView));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setAnchorView(View view) {
        if (this.mAnchorView != view) {
            this.mAnchorView = view;
            this.mDropDownGravity = GravityCompat.getAbsoluteGravity(this.mRawDropDownGravity, ViewCompat.getLayoutDirection(view));
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView getListView() {
        if (this.mShowingMenus.isEmpty()) {
            return null;
        }
        return this.mShowingMenus.get(r1.size() - 1).getListView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CascadingMenuInfo {
        public final MenuBuilder menu;
        public final int position;
        public final MenuPopupWindow window;

        public CascadingMenuInfo(MenuPopupWindow menuPopupWindow, MenuBuilder menuBuilder, int i) {
            this.window = menuPopupWindow;
            this.menu = menuBuilder;
            this.position = i;
        }

        public ListView getListView() {
            return this.window.getListView();
        }
    }
}
