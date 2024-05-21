package com.google.android.material.navigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

/* loaded from: classes2.dex */
public final class NavigationBarMenu extends MenuBuilder {
    private final int maxItemCount;
    private final Class<?> viewClass;

    public int getMaxItemCount() {
        return this.maxItemCount;
    }

    public NavigationBarMenu(Context context, Class<?> cls, int i) {
        super(context);
        this.viewClass = cls;
        this.maxItemCount = i;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.viewClass.getSimpleName() + " does not support submenus");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.view.menu.MenuBuilder
    public MenuItem addInternal(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 > this.maxItemCount) {
            String simpleName = this.viewClass.getSimpleName();
            throw new IllegalArgumentException("Maximum number of items supported by " + simpleName + " is " + this.maxItemCount + ". Limit can be checked with " + simpleName + "#getMaxItemCount()");
        }
        stopDispatchingItemsChanged();
        MenuItem addInternal = super.addInternal(i, i2, i3, charSequence);
        if (addInternal instanceof MenuItemImpl) {
            ((MenuItemImpl) addInternal).setExclusiveCheckable(true);
        }
        startDispatchingItemsChanged();
        return addInternal;
    }
}
