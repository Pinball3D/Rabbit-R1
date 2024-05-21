package com.chad.library.adapter.base.viewholder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseViewHolder.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0007\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\tH\u0017¢\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u0002H\f\"\b\b\u0000\u0010\f*\u00020\u00032\b\b\u0001\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fJ#\u0010\u0010\u001a\u0004\u0018\u0001H\f\"\b\b\u0000\u0010\f*\u00020\u00032\b\b\u0001\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fJ\u001c\u0010\u0011\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u0012\u001a\u00020\u000eH\u0016J\u001c\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u0014\u001a\u00020\u000eH\u0016J\u001a\u0010\u0015\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u001c\u0010\u001a\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010\u001d\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001c\u0010 \u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010!\u001a\u00020\u000eH\u0016J\u001c\u0010\"\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001e\u0010\"\u001a\u0004\u0018\u00010\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010%\u001a\u00020\u000eH\u0016J\u001c\u0010&\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u0012\u001a\u00020\u000eH\u0016J\u001c\u0010'\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010(\u001a\u00020\u000eH\u0016J\u001a\u0010)\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020\u0017H\u0016J\u001d\u0010+\u001a\u0004\u0018\u0001H\f\"\b\b\u0000\u0010\f*\u00020\u0003*\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "view", "Landroid/view/View;", "(Landroid/view/View;)V", "views", "Landroid/util/SparseArray;", "getBinding", "B", "Landroidx/databinding/ViewDataBinding;", "()Landroidx/databinding/ViewDataBinding;", "getView", ExifInterface.GPS_DIRECTION_TRUE, "viewId", "", "(I)Landroid/view/View;", "getViewOrNull", "setBackgroundColor", "color", "setBackgroundResource", "backgroundRes", "setEnabled", "isEnabled", "", "setGone", "isGone", "setImageBitmap", "bitmap", "Landroid/graphics/Bitmap;", "setImageDrawable", "drawable", "Landroid/graphics/drawable/Drawable;", "setImageResource", "imageResId", "setText", "value", "", "strId", "setTextColor", "setTextColorRes", "colorRes", "setVisible", "isVisible", "findView", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class BaseViewHolder extends RecyclerView.ViewHolder {
    private final SparseArray<View> views;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseViewHolder(View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.views = new SparseArray<>();
    }

    @Deprecated(message = "Please use BaseDataBindingHolder class", replaceWith = @ReplaceWith(expression = "DataBindingUtil.getBinding(itemView)", imports = {"androidx.databinding.DataBindingUtil"}))
    public <B extends ViewDataBinding> B getBinding() {
        return (B) DataBindingUtil.getBinding(this.itemView);
    }

    public <T extends View> T getView(int viewId) {
        T t = (T) getViewOrNull(viewId);
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(("No view found with id " + viewId).toString());
    }

    public <T extends View> T getViewOrNull(int viewId) {
        T t;
        T t2 = (T) this.views.get(viewId);
        if (t2 == null && (t = (T) this.itemView.findViewById(viewId)) != null) {
            this.views.put(viewId, t);
            return t;
        }
        if (t2 == null) {
            return null;
        }
        return t2;
    }

    public <T extends View> T findView(int i) {
        return (T) this.itemView.findViewById(i);
    }

    public BaseViewHolder setText(int viewId, CharSequence value) {
        ((TextView) getView(viewId)).setText(value);
        return this;
    }

    public BaseViewHolder setText(int viewId, int strId) {
        ((TextView) getView(viewId)).setText(strId);
        return this;
    }

    public BaseViewHolder setTextColor(int viewId, int color) {
        ((TextView) getView(viewId)).setTextColor(color);
        return this;
    }

    public BaseViewHolder setTextColorRes(int viewId, int colorRes) {
        ((TextView) getView(viewId)).setTextColor(ContextCompat.getColor(this.itemView.getContext(), colorRes));
        return this;
    }

    public BaseViewHolder setImageResource(int viewId, int imageResId) {
        ((ImageView) getView(viewId)).setImageResource(imageResId);
        return this;
    }

    public BaseViewHolder setImageDrawable(int viewId, Drawable drawable) {
        ((ImageView) getView(viewId)).setImageDrawable(drawable);
        return this;
    }

    public BaseViewHolder setImageBitmap(int viewId, Bitmap bitmap) {
        ((ImageView) getView(viewId)).setImageBitmap(bitmap);
        return this;
    }

    public BaseViewHolder setBackgroundColor(int viewId, int color) {
        getView(viewId).setBackgroundColor(color);
        return this;
    }

    public BaseViewHolder setBackgroundResource(int viewId, int backgroundRes) {
        getView(viewId).setBackgroundResource(backgroundRes);
        return this;
    }

    public BaseViewHolder setVisible(int viewId, boolean isVisible) {
        getView(viewId).setVisibility(isVisible ? 0 : 4);
        return this;
    }

    public BaseViewHolder setGone(int viewId, boolean isGone) {
        getView(viewId).setVisibility(isGone ? 8 : 0);
        return this;
    }

    public BaseViewHolder setEnabled(int viewId, boolean isEnabled) {
        getView(viewId).setEnabled(isEnabled);
        return this;
    }
}
