package tech.rabbit.r1launcher.settings.volume;

import android.content.Context;
import android.content.res.ColorStateList;
import android.media.AudioManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.BaseValueAdjustCard;

/* compiled from: VolumeAdjustCard.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0016J\"\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0016J\u000e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\tJ\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\tH\u0016J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\tH\u0002R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;", "Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "mAudioManager", "Landroid/media/AudioManager;", "mAudioStream", "addValue", "", "getCurrentValue", "initView", "minusValue", "setAudioStream", "stream", "setImageResourceAppropriately", "crossedOut", "", "setValuePercent", "currentBasicValue", "setVolume", "currentValue", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VolumeAdjustCard extends BaseValueAdjustCard {
    public static final int $stable = 8;
    private AudioManager mAudioManager;
    private int mAudioStream;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$2(View view) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VolumeAdjustCard(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mAudioStream = Integer.MIN_VALUE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VolumeAdjustCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mAudioStream = Integer.MIN_VALUE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VolumeAdjustCard(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mAudioStream = Integer.MIN_VALUE;
    }

    public final void setAudioStream(int stream) {
        Object m5698constructorimpl;
        this.mAudioStream = stream;
        try {
            Result.Companion companion = Result.INSTANCE;
            VolumeAdjustCard volumeAdjustCard = this;
            AudioManager audioManager = this.mAudioManager;
            Intrinsics.checkNotNull(audioManager);
            setMinBasicValue(audioManager.getStreamMinVolume(this.mAudioStream));
            AudioManager audioManager2 = this.mAudioManager;
            Intrinsics.checkNotNull(audioManager2);
            setMaxBasicValue(audioManager2.getStreamMaxVolume(this.mAudioStream));
            m5698constructorimpl = Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            setMinBasicValue(0);
            setMaxBasicValue(0);
        }
        setValuePercent(getCurrentValue());
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public void initView(Context context, AttributeSet attrs, int defStyleAttr) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("audio");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.mAudioManager = (AudioManager) systemService;
        super.initView(context, attrs, defStyleAttr);
        TextView settingTitle = getSettingTitle();
        if (settingTitle != null) {
            settingTitle.setText(context.getString(R.string.settings_page_volume));
        }
        setOnClickListener(new View.OnClickListener() { // from class: tech.rabbit.r1launcher.settings.volume.VolumeAdjustCard$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VolumeAdjustCard.initView$lambda$2(view);
            }
        });
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        ImageView iconView = getIconView();
        ViewGroup.LayoutParams layoutParams = iconView != null ? iconView.getLayoutParams() : null;
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = 36;
        ImageView iconView2 = getIconView();
        if (iconView2 == null) {
            return;
        }
        iconView2.setLayoutParams(marginLayoutParams);
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public void setValuePercent(int currentBasicValue) {
        super.setValuePercent(currentBasicValue);
        if (currentBasicValue > (86.0f / getViewHeight()) * getMaxBasicValue()) {
            ImageView iconView = getIconView();
            if (iconView != null) {
                iconView.setImageTintList(ColorStateList.valueOf(getContext().getResources().getColor(R.color.black)));
            }
            setImageResourceAppropriately(false);
            return;
        }
        ImageView iconView2 = getIconView();
        if (iconView2 != null) {
            iconView2.setImageTintList(ColorStateList.valueOf(getContext().getResources().getColor(R.color.white)));
        }
        if (currentBasicValue <= getMinBasicValue()) {
            setImageResourceAppropriately(true);
        } else {
            setImageResourceAppropriately(false);
        }
    }

    private final void setImageResourceAppropriately(boolean crossedOut) {
        if (crossedOut) {
            int i = this.mAudioStream;
            if (i == 0) {
                ImageView iconView = getIconView();
                if (iconView != null) {
                    iconView.setImageResource(R.drawable.ic_volume_no_media_settings);
                    return;
                }
                return;
            }
            if (i == 3) {
                ImageView iconView2 = getIconView();
                if (iconView2 != null) {
                    iconView2.setImageResource(R.drawable.ic_volume_no_voice_settings);
                    return;
                }
                return;
            }
            ImageView iconView3 = getIconView();
            if (iconView3 != null) {
                iconView3.setImageResource(R.drawable.ic_volume_no_sound_settings);
                return;
            }
            return;
        }
        int i2 = this.mAudioStream;
        if (i2 == 0) {
            ImageView iconView4 = getIconView();
            if (iconView4 != null) {
                iconView4.setImageResource(R.drawable.ic_volume_media_settings);
                return;
            }
            return;
        }
        if (i2 == 3) {
            ImageView iconView5 = getIconView();
            if (iconView5 != null) {
                iconView5.setImageResource(R.drawable.ic_volume_voice_settings);
                return;
            }
            return;
        }
        ImageView iconView6 = getIconView();
        if (iconView6 != null) {
            iconView6.setImageResource(R.drawable.ic_volume_sound_settings);
        }
    }

    private final void setVolume(int currentValue) {
        AudioManager audioManager = this.mAudioManager;
        if (audioManager != null) {
            audioManager.setStreamVolume(this.mAudioStream, currentValue, 0);
        }
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public void addValue() {
        super.addValue();
        AudioManager audioManager = this.mAudioManager;
        if (audioManager == null || !audioManager.isVolumeFixed()) {
            int currentValue = getCurrentValue() + 1;
            if (currentValue > getMaxBasicValue()) {
                currentValue = getMaxBasicValue();
            }
            setVolume(currentValue);
        }
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public void minusValue() {
        super.minusValue();
        AudioManager audioManager = this.mAudioManager;
        if (audioManager == null || !audioManager.isVolumeFixed()) {
            int currentValue = getCurrentValue() - 1;
            if (currentValue < getMinBasicValue()) {
                currentValue = getMinBasicValue();
            }
            setVolume(currentValue);
        }
    }

    @Override // tech.rabbit.r1launcher.settings.BaseValueAdjustCard
    public int getCurrentValue() {
        try {
            Result.Companion companion = Result.INSTANCE;
            VolumeAdjustCard volumeAdjustCard = this;
            AudioManager audioManager = this.mAudioManager;
            Intrinsics.checkNotNull(audioManager);
            return audioManager.getStreamVolume(this.mAudioStream);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m5698constructorimpl(ResultKt.createFailure(th));
            return 0;
        }
    }
}
