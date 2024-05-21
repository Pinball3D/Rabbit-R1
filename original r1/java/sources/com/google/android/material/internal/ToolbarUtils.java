package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public class ToolbarUtils {
    private static final Comparator<View> VIEW_TOP_COMPARATOR = new Comparator<View>() { // from class: com.google.android.material.internal.ToolbarUtils.1
        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            return view.getTop() - view2.getTop();
        }
    };

    private ToolbarUtils() {
    }

    public static TextView getTitleTextView(Toolbar toolbar) {
        List<TextView> textViewsWithText = getTextViewsWithText(toolbar, toolbar.getTitle());
        if (textViewsWithText.isEmpty()) {
            return null;
        }
        return (TextView) Collections.min(textViewsWithText, VIEW_TOP_COMPARATOR);
    }

    public static TextView getSubtitleTextView(Toolbar toolbar) {
        List<TextView> textViewsWithText = getTextViewsWithText(toolbar, toolbar.getSubtitle());
        if (textViewsWithText.isEmpty()) {
            return null;
        }
        return (TextView) Collections.max(textViewsWithText, VIEW_TOP_COMPARATOR);
    }

    private static List<TextView> getTextViewsWithText(Toolbar toolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }

    public static ImageView getLogoImageView(Toolbar toolbar) {
        return getImageView(toolbar, toolbar.getLogo());
    }

    private static ImageView getImageView(Toolbar toolbar, Drawable drawable) {
        ImageView imageView;
        Drawable drawable2;
        if (drawable == null) {
            return null;
        }
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if ((childAt instanceof ImageView) && (drawable2 = (imageView = (ImageView) childAt).getDrawable()) != null && drawable2.getConstantState() != null && drawable2.getConstantState().equals(drawable.getConstantState())) {
                return imageView;
            }
        }
        return null;
    }

    public static View getSecondaryActionMenuItemView(Toolbar toolbar) {
        ActionMenuView actionMenuView = getActionMenuView(toolbar);
        if (actionMenuView == null || actionMenuView.getChildCount() <= 1) {
            return null;
        }
        return actionMenuView.getChildAt(0);
    }

    public static ActionMenuView getActionMenuView(Toolbar toolbar) {
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    public static ImageButton getNavigationIconButton(Toolbar toolbar) {
        Drawable navigationIcon = toolbar.getNavigationIcon();
        if (navigationIcon == null) {
            return null;
        }
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if (childAt instanceof ImageButton) {
                ImageButton imageButton = (ImageButton) childAt;
                if (imageButton.getDrawable() == navigationIcon) {
                    return imageButton;
                }
            }
        }
        return null;
    }

    public static ActionMenuItemView getActionMenuItemView(Toolbar toolbar, int i) {
        ActionMenuView actionMenuView = getActionMenuView(toolbar);
        if (actionMenuView == null) {
            return null;
        }
        for (int i2 = 0; i2 < actionMenuView.getChildCount(); i2++) {
            View childAt = actionMenuView.getChildAt(i2);
            if (childAt instanceof ActionMenuItemView) {
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) childAt;
                if (actionMenuItemView.getItemData().getItemId() == i) {
                    return actionMenuItemView;
                }
            }
        }
        return null;
    }
}
