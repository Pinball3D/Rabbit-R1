package tech.rabbit.r1launcher.settings.brightness;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import defpackage.AppConfig;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.BaseValueAdjustCard;

/* compiled from: BrightnessAdjustCard.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\tH\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\"\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\u0012\u001a\u00020\fH\u0016J\u0012\u0010\u0013\u001a\u00020\f2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u0018\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\tH\u0016¨\u0006\u0018"}, d2 = {"Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;", "Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "addValue", "", "getCurrentValue", "getMaxValue", "getMinValue", "getSystemBrightness", "initView", "minusValue", "setScreenManualMode", "setSystemBrightness", "brightness", "setValuePercent", "currentValue", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BrightnessAdjustCard extends BaseValueAdjustCard {
    public static final int $stable = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$1(View view) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrightnessAdjustCard(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrightnessAdjustCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrightnessAdjustCard(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void setScreenManualMode(Context context) {
        ContentResolver contentResolver = context != null ? context.getContentResolver() : null;
        if (contentResolver == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            BrightnessAdjustCard brightnessAdjustCard = this;
            if (Settings.System.getInt(contentResolver, "screen_brightness") == 1) {
                Settings.System.putInt(contentResolver, "screen_brightness_mode", 0);
            }
            Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public void initView(Context context, AttributeSet attrs, int defStyleAttr) {
        Intrinsics.checkNotNullParameter(context, "context");
        setScreenManualMode(context);
        super.initView(context, attrs, defStyleAttr);
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        TextView settingTitle = getSettingTitle();
        if (settingTitle != null) {
            settingTitle.setText(context.getString(R.string.settings_page_brightness));
        }
        ImageView iconView = getIconView();
        if (iconView != null) {
            iconView.setImageResource(R.drawable.ic_brightness_settings);
        }
        ImageView iconView2 = getIconView();
        ViewGroup.LayoutParams layoutParams = iconView2 != null ? iconView2.getLayoutParams() : null;
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = 36;
        ImageView iconView3 = getIconView();
        if (iconView3 != null) {
            iconView3.setLayoutParams(marginLayoutParams);
        }
        setOnClickListener(new View.OnClickListener() { // from class: tech.rabbit.r1launcher.settings.brightness.BrightnessAdjustCard$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BrightnessAdjustCard.initView$lambda$1(view);
            }
        });
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public void setValuePercent(int currentValue) {
        super.setValuePercent(currentValue);
        if (currentValue > (86.0f / getViewHeight()) * getMaxBasicValue()) {
            ImageView iconView = getIconView();
            if (iconView == null) {
                return;
            }
            iconView.setImageTintList(ColorStateList.valueOf(getContext().getResources().getColor(R.color.black)));
            return;
        }
        ImageView iconView2 = getIconView();
        if (iconView2 == null) {
            return;
        }
        iconView2.setImageTintList(ColorStateList.valueOf(getContext().getResources().getColor(R.color.white)));
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public void addValue() {
        Object m5698constructorimpl;
        int currentValue = getCurrentValue() + getGapBasicValue();
        if (currentValue > getMaxBasicValue()) {
            currentValue = getMaxBasicValue();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            BrightnessAdjustCard brightnessAdjustCard = this;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            setSystemBrightness(context, currentValue);
            m5698constructorimpl = Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
            intent.setData(Uri.parse("package:" + AppConfig.INSTANCE.getPackageName()));
            getContext().startActivity(intent);
            return;
        }
        setValuePercent(currentValue);
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public void minusValue() {
        Object m5698constructorimpl;
        int currentValue = getCurrentValue() - getGapBasicValue();
        if (currentValue < getMinBasicValue()) {
            currentValue = getMinBasicValue();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            BrightnessAdjustCard brightnessAdjustCard = this;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            setSystemBrightness(context, currentValue);
            m5698constructorimpl = Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
            intent.setData(Uri.parse("package:" + AppConfig.INSTANCE.getPackageName()));
            getContext().startActivity(intent);
            return;
        }
        setValuePercent(currentValue);
    }

    private final int getSystemBrightness(Context context) {
        int i = Settings.System.getInt(context.getContentResolver(), "screen_brightness");
        return i > getMaxBasicValue() ? getMaxBasicValue() : i;
    }

    private final void setSystemBrightness(Context context, int brightness) {
        setScreenManualMode(context);
        Settings.System.putInt(context.getContentResolver(), "screen_brightness", brightness);
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public int getMinValue() {
        return getResources().getInteger(getResources().getIdentifier("config_screenBrightnessSettingMinimum", "integer", "android"));
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public int getMaxValue() {
        return getResources().getInteger(getResources().getIdentifier("config_screenBrightnessSettingMaximum", "integer", "android"));
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public int getCurrentValue() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return getSystemBrightness(context);
    }
}
