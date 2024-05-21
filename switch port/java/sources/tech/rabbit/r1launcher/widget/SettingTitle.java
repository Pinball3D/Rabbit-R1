package tech.rabbit.r1launcher.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.LayoutSettingTitleBinding;

/* compiled from: SettingTitle.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u001a\u0010!\u001a\u00020\u001a2\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010\"\u001a\u00020\u001aH\u0002J\b\u0010#\u001a\u00020\u001aH\u0014J\u0018\u0010$\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010&\u001a\u00020'H\u0016R$\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R5\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u001a0\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Ltech/rabbit/r1launcher/widget/SettingTitle;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "value", "", "focusTitle", "getFocusTitle", "()Ljava/lang/String;", "setFocusTitle", "(Ljava/lang/String;)V", "normalTitle", "getNormalTitle", "setNormalTitle", "onKeyDownCallback", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "keyCode", "", "getOnKeyDownCallback", "()Lkotlin/jvm/functions/Function1;", "setOnKeyDownCallback", "(Lkotlin/jvm/functions/Function1;)V", "settingTitleBinding", "Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;", "initAttrs", "initText", "onAttachedToWindow", "onKeyUp", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingTitle extends FrameLayout {
    public static final int $stable = 8;
    private String focusTitle;
    private String normalTitle;
    private Function1<? super Integer, Unit> onKeyDownCallback;
    private LayoutSettingTitleBinding settingTitleBinding;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void lambda$2$lambda$1(View view) {
    }

    public final String getFocusTitle() {
        return this.focusTitle;
    }

    public final String getNormalTitle() {
        return this.normalTitle;
    }

    public final Function1<Integer, Unit> getOnKeyDownCallback() {
        return this.onKeyDownCallback;
    }

    public final void setOnKeyDownCallback(Function1<? super Integer, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onKeyDownCallback = function1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingTitle(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        LayoutSettingTitleBinding bind = LayoutSettingTitleBinding.bind(FrameLayout.inflate(getContext(), R.layout.layout_setting_title, null));
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        this.settingTitleBinding = bind;
        this.focusTitle = "";
        this.normalTitle = "";
        this.onKeyDownCallback = SettingTitle$onKeyDownCallback$1.INSTANCE;
        setFocusable(true);
        setClickable(true);
        post(new Runnable() { // from class: tech.rabbit.r1launcher.widget.SettingTitle$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SettingTitle._init_$lambda$2(SettingTitle.this);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingTitle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        LayoutSettingTitleBinding bind = LayoutSettingTitleBinding.bind(FrameLayout.inflate(getContext(), R.layout.layout_setting_title, null));
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        this.settingTitleBinding = bind;
        this.focusTitle = "";
        this.normalTitle = "";
        this.onKeyDownCallback = SettingTitle$onKeyDownCallback$1.INSTANCE;
        setFocusable(true);
        setClickable(true);
        post(new Runnable() { // from class: tech.rabbit.r1launcher.widget.SettingTitle$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SettingTitle._init_$lambda$2(SettingTitle.this);
            }
        });
        initAttrs(context, attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingTitle(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        LayoutSettingTitleBinding bind = LayoutSettingTitleBinding.bind(FrameLayout.inflate(getContext(), R.layout.layout_setting_title, null));
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        this.settingTitleBinding = bind;
        this.focusTitle = "";
        this.normalTitle = "";
        this.onKeyDownCallback = SettingTitle$onKeyDownCallback$1.INSTANCE;
        setFocusable(true);
        setClickable(true);
        post(new Runnable() { // from class: tech.rabbit.r1launcher.widget.SettingTitle$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SettingTitle._init_$lambda$2(SettingTitle.this);
            }
        });
        initAttrs(context, attributeSet);
    }

    public final void setFocusTitle(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.focusTitle = value;
        initText();
    }

    public final void setNormalTitle(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.normalTitle = value;
        initText();
    }

    private final void initAttrs(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.SettingTitle);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        String string = obtainStyledAttributes.getString(R.styleable.SettingTitle_st_focus_title);
        if (string == null) {
            string = "";
        }
        setFocusTitle(string);
        String string2 = obtainStyledAttributes.getString(R.styleable.SettingTitle_st_normal_title);
        setNormalTitle(string2 != null ? string2 : "");
        obtainStyledAttributes.close();
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!isFocused()) {
            return false;
        }
        if (keyCode != 26 && keyCode != 66 && keyCode != 80) {
            return false;
        }
        this.onKeyDownCallback.invoke(Integer.valueOf(keyCode));
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        initText();
    }

    private final void initText() {
        this.settingTitleBinding.tvFocusTitle.setText(this.focusTitle);
        this.settingTitleBinding.tvNormalTitle.setText(this.normalTitle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$2(final SettingTitle this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.addView(this$0.settingTitleBinding.getRoot());
        this$0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.widget.SettingTitle$$ExternalSyntheticLambda1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                SettingTitle.lambda$2$lambda$0(SettingTitle.this, view, z);
            }
        });
        this$0.setOnClickListener(new View.OnClickListener() { // from class: tech.rabbit.r1launcher.widget.SettingTitle$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingTitle.lambda$2$lambda$1(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void lambda$2$lambda$0(SettingTitle this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.settingTitleBinding.llFocusTitle.setVisibility(0);
            this$0.settingTitleBinding.tvNormalTitle.setVisibility(8);
        } else {
            this$0.settingTitleBinding.llFocusTitle.setVisibility(8);
            this$0.settingTitleBinding.tvNormalTitle.setVisibility(0);
        }
    }
}
