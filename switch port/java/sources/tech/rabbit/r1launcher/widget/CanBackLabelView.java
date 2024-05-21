package tech.rabbit.r1launcher.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;

/* compiled from: CanBackLabelView.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\f\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J\u0012\u0010\u0016\u001a\u00020\r2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Ltech/rabbit/r1launcher/widget/CanBackLabelView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "fadeBackground", "Landroid/view/View;", "tvFocused", "Landroidx/appcompat/widget/AppCompatTextView;", "tvUnfocused", "inflateAndSetupViews", "", "onTouchEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "setFocusedLabel", "text", "", "setUnfocusedLabel", "setupAttrsToViews", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CanBackLabelView extends FrameLayout {
    public static final int $stable = 8;
    private View fadeBackground;
    private AppCompatTextView tvFocused;
    private AppCompatTextView tvUnfocused;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CanBackLabelView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return false;
    }

    public /* synthetic */ CanBackLabelView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CanBackLabelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        inflateAndSetupViews();
        setupAttrsToViews(attributeSet);
    }

    private final void inflateAndSetupViews() {
        FrameLayout.inflate(getContext(), R.layout.view_can_back_label, this);
        View findViewById = findViewById(R.id.tv_focused);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.tvFocused = (AppCompatTextView) findViewById;
        View findViewById2 = findViewById(R.id.tv_unfocused);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.tvUnfocused = (AppCompatTextView) findViewById2;
        View findViewById3 = findViewById(R.id.v_fade_background);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        this.fadeBackground = findViewById3;
        setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.widget.CanBackLabelView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                CanBackLabelView.inflateAndSetupViews$lambda$0(CanBackLabelView.this, view, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void inflateAndSetupViews$lambda$0(CanBackLabelView this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AppCompatTextView appCompatTextView = this$0.tvFocused;
        AppCompatTextView appCompatTextView2 = null;
        if (appCompatTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvFocused");
            appCompatTextView = null;
        }
        appCompatTextView.setVisibility(z ? 0 : 8);
        AppCompatTextView appCompatTextView3 = this$0.tvUnfocused;
        if (appCompatTextView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvUnfocused");
        } else {
            appCompatTextView2 = appCompatTextView3;
        }
        appCompatTextView2.setVisibility(z ^ true ? 0 : 8);
    }

    private final void setupAttrsToViews(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.CanBackLabelView);
        try {
            TypedArray typedArray = obtainStyledAttributes;
            String str = "";
            if (typedArray.hasValue(R.styleable.CanBackLabelView_canBackLabelViewFocusedLabel)) {
                AppCompatTextView appCompatTextView = this.tvFocused;
                if (appCompatTextView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvFocused");
                    appCompatTextView = null;
                }
                CharSequence text = typedArray.getText(R.styleable.CanBackLabelView_canBackLabelViewFocusedLabel);
                String obj = text != null ? text.toString() : null;
                if (obj == null) {
                    obj = "";
                }
                appCompatTextView.setText(obj);
            }
            if (typedArray.hasValue(R.styleable.CanBackLabelView_canBackLabelViewUnfocusedLabel)) {
                AppCompatTextView appCompatTextView2 = this.tvUnfocused;
                if (appCompatTextView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvUnfocused");
                    appCompatTextView2 = null;
                }
                CharSequence text2 = typedArray.getText(R.styleable.CanBackLabelView_canBackLabelViewUnfocusedLabel);
                String obj2 = text2 != null ? text2.toString() : null;
                if (obj2 != null) {
                    str = obj2;
                }
                appCompatTextView2.setText(str);
            }
            if (typedArray.hasValue(R.styleable.CanBackLabelView_visibleFadeBackground)) {
                View view = this.fadeBackground;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("fadeBackground");
                    view = null;
                }
                view.setVisibility(typedArray.getBoolean(R.styleable.CanBackLabelView_visibleFadeBackground, false) ^ true ? 8 : 0);
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(obtainStyledAttributes, null);
        } finally {
        }
    }

    public final void setFocusedLabel(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        AppCompatTextView appCompatTextView = this.tvFocused;
        if (appCompatTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvFocused");
            appCompatTextView = null;
        }
        appCompatTextView.setText(text);
    }

    public final void setUnfocusedLabel(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        AppCompatTextView appCompatTextView = this.tvUnfocused;
        if (appCompatTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvUnfocused");
            appCompatTextView = null;
        }
        appCompatTextView.setText(text);
    }
}
