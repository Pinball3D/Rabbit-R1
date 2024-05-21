package tech.rabbit.r1launcher.initstep.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.Session;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import tech.rabbit.r1launcher.BuildConfig;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.initstep.widget.NumberPickerView;

/* compiled from: NumberPickerView.kt */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001c\b\u0007\u0018\u00002\u00020\u0001:\u0003`abB%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010>\u001a\u00020?H\u0002J\b\u0010@\u001a\u00020?H\u0002J\u0010\u0010A\u001a\u00020?2\u0006\u0010B\u001a\u00020\nH\u0002J\b\u0010C\u001a\u00020?H\u0002J\b\u0010D\u001a\u00020?H\u0002J\u0010\u0010E\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0002J\u0010\u0010H\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0002J\u0010\u0010I\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0002J\u0010\u0010J\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0002J\b\u0010K\u001a\u00020\nH\u0002J\u0006\u0010L\u001a\u000200J\u0006\u0010M\u001a\u000200J\u0006\u0010N\u001a\u000200J\b\u0010O\u001a\u00020?H\u0002J\b\u0010P\u001a\u00020?H\u0002J\u0006\u0010Q\u001a\u00020?J\u0010\u0010R\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0014J\u0018\u0010S\u001a\u00020?2\u0006\u0010T\u001a\u00020\u00072\u0006\u0010U\u001a\u00020\u0007H\u0014J\u0006\u0010V\u001a\u00020?J\u0006\u0010W\u001a\u00020?J\u0006\u0010X\u001a\u00020?J\u0006\u0010Y\u001a\u00020?J\u000e\u0010Z\u001a\u00020?2\u0006\u0010[\u001a\u000205J\u0010\u0010\\\u001a\u00020?2\u0006\u0010]\u001a\u000200H\u0016J\b\u0010^\u001a\u00020?H\u0002J\u0006\u0010_\u001a\u00020?R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u001d\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b \u0010!R#\u0010$\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010#\u001a\u0004\b%\u0010!R\u000e\u0010'\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00101\u001a\b\u0012\u0004\u0012\u00020302X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006c"}, d2 = {"Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;", "Landroid/view/View;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "confirmSelectedAreaHeight", "", "confirmSelectedAreaReversScaleFactor", "confirmSelectedAreaScaleFactor", "confirmSelectedAreaTranslateXOffset", "confirmSelectedAreaTranslateYOffset", "confirmSelectedAreaWidth", "confirmSelectedItemTextBounds", "Landroid/graphics/Rect;", "confirmSelectedItemTextTranslateXOffset", "confirmWrapItemTextCanScaleCircleRadius", "confirmWrapItemTextCirclePaint", "Landroid/graphics/Paint;", "confirmWrapItemTextCircleRadius", "confirmedCircleItemCount", "confirmedCircleItemsLocation", "", "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;", "confirmedCircleItemsPaint", "confirmedCircleSpacing", "icDelete", "Landroid/graphics/Bitmap;", "kotlin.jvm.PlatformType", "getIcDelete", "()Landroid/graphics/Bitmap;", "icDelete$delegate", "Lkotlin/Lazy;", "icScrollGuide", "getIcScrollGuide", "icScrollGuide$delegate", "icScrollGuideLocation", "icScrollGuidePaint", "icScrollGuideScaleFactor", "icScrollGuideScaleTranslateYOffset", "icScrollGuideSelectedAreaScaleSizeOffset", "icScrollGuideSize", "indicatorPaint", "indicatorRadius", "isAnimationRunning", "", "items", "", "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;", "onNumberPickerListener", "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;", "selectedAreaCorners", "selectedAreaDrawRect", "Landroid/graphics/RectF;", "selectedAreaHeight", "selectedAreaMarginEnd", "selectedAreaPaint", "selectedAreaWidth", "textPaint", "calculateInitItemsLocationYAndTextSize", "", "calculateItemsLocation", "calculateItemsLocationOffsetY", "factor", "calculateSelectedItem", "calculateSelectedItemAreaLocation", "drawConfirmedItemsCircle", "canvas", "Landroid/graphics/Canvas;", "drawIndicator", "drawItems", "drawSelectedItemArea", "getDrawBeginLocationYOnCanvas", "isAvailable", "isDeleteItem", "isNormalItemInSelectArea", "moveToNext", "moveToPrev", "onDelete", "onDraw", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onScrollDown", "onScrollUp", "reset", "resetCacheData", "setOnNumberPickerListener", "listener", "setSelected", "selected", "showNoSelectedConfirmAnimation", "showSelectedConfirmAnimation", "ConfirmedCircleItemLocation", "Item", "OnNumberPickerListener", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NumberPickerView extends View {
    public static final int $stable = 8;
    private final float confirmSelectedAreaHeight;
    private float confirmSelectedAreaReversScaleFactor;
    private float confirmSelectedAreaScaleFactor;
    private final float confirmSelectedAreaTranslateXOffset;
    private final float confirmSelectedAreaTranslateYOffset;
    private final float confirmSelectedAreaWidth;
    private final Rect confirmSelectedItemTextBounds;
    private final float confirmSelectedItemTextTranslateXOffset;
    private final float confirmWrapItemTextCanScaleCircleRadius;
    private final Paint confirmWrapItemTextCirclePaint;
    private final float confirmWrapItemTextCircleRadius;
    private int confirmedCircleItemCount;
    private final List<ConfirmedCircleItemLocation> confirmedCircleItemsLocation;
    private final Paint confirmedCircleItemsPaint;
    private final float confirmedCircleSpacing;

    /* renamed from: icDelete$delegate, reason: from kotlin metadata */
    private final Lazy icDelete;

    /* renamed from: icScrollGuide$delegate, reason: from kotlin metadata */
    private final Lazy icScrollGuide;
    private final Rect icScrollGuideLocation;
    private final Paint icScrollGuidePaint;
    private float icScrollGuideScaleFactor;
    private final float icScrollGuideScaleTranslateYOffset;
    private final float icScrollGuideSelectedAreaScaleSizeOffset;
    private final float icScrollGuideSize;
    private final Paint indicatorPaint;
    private final float indicatorRadius;
    private boolean isAnimationRunning;
    private final List<Item> items;
    private OnNumberPickerListener onNumberPickerListener;
    private final float selectedAreaCorners;
    private final RectF selectedAreaDrawRect;
    private final float selectedAreaHeight;
    private final float selectedAreaMarginEnd;
    private final Paint selectedAreaPaint;
    private final float selectedAreaWidth;
    private final Paint textPaint;

    /* compiled from: NumberPickerView.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, d2 = {"Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;", "", "onConfirmItem", "", "text", "", "onScroll", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnNumberPickerListener {
        void onConfirmItem(String text);

        void onScroll();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NumberPickerView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NumberPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void setOnNumberPickerListener(OnNumberPickerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onNumberPickerListener = listener;
    }

    public /* synthetic */ NumberPickerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NumberPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.indicatorRadius = UiExtensionsKt.getDp(5);
        Paint paint = new Paint(1);
        paint.setColor(Color.parseColor("#AAAAAA"));
        paint.setStyle(Paint.Style.FILL);
        this.indicatorPaint = paint;
        this.selectedAreaHeight = UiExtensionsKt.getDp(56);
        this.selectedAreaWidth = UiExtensionsKt.getDp(53);
        this.selectedAreaCorners = UiExtensionsKt.getDp(9);
        this.selectedAreaMarginEnd = UiExtensionsKt.getDp(24);
        this.selectedAreaDrawRect = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        Paint paint2 = new Paint(1);
        paint2.setColor(Color.parseColor("#FF4D00"));
        paint2.setStyle(Paint.Style.FILL);
        this.selectedAreaPaint = paint2;
        Paint paint3 = new Paint(1);
        paint3.setColor(-1);
        paint3.setTypeface(Typeface.create(ResourcesCompat.getFont(context, R.font.power_grotesk_regular), 400, false));
        this.textPaint = paint3;
        this.icScrollGuideScaleTranslateYOffset = 20.0f;
        this.icScrollGuideSelectedAreaScaleSizeOffset = 12.0f;
        this.icScrollGuideSize = UiExtensionsKt.getDp(35);
        this.icScrollGuideLocation = new Rect();
        this.icScrollGuidePaint = new Paint(1);
        this.icScrollGuide = LazyKt.lazy(new Function0<Bitmap>() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$icScrollGuide$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bitmap invoke() {
                return BitmapFactory.decodeResource(NumberPickerView.this.getResources(), R.drawable.ic_number_picker_scorll_guide);
            }
        });
        this.confirmedCircleSpacing = UiExtensionsKt.getDp(15);
        this.confirmedCircleItemsLocation = new ArrayList();
        Paint paint4 = new Paint(1);
        paint4.setColor(-1);
        paint4.setStyle(Paint.Style.FILL);
        this.confirmedCircleItemsPaint = paint4;
        this.confirmSelectedAreaTranslateXOffset = 20.0f;
        this.confirmSelectedAreaTranslateYOffset = 20.0f;
        this.confirmSelectedAreaHeight = UiExtensionsKt.getDp(25);
        this.confirmSelectedAreaWidth = UiExtensionsKt.getDp(15);
        this.confirmSelectedItemTextTranslateXOffset = UiExtensionsKt.getDp(20);
        this.confirmSelectedItemTextBounds = new Rect();
        this.confirmWrapItemTextCircleRadius = UiExtensionsKt.getDp(18);
        this.confirmWrapItemTextCanScaleCircleRadius = UiExtensionsKt.getDp(13);
        Paint paint5 = new Paint(1);
        paint5.setColor(-1);
        paint5.setStyle(Paint.Style.FILL);
        this.confirmWrapItemTextCirclePaint = paint5;
        this.icDelete = LazyKt.lazy(new Function0<Bitmap>() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$icDelete$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bitmap invoke() {
                return BitmapFactory.decodeResource(NumberPickerView.this.getResources(), R.drawable.ic_passcode_delete);
            }
        });
        List listOf = CollectionsKt.listOf((Object[]) new String[]{"0", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", "-1"});
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listOf, 10));
        Iterator it = listOf.iterator();
        while (it.hasNext()) {
            arrayList.add(new Item((String) it.next(), this.textPaint));
        }
        this.items = arrayList;
        setSelected(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NumberPickerView.kt */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0082\b\u0018\u0000 =2\u00020\u0001:\u0001=B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0014J\u001e\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u0014J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0005HÆ\u0003J\u001d\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u00102\u001a\u00020\u000b2\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u00104\u001a\u00020\u001fJ\u0006\u00105\u001a\u00020\u0014J\u0006\u00106\u001a\u00020\u001fJ\t\u00107\u001a\u00020\u001fHÖ\u0001J\u0006\u00108\u001a\u00020\u0014J\u0006\u00109\u001a\u00020)J\u0006\u0010:\u001a\u00020)J\u0016\u0010;\u001a\u00020)2\u0006\u0010,\u001a\u00020-2\u0006\u0010&\u001a\u00020\u0014J\t\u0010<\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u000e\u0010&\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;", "", "text", "", "textPaint", "Landroid/graphics/Paint;", "(Ljava/lang/String;Landroid/graphics/Paint;)V", "bounds", "Landroid/graphics/Rect;", "internalTextPaint", "isSelected", "", "()Z", "setSelected", "(Z)V", "location", "Landroid/graphics/RectF;", "getLocation", "()Landroid/graphics/RectF;", "locationOffsetY", "", "getLocationOffsetY", "()F", "setLocationOffsetY", "(F)V", "locationY", "getLocationY", "setLocationY", "getText", "()Ljava/lang/String;", "textColor", "", "getTextColor", "()I", "setTextColor", "(I)V", "getTextPaint", "()Landroid/graphics/Paint;", "textSize", "textSizeOffset", "calculateLocationOffsetY", "", "factor", "calculateTextSizeOffset", "icDelete", "Landroid/graphics/Bitmap;", "level", "component1", "component2", "copy", "equals", "other", "getTextHeight", "getTextSize", "getTextWidth", "hashCode", "moveOffset", "saveOffsetToLocationY", "saveOffsetToTextSize", "setTextSize", "toString", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class Item {
        private final Rect bounds;
        private final Paint internalTextPaint;
        private boolean isSelected;
        private final RectF location;
        private float locationOffsetY;
        private float locationY;
        private final String text;
        private int textColor;
        private final Paint textPaint;
        private float textSize;
        private float textSizeOffset;

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final float ITEM_SPACING = UiExtensionsKt.getDp(56);
        private static final float REDUCE_TEXT_SIZE = UiExtensionsKt.getSp(4);
        private static final float MIN_TEXT_SIZE = UiExtensionsKt.getSp(24);
        private static final float MAX_TEXT_SIZE = UiExtensionsKt.getSp(44);

        public static /* synthetic */ Item copy$default(Item item, String str, Paint paint, int i, Object obj) {
            if ((i & 1) != 0) {
                str = item.text;
            }
            if ((i & 2) != 0) {
                paint = item.textPaint;
            }
            return item.copy(str, paint);
        }

        /* renamed from: component1, reason: from getter */
        public final String getText() {
            return this.text;
        }

        /* renamed from: component2, reason: from getter */
        public final Paint getTextPaint() {
            return this.textPaint;
        }

        public final Item copy(String text, Paint textPaint) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(textPaint, "textPaint");
            return new Item(text, textPaint);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Item)) {
                return false;
            }
            Item item = (Item) other;
            return Intrinsics.areEqual(this.text, item.text) && Intrinsics.areEqual(this.textPaint, item.textPaint);
        }

        public final RectF getLocation() {
            return this.location;
        }

        public final float getLocationOffsetY() {
            return this.locationOffsetY;
        }

        public final float getLocationY() {
            return this.locationY;
        }

        public final String getText() {
            return this.text;
        }

        public final int getTextColor() {
            return this.textColor;
        }

        public final Paint getTextPaint() {
            return this.textPaint;
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.textPaint.hashCode();
        }

        /* renamed from: isSelected, reason: from getter */
        public final boolean getIsSelected() {
            return this.isSelected;
        }

        public final float moveOffset() {
            return ITEM_SPACING;
        }

        public final void saveOffsetToLocationY() {
            this.locationY -= this.locationOffsetY;
            this.locationOffsetY = 0.0f;
        }

        public final void saveOffsetToTextSize() {
            this.textSize -= this.textSizeOffset;
            this.textSizeOffset = 0.0f;
        }

        public final void setLocationOffsetY(float f) {
            this.locationOffsetY = f;
        }

        public final void setLocationY(float f) {
            this.locationY = f;
        }

        public final void setSelected(boolean z) {
            this.isSelected = z;
        }

        public final void setTextColor(int i) {
            this.textColor = i;
        }

        public String toString() {
            return "Item(text=" + this.text + ", textPaint=" + this.textPaint + ')';
        }

        /* compiled from: NumberPickerView.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007¨\u0006\f"}, d2 = {"Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item$Companion;", "", "()V", "ITEM_SPACING", "", "MAX_TEXT_SIZE", "getMAX_TEXT_SIZE", "()F", "MIN_TEXT_SIZE", "getMIN_TEXT_SIZE", "REDUCE_TEXT_SIZE", "getREDUCE_TEXT_SIZE", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final float getREDUCE_TEXT_SIZE() {
                return Item.REDUCE_TEXT_SIZE;
            }

            public final float getMIN_TEXT_SIZE() {
                return Item.MIN_TEXT_SIZE;
            }

            public final float getMAX_TEXT_SIZE() {
                return Item.MAX_TEXT_SIZE;
            }
        }

        public Item(String text, Paint textPaint) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(textPaint, "textPaint");
            this.text = text;
            this.textPaint = textPaint;
            this.internalTextPaint = new Paint(textPaint);
            this.bounds = new Rect();
            this.textColor = -1;
            this.location = new RectF();
        }

        public final int getTextHeight() {
            return Math.abs(this.bounds.top) - Math.abs(this.bounds.bottom);
        }

        public final int getTextWidth() {
            return this.bounds.width();
        }

        public final void setTextSize(Bitmap icDelete, float textSize) {
            Intrinsics.checkNotNullParameter(icDelete, "icDelete");
            if (Intrinsics.areEqual(this.text, "-1")) {
                this.bounds.set(0, 0, icDelete.getWidth(), icDelete.getHeight());
                return;
            }
            this.textSize = textSize;
            this.internalTextPaint.setTextSize(RangesKt.coerceIn(textSize, MIN_TEXT_SIZE, MAX_TEXT_SIZE));
            Paint paint = this.internalTextPaint;
            String str = this.text;
            paint.getTextBounds(str, 0, str.length(), this.bounds);
        }

        public final float getTextSize() {
            return this.internalTextPaint.getTextSize();
        }

        public final void calculateTextSizeOffset(Bitmap icDelete, int level, float factor) {
            Intrinsics.checkNotNullParameter(icDelete, "icDelete");
            if (Intrinsics.areEqual(this.text, "-1")) {
                this.bounds.set(0, 0, icDelete.getWidth(), icDelete.getHeight());
                return;
            }
            float f = this.textSize;
            float f2 = MAX_TEXT_SIZE;
            float f3 = (f - (f2 - (level * REDUCE_TEXT_SIZE))) * factor;
            this.textSizeOffset = f3;
            this.internalTextPaint.setTextSize(RangesKt.coerceIn(f - f3, MIN_TEXT_SIZE, f2));
            Paint paint = this.internalTextPaint;
            String str = this.text;
            paint.getTextBounds(str, 0, str.length(), this.bounds);
        }

        public final void calculateLocationOffsetY(float factor) {
            this.locationOffsetY = factor * moveOffset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NumberPickerView.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J1\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\n\"\u0004\b\u0015\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\n¨\u0006\""}, d2 = {"Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;", "", "itemText", "", "cx", "", "cy", "radius", "(Ljava/lang/String;FFF)V", "getCx", "()F", "setCx", "(F)V", "getCy", "getItemText", "()Ljava/lang/String;", "offsetX", "getOffsetX", "setOffsetX", "offsetXTemp", "getOffsetXTemp", "setOffsetXTemp", "getRadius", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class ConfirmedCircleItemLocation {
        private float cx;
        private final float cy;
        private final String itemText;
        private float offsetX;
        private float offsetXTemp;
        private final float radius;

        public static /* synthetic */ ConfirmedCircleItemLocation copy$default(ConfirmedCircleItemLocation confirmedCircleItemLocation, String str, float f, float f2, float f3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = confirmedCircleItemLocation.itemText;
            }
            if ((i & 2) != 0) {
                f = confirmedCircleItemLocation.cx;
            }
            if ((i & 4) != 0) {
                f2 = confirmedCircleItemLocation.cy;
            }
            if ((i & 8) != 0) {
                f3 = confirmedCircleItemLocation.radius;
            }
            return confirmedCircleItemLocation.copy(str, f, f2, f3);
        }

        /* renamed from: component1, reason: from getter */
        public final String getItemText() {
            return this.itemText;
        }

        /* renamed from: component2, reason: from getter */
        public final float getCx() {
            return this.cx;
        }

        /* renamed from: component3, reason: from getter */
        public final float getCy() {
            return this.cy;
        }

        /* renamed from: component4, reason: from getter */
        public final float getRadius() {
            return this.radius;
        }

        public final ConfirmedCircleItemLocation copy(String itemText, float cx, float cy, float radius) {
            Intrinsics.checkNotNullParameter(itemText, "itemText");
            return new ConfirmedCircleItemLocation(itemText, cx, cy, radius);
        }

        public final float getCx() {
            return this.cx;
        }

        public final float getCy() {
            return this.cy;
        }

        public final String getItemText() {
            return this.itemText;
        }

        public final float getOffsetX() {
            return this.offsetX;
        }

        public final float getOffsetXTemp() {
            return this.offsetXTemp;
        }

        public final float getRadius() {
            return this.radius;
        }

        public final void setCx(float f) {
            this.cx = f;
        }

        public final void setOffsetX(float f) {
            this.offsetX = f;
        }

        public final void setOffsetXTemp(float f) {
            this.offsetXTemp = f;
        }

        public String toString() {
            return "ConfirmedCircleItemLocation(itemText=" + this.itemText + ", cx=" + this.cx + ", cy=" + this.cy + ", radius=" + this.radius + ')';
        }

        public ConfirmedCircleItemLocation(String itemText, float f, float f2, float f3) {
            Intrinsics.checkNotNullParameter(itemText, "itemText");
            this.itemText = itemText;
            this.cx = f;
            this.cy = f2;
            this.radius = f3;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
                return false;
            }
            Intrinsics.checkNotNull(other, "null cannot be cast to non-null type tech.rabbit.r1launcher.initstep.widget.NumberPickerView.ConfirmedCircleItemLocation");
            return Intrinsics.areEqual(this.itemText, ((ConfirmedCircleItemLocation) other).itemText);
        }

        public int hashCode() {
            return this.itemText.hashCode();
        }
    }

    private final Bitmap getIcScrollGuide() {
        return (Bitmap) this.icScrollGuide.getValue();
    }

    private final Bitmap getIcDelete() {
        return (Bitmap) this.icDelete.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getDrawBeginLocationYOnCanvas() {
        return getMeasuredHeight() * 0.64f;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (getMeasuredHeight() == 0) {
            return;
        }
        calculateSelectedItemAreaLocation();
        calculateInitItemsLocationYAndTextSize();
        calculateItemsLocation();
        calculateSelectedItem();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void calculateSelectedItemAreaLocation() {
        float f;
        float f2;
        float f3;
        float f4;
        float drawBeginLocationYOnCanvas = getDrawBeginLocationYOnCanvas();
        float f5 = this.confirmSelectedAreaScaleFactor;
        if (f5 > 0.0f && this.confirmSelectedAreaReversScaleFactor == 0.0f) {
            float measuredWidth = (getMeasuredWidth() - this.selectedAreaWidth) - this.selectedAreaMarginEnd;
            float f6 = -this.confirmSelectedAreaWidth;
            float f7 = this.confirmSelectedAreaScaleFactor;
            f3 = measuredWidth + (f6 * f7) + (this.confirmSelectedAreaTranslateXOffset * f7);
            float f8 = this.selectedAreaHeight;
            f = (drawBeginLocationYOnCanvas - (f8 / 2.0f)) + (((f8 / 2.0f) - (this.confirmSelectedAreaHeight / 2.0f)) * f7) + (f7 * this.confirmSelectedAreaTranslateYOffset);
            float measuredWidth2 = getMeasuredWidth() - this.selectedAreaMarginEnd;
            float f9 = this.confirmSelectedAreaScaleFactor;
            f4 = measuredWidth2 + (this.confirmSelectedAreaTranslateXOffset * f9);
            float f10 = this.selectedAreaHeight;
            f2 = drawBeginLocationYOnCanvas + (f10 / 2.0f) + ((-((f10 / 2.0f) - (this.confirmSelectedAreaHeight / 2.0f))) * f9) + (f9 * this.confirmSelectedAreaTranslateYOffset);
        } else if (f5 > 0.0f && this.confirmSelectedAreaReversScaleFactor > 0.0f) {
            float measuredWidth3 = (getMeasuredWidth() - this.selectedAreaWidth) - this.selectedAreaMarginEnd;
            float f11 = this.confirmSelectedAreaWidth;
            float f12 = this.confirmSelectedAreaScaleFactor;
            float f13 = this.confirmSelectedAreaTranslateXOffset;
            float f14 = this.confirmSelectedAreaReversScaleFactor;
            f3 = (((measuredWidth3 + ((-f11) * f12)) + (f12 * f13)) + (f11 * f14)) - (f14 * f13);
            float f15 = this.selectedAreaHeight;
            float f16 = this.confirmSelectedAreaHeight;
            f = ((((drawBeginLocationYOnCanvas - (f15 / 2.0f)) + (((f15 / 2.0f) - (f16 / 2.0f)) * f12)) + (f12 * this.confirmSelectedAreaTranslateYOffset)) + ((-((f15 / 2.0f) - (f16 / 2.0f))) * f14)) - (f14 * f13);
            float measuredWidth4 = getMeasuredWidth() - this.selectedAreaMarginEnd;
            float f17 = this.confirmSelectedAreaScaleFactor;
            float f18 = this.confirmSelectedAreaTranslateXOffset;
            float f19 = this.confirmSelectedAreaReversScaleFactor;
            f4 = (measuredWidth4 + (f17 * f18)) - (f19 * f18);
            float f20 = this.selectedAreaHeight;
            float f21 = this.confirmSelectedAreaHeight;
            f2 = ((((drawBeginLocationYOnCanvas + (f20 / 2.0f)) + ((-((f20 / 2.0f) - (f21 / 2.0f))) * f17)) + (f17 * this.confirmSelectedAreaTranslateYOffset)) + (((f20 / 2.0f) - (f21 / 2.0f)) * f19)) - (f19 * f18);
        } else {
            float f22 = this.icScrollGuideSelectedAreaScaleSizeOffset * this.icScrollGuideScaleFactor;
            float measuredWidth5 = ((getMeasuredWidth() - this.selectedAreaWidth) - this.selectedAreaMarginEnd) + f22;
            f = (drawBeginLocationYOnCanvas - (this.selectedAreaHeight / 2.0f)) + f22;
            float measuredWidth6 = (getMeasuredWidth() - this.selectedAreaMarginEnd) - f22;
            f2 = (drawBeginLocationYOnCanvas + (this.selectedAreaHeight / 2.0f)) - f22;
            f3 = measuredWidth5;
            f4 = measuredWidth6;
        }
        this.selectedAreaDrawRect.set(f3, f, f4, f2);
        this.icScrollGuideLocation.set((int) (this.selectedAreaDrawRect.centerX() - (this.icScrollGuideSize / 2.0f)), (int) (this.selectedAreaDrawRect.centerY() - (this.icScrollGuideSize / 2.0f)), (int) (this.selectedAreaDrawRect.centerX() + (this.icScrollGuideSize / 2.0f)), (int) (this.selectedAreaDrawRect.centerY() + (this.icScrollGuideSize / 2.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void calculateInitItemsLocationYAndTextSize() {
        Iterator<Item> it = this.items.iterator();
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Item next = it.next();
            next.setLocationY(f);
            Bitmap icDelete = getIcDelete();
            Intrinsics.checkNotNullExpressionValue(icDelete, "<get-icDelete>(...)");
            next.setTextSize(icDelete, Item.INSTANCE.getMAX_TEXT_SIZE() - (i2 * Item.INSTANCE.getREDUCE_TEXT_SIZE()));
            f += next.moveOffset();
            i2++;
            if (getDrawBeginLocationYOnCanvas() - f < (-next.moveOffset())) {
                f = -next.moveOffset();
                break;
            }
        }
        List<Item> list = this.items;
        for (Object obj : CollectionsKt.reversed(list.subList(i2, list.size()))) {
            int i3 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Item item = (Item) obj;
            item.setLocationY(f);
            Bitmap icDelete2 = getIcDelete();
            Intrinsics.checkNotNullExpressionValue(icDelete2, "<get-icDelete>(...)");
            item.setTextSize(icDelete2, Item.INSTANCE.getMAX_TEXT_SIZE() - (i3 * Item.INSTANCE.getREDUCE_TEXT_SIZE()));
            f -= item.moveOffset();
            i = i3;
        }
    }

    private final void calculateItemsLocationOffsetY(float factor) {
        Iterator<Item> it = this.items.iterator();
        while (it.hasNext()) {
            it.next().calculateLocationOffsetY(factor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void calculateItemsLocation() {
        float drawBeginLocationYOnCanvas = getDrawBeginLocationYOnCanvas();
        for (Item item : this.items) {
            if (this.confirmSelectedAreaScaleFactor > 0.0f && item.getIsSelected()) {
                RectF location = item.getLocation();
                float f = 2;
                float width = (this.selectedAreaDrawRect.left + (this.selectedAreaDrawRect.width() / f)) - (item.getTextWidth() / 2.0f);
                float f2 = this.confirmSelectedItemTextTranslateXOffset;
                float f3 = this.confirmSelectedAreaScaleFactor;
                float f4 = (width - (f2 * f3)) + (this.confirmSelectedAreaTranslateXOffset * f3);
                float textHeight = ((drawBeginLocationYOnCanvas - (item.getTextHeight() / 2.0f)) - item.getLocationY()) + item.getLocationOffsetY() + (this.confirmSelectedAreaTranslateYOffset * this.confirmSelectedAreaScaleFactor);
                float width2 = (this.selectedAreaDrawRect.right - (this.selectedAreaDrawRect.width() / f)) + (item.getTextWidth() / 2.0f);
                float f5 = this.confirmSelectedItemTextTranslateXOffset;
                float f6 = this.confirmSelectedAreaScaleFactor;
                location.set(f4, textHeight, (width2 - (f5 * f6)) + (this.confirmSelectedAreaTranslateXOffset * f6), (((item.getTextHeight() / 2.0f) + drawBeginLocationYOnCanvas) - item.getLocationY()) + item.getLocationOffsetY() + (this.confirmSelectedAreaTranslateYOffset * this.confirmSelectedAreaScaleFactor));
            } else {
                float f7 = 2;
                item.getLocation().set((this.selectedAreaDrawRect.left + (this.selectedAreaDrawRect.width() / f7)) - (item.getTextWidth() / 2.0f), ((drawBeginLocationYOnCanvas - (item.getTextHeight() / 2.0f)) - item.getLocationY()) + item.getLocationOffsetY(), (this.selectedAreaDrawRect.right - (this.selectedAreaDrawRect.width() / f7)) + (item.getTextWidth() / 2.0f), (((item.getTextHeight() / 2.0f) + drawBeginLocationYOnCanvas) - item.getLocationY()) + item.getLocationOffsetY());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void calculateSelectedItem() {
        if (this.confirmSelectedAreaScaleFactor > 0.0f) {
            return;
        }
        for (Item item : this.items) {
            item.setTextColor((item.getLocation().bottom < this.selectedAreaDrawRect.top || item.getLocation().bottom > this.selectedAreaDrawRect.bottom) ? -1 : ViewCompat.MEASURED_STATE_MASK);
            item.setSelected(this.selectedAreaDrawRect.top <= item.getLocation().top && this.selectedAreaDrawRect.bottom >= item.getLocation().bottom);
        }
    }

    public final boolean isNormalItemInSelectArea() {
        for (Item item : this.items) {
            if (item.getLocation().bottom >= this.selectedAreaDrawRect.top && item.getLocation().bottom <= this.selectedAreaDrawRect.bottom && !Intrinsics.areEqual(item.getText(), "-1") && isSelected()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        float f = this.icScrollGuideScaleFactor;
        if (f > 0.0f) {
            canvas.translate(0.0f, f * (-this.icScrollGuideScaleTranslateYOffset));
        }
        float f2 = this.confirmSelectedAreaScaleFactor;
        if (f2 > 0.0f && this.confirmSelectedAreaReversScaleFactor == 0.0f) {
            canvas.translate((-this.confirmSelectedAreaTranslateXOffset) * f2, f2 * (-this.confirmSelectedAreaTranslateYOffset));
        } else if (f2 > 0.0f) {
            float f3 = this.confirmSelectedAreaReversScaleFactor;
            if (f3 > 0.0f) {
                float f4 = this.confirmSelectedAreaTranslateXOffset;
                float f5 = ((-f4) * f2) + (f4 * f3);
                float f6 = this.confirmSelectedAreaTranslateYOffset;
                canvas.translate(f5, (f2 * (-f6)) + (f3 * f6));
            }
        }
        drawSelectedItemArea(canvas);
        drawItems(canvas);
        drawConfirmedItemsCircle(canvas);
        if (this.confirmedCircleItemCount < 3) {
            drawIndicator(canvas);
        }
    }

    private final void drawConfirmedItemsCircle(Canvas canvas) {
        for (ConfirmedCircleItemLocation confirmedCircleItemLocation : this.confirmedCircleItemsLocation) {
            float cx = confirmedCircleItemLocation.getCx();
            float f = this.confirmSelectedAreaTranslateXOffset;
            float offsetX = ((cx + (this.confirmSelectedAreaScaleFactor * f)) - (this.confirmSelectedAreaReversScaleFactor * f)) - (confirmedCircleItemLocation.getOffsetX() + confirmedCircleItemLocation.getOffsetXTemp());
            float cy = confirmedCircleItemLocation.getCy();
            float f2 = this.confirmSelectedAreaTranslateYOffset;
            canvas.drawCircle(offsetX, (cy + (this.confirmSelectedAreaScaleFactor * f2)) - (this.confirmSelectedAreaReversScaleFactor * f2), confirmedCircleItemLocation.getRadius(), this.confirmedCircleItemsPaint);
        }
    }

    private final void drawIndicator(Canvas canvas) {
        float measuredWidth = (getMeasuredWidth() - ((this.selectedAreaMarginEnd + UiExtensionsKt.getDp(4)) * this.confirmSelectedAreaScaleFactor)) + ((this.selectedAreaMarginEnd + UiExtensionsKt.getDp(4)) * this.confirmSelectedAreaReversScaleFactor);
        float drawBeginLocationYOnCanvas = getDrawBeginLocationYOnCanvas();
        float f = this.confirmSelectedAreaTranslateYOffset;
        canvas.drawCircle(measuredWidth, (drawBeginLocationYOnCanvas + (this.confirmSelectedAreaScaleFactor * f)) - (this.confirmSelectedAreaReversScaleFactor * f), this.indicatorRadius, this.indicatorPaint);
    }

    private final void drawSelectedItemArea(Canvas canvas) {
        RectF rectF = this.selectedAreaDrawRect;
        float f = this.selectedAreaCorners;
        canvas.drawRoundRect(rectF, f, f, this.selectedAreaPaint);
        float f2 = this.icScrollGuideScaleFactor;
        if (f2 > 0.0f) {
            this.icScrollGuidePaint.setAlpha((int) (f2 * 255.0f));
            canvas.drawBitmap(getIcScrollGuide(), (Rect) null, this.icScrollGuideLocation, this.icScrollGuidePaint);
        }
    }

    private final void drawItems(Canvas canvas) {
        for (Item item : this.items) {
            if (Intrinsics.areEqual(item.getText(), "-1")) {
                if (isSelected()) {
                    canvas.drawBitmap(getIcDelete(), item.getLocation().left, item.getLocation().bottom, this.textPaint);
                }
            } else {
                this.textPaint.setTextSize(item.getTextSize());
                this.textPaint.setColor(Color.argb((int) (255 - (this.confirmSelectedAreaScaleFactor * 255.0f)), Color.red(item.getTextColor()), Color.blue(item.getTextColor()), Color.green(item.getTextColor())));
                if (this.confirmSelectedAreaScaleFactor > 0.0f && item.getIsSelected()) {
                    this.textPaint.setTextSize(item.getTextSize() - (item.getTextSize() * this.confirmSelectedAreaScaleFactor));
                    this.textPaint.getTextBounds(item.getText(), 0, item.getText().length(), this.confirmSelectedItemTextBounds);
                    this.confirmWrapItemTextCirclePaint.setAlpha((int) (this.confirmSelectedAreaScaleFactor * 255.0f));
                    float width = (item.getLocation().left + ((this.confirmSelectedItemTextBounds.width() / 2.0f) - ((this.confirmSelectedItemTextBounds.width() / 2.0f) * this.confirmSelectedAreaScaleFactor))) - ((this.confirmedCircleSpacing * 2.0f) * this.confirmSelectedAreaReversScaleFactor);
                    float drawBeginLocationYOnCanvas = getDrawBeginLocationYOnCanvas();
                    float f = this.confirmSelectedAreaTranslateYOffset;
                    float f2 = this.confirmSelectedAreaScaleFactor;
                    float f3 = (drawBeginLocationYOnCanvas + (f * f2)) - (this.confirmSelectedAreaReversScaleFactor * this.confirmSelectedAreaTranslateXOffset);
                    float f4 = this.confirmWrapItemTextCircleRadius - (this.confirmWrapItemTextCanScaleCircleRadius * f2);
                    if (this.confirmedCircleItemCount != this.confirmedCircleItemsLocation.size() && this.confirmedCircleItemCount > 0) {
                        this.confirmedCircleItemsLocation.add(new ConfirmedCircleItemLocation(item.getText(), width, f3, f4));
                    }
                    canvas.drawCircle(width, f3, f4, this.confirmWrapItemTextCirclePaint);
                    canvas.drawText(item.getText(), item.getLocation().left - ((this.confirmSelectedItemTextBounds.width() / 2.0f) * this.confirmSelectedAreaScaleFactor), getDrawBeginLocationYOnCanvas() + (this.confirmSelectedItemTextBounds.height() / 2.0f) + (this.confirmSelectedAreaTranslateYOffset * this.confirmSelectedAreaScaleFactor), this.textPaint);
                } else {
                    canvas.drawText(item.getText(), item.getLocation().left, item.getLocation().bottom, this.textPaint);
                }
            }
        }
    }

    public final void onScrollDown() {
        if (this.isAnimationRunning || !isSelected()) {
            return;
        }
        this.isAnimationRunning = true;
        OnNumberPickerListener onNumberPickerListener = this.onNumberPickerListener;
        if (onNumberPickerListener != null) {
            onNumberPickerListener.onScroll();
        }
        moveToNext();
    }

    public final void onScrollUp() {
        if (this.isAnimationRunning || !isSelected()) {
            return;
        }
        this.isAnimationRunning = true;
        OnNumberPickerListener onNumberPickerListener = this.onNumberPickerListener;
        if (onNumberPickerListener != null) {
            onNumberPickerListener.onScroll();
        }
        moveToPrev();
    }

    public final boolean isAvailable() {
        return !this.isAnimationRunning && isSelected();
    }

    private final void moveToNext() {
        final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(350L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NumberPickerView.moveToNext$lambda$11$lambda$8(NumberPickerView.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(duration);
        duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$moveToNext$lambda$11$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                List<NumberPickerView.Item> list;
                float drawBeginLocationYOnCanvas;
                List list2;
                list = NumberPickerView.this.items;
                for (NumberPickerView.Item item : list) {
                    item.saveOffsetToLocationY();
                    item.saveOffsetToTextSize();
                    drawBeginLocationYOnCanvas = NumberPickerView.this.getDrawBeginLocationYOnCanvas();
                    if (drawBeginLocationYOnCanvas - item.getLocationY() > NumberPickerView.this.getMeasuredHeight()) {
                        float locationY = item.getLocationY();
                        list2 = NumberPickerView.this.items;
                        Iterator it = list2.iterator();
                        double d = BuildConfig.SENTRY_SAMPLE_RATE;
                        while (it.hasNext()) {
                            d += ((NumberPickerView.Item) it.next()).moveOffset();
                        }
                        item.setLocationY(locationY + ((float) d));
                    }
                }
                duration.removeAllUpdateListeners();
                duration.removeAllListeners();
                NumberPickerView.this.isAnimationRunning = false;
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void moveToNext$lambda$11$lambda$8(NumberPickerView this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        this$0.calculateItemsLocationOffsetY(floatValue);
        List sortedWith = CollectionsKt.sortedWith(this$0.items, new Comparator() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$moveToNext$lambda$11$lambda$8$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Float.valueOf(((NumberPickerView.Item) t).getLocationY()), Float.valueOf(((NumberPickerView.Item) t2).getLocationY()));
            }
        });
        Iterator it2 = sortedWith.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            int i2 = i + 1;
            Item item = (Item) it2.next();
            if (item.getLocation().bottom >= this$0.selectedAreaDrawRect.top && item.getLocation().bottom <= this$0.selectedAreaDrawRect.bottom) {
                break;
            } else {
                i = i2;
            }
        }
        if (i >= 0) {
            Item item2 = (Item) sortedWith.get(i);
            Bitmap icDelete = this$0.getIcDelete();
            Intrinsics.checkNotNullExpressionValue(icDelete, "<get-icDelete>(...)");
            item2.calculateTextSizeOffset(icDelete, 0, floatValue);
            int i3 = i - 1;
            int i4 = i + 1;
            while (true) {
                if (i3 < 0 && i4 >= sortedWith.size()) {
                    break;
                }
                if (i3 >= 0) {
                    Item item3 = (Item) sortedWith.get(i3);
                    Bitmap icDelete2 = this$0.getIcDelete();
                    Intrinsics.checkNotNullExpressionValue(icDelete2, "<get-icDelete>(...)");
                    item3.calculateTextSizeOffset(icDelete2, i - i3, floatValue);
                    i3--;
                }
                if (i4 < sortedWith.size()) {
                    Item item4 = (Item) sortedWith.get(i4);
                    Bitmap icDelete3 = this$0.getIcDelete();
                    Intrinsics.checkNotNullExpressionValue(icDelete3, "<get-icDelete>(...)");
                    item4.calculateTextSizeOffset(icDelete3, i4 - i, floatValue);
                    i4++;
                }
            }
        }
        this$0.calculateItemsLocation();
        this$0.calculateSelectedItem();
        this$0.invalidate();
    }

    private final void moveToPrev() {
        final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(350L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NumberPickerView.moveToPrev$lambda$16$lambda$13(NumberPickerView.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(duration);
        duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$moveToPrev$lambda$16$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                List<NumberPickerView.Item> list;
                float drawBeginLocationYOnCanvas;
                List list2;
                list = NumberPickerView.this.items;
                for (NumberPickerView.Item item : list) {
                    item.saveOffsetToLocationY();
                    item.saveOffsetToTextSize();
                    drawBeginLocationYOnCanvas = NumberPickerView.this.getDrawBeginLocationYOnCanvas();
                    if (drawBeginLocationYOnCanvas - item.getLocationY() < 0.0f) {
                        float locationY = item.getLocationY();
                        list2 = NumberPickerView.this.items;
                        Iterator it = list2.iterator();
                        double d = BuildConfig.SENTRY_SAMPLE_RATE;
                        while (it.hasNext()) {
                            d += ((NumberPickerView.Item) it.next()).moveOffset();
                        }
                        item.setLocationY(locationY - ((float) d));
                    }
                }
                duration.removeAllUpdateListeners();
                duration.removeAllListeners();
                NumberPickerView.this.isAnimationRunning = false;
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void moveToPrev$lambda$16$lambda$13(NumberPickerView this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        this$0.calculateItemsLocationOffsetY((-1.0f) * floatValue);
        List sortedWith = CollectionsKt.sortedWith(this$0.items, new Comparator() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$moveToPrev$lambda$16$lambda$13$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Float.valueOf(((NumberPickerView.Item) t).getLocationY()), Float.valueOf(((NumberPickerView.Item) t2).getLocationY()));
            }
        });
        Iterator it2 = sortedWith.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            int i2 = i + 1;
            Item item = (Item) it2.next();
            if (item.getLocation().bottom >= this$0.selectedAreaDrawRect.top && item.getLocation().bottom <= this$0.selectedAreaDrawRect.bottom) {
                break;
            } else {
                i = i2;
            }
        }
        if (i >= 0) {
            Item item2 = (Item) sortedWith.get(i);
            Bitmap icDelete = this$0.getIcDelete();
            Intrinsics.checkNotNullExpressionValue(icDelete, "<get-icDelete>(...)");
            item2.calculateTextSizeOffset(icDelete, 0, floatValue);
            int i3 = i - 1;
            int i4 = i + 1;
            while (true) {
                if (i3 < 0 && i4 >= sortedWith.size()) {
                    break;
                }
                if (i3 >= 0) {
                    Item item3 = (Item) sortedWith.get(i3);
                    Bitmap icDelete2 = this$0.getIcDelete();
                    Intrinsics.checkNotNullExpressionValue(icDelete2, "<get-icDelete>(...)");
                    item3.calculateTextSizeOffset(icDelete2, i - i3, floatValue);
                    i3--;
                }
                if (i4 < sortedWith.size()) {
                    Item item4 = (Item) sortedWith.get(i4);
                    Bitmap icDelete3 = this$0.getIcDelete();
                    Intrinsics.checkNotNullExpressionValue(icDelete3, "<get-icDelete>(...)");
                    item4.calculateTextSizeOffset(icDelete3, i4 - i, floatValue);
                    i4++;
                }
            }
        }
        this$0.calculateItemsLocation();
        this$0.calculateSelectedItem();
        this$0.invalidate();
    }

    public final void showSelectedConfirmAnimation() {
        if (this.isAnimationRunning || !isSelected()) {
            return;
        }
        this.isAnimationRunning = true;
        final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(350L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NumberPickerView.showSelectedConfirmAnimation$lambda$21$lambda$17(NumberPickerView.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(duration);
        duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$showSelectedConfirmAnimation$lambda$21$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
            
                r0 = r3.this$0.onNumberPickerListener;
             */
            @Override // android.animation.Animator.AnimatorListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onAnimationEnd(android.animation.Animator r4) {
                /*
                    r3 = this;
                    tech.rabbit.r1launcher.initstep.widget.NumberPickerView r4 = tech.rabbit.r1launcher.initstep.widget.NumberPickerView.this
                    java.util.List r4 = tech.rabbit.r1launcher.initstep.widget.NumberPickerView.access$getConfirmedCircleItemsLocation$p(r4)
                    java.util.Iterator r4 = r4.iterator()
                La:
                    boolean r0 = r4.hasNext()
                    if (r0 == 0) goto L27
                    java.lang.Object r0 = r4.next()
                    tech.rabbit.r1launcher.initstep.widget.NumberPickerView$ConfirmedCircleItemLocation r0 = (tech.rabbit.r1launcher.initstep.widget.NumberPickerView.ConfirmedCircleItemLocation) r0
                    float r1 = r0.getOffsetX()
                    float r2 = r0.getOffsetXTemp()
                    float r1 = r1 + r2
                    r0.setOffsetX(r1)
                    r1 = 0
                    r0.setOffsetXTemp(r1)
                    goto La
                L27:
                    tech.rabbit.r1launcher.initstep.widget.NumberPickerView r4 = tech.rabbit.r1launcher.initstep.widget.NumberPickerView.this
                    java.util.List r4 = tech.rabbit.r1launcher.initstep.widget.NumberPickerView.access$getItems$p(r4)
                    java.lang.Iterable r4 = (java.lang.Iterable) r4
                    java.util.Iterator r4 = r4.iterator()
                L33:
                    boolean r0 = r4.hasNext()
                    if (r0 == 0) goto L47
                    java.lang.Object r0 = r4.next()
                    r1 = r0
                    tech.rabbit.r1launcher.initstep.widget.NumberPickerView$Item r1 = (tech.rabbit.r1launcher.initstep.widget.NumberPickerView.Item) r1
                    boolean r1 = r1.getIsSelected()
                    if (r1 == 0) goto L33
                    goto L48
                L47:
                    r0 = 0
                L48:
                    tech.rabbit.r1launcher.initstep.widget.NumberPickerView$Item r0 = (tech.rabbit.r1launcher.initstep.widget.NumberPickerView.Item) r0
                    if (r0 == 0) goto L5d
                    java.lang.String r4 = r0.getText()
                    if (r4 == 0) goto L5d
                    tech.rabbit.r1launcher.initstep.widget.NumberPickerView r0 = tech.rabbit.r1launcher.initstep.widget.NumberPickerView.this
                    tech.rabbit.r1launcher.initstep.widget.NumberPickerView$OnNumberPickerListener r0 = tech.rabbit.r1launcher.initstep.widget.NumberPickerView.access$getOnNumberPickerListener$p(r0)
                    if (r0 == 0) goto L5d
                    r0.onConfirmItem(r4)
                L5d:
                    android.animation.ValueAnimator r4 = r2
                    r4.removeAllUpdateListeners()
                    android.animation.ValueAnimator r3 = r2
                    r3.removeAllListeners()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$showSelectedConfirmAnimation$lambda$21$$inlined$addListener$default$1.onAnimationEnd(android.animation.Animator):void");
            }
        });
        duration.start();
        final ValueAnimator duration2 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(350L);
        duration2.setStartDelay(350L);
        duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NumberPickerView.showSelectedConfirmAnimation$lambda$25$lambda$22(NumberPickerView.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(duration2);
        duration2.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i;
                List<NumberPickerView.ConfirmedCircleItemLocation> list;
                i = NumberPickerView.this.confirmedCircleItemCount;
                NumberPickerView.this.confirmedCircleItemCount = i + 1;
                list = NumberPickerView.this.confirmedCircleItemsLocation;
                for (NumberPickerView.ConfirmedCircleItemLocation confirmedCircleItemLocation : list) {
                    confirmedCircleItemLocation.setOffsetX(confirmedCircleItemLocation.getOffsetX() + confirmedCircleItemLocation.getOffsetXTemp());
                    confirmedCircleItemLocation.setOffsetXTemp(0.0f);
                }
                NumberPickerView numberPickerView = NumberPickerView.this;
                final NumberPickerView numberPickerView2 = NumberPickerView.this;
                numberPickerView.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        NumberPickerView.this.confirmSelectedAreaScaleFactor = 0.0f;
                        NumberPickerView.this.confirmSelectedAreaReversScaleFactor = 0.0f;
                        NumberPickerView.this.calculateSelectedItemAreaLocation();
                        NumberPickerView.this.calculateInitItemsLocationYAndTextSize();
                        NumberPickerView.this.calculateItemsLocation();
                        NumberPickerView.this.calculateSelectedItem();
                        NumberPickerView.this.invalidate();
                        NumberPickerView.this.isAnimationRunning = false;
                    }
                }, 50L);
                duration2.removeAllUpdateListeners();
                duration2.removeAllListeners();
            }
        });
        duration2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSelectedConfirmAnimation$lambda$21$lambda$17(NumberPickerView this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.confirmSelectedAreaScaleFactor = ((Float) animatedValue).floatValue();
        for (ConfirmedCircleItemLocation confirmedCircleItemLocation : this$0.confirmedCircleItemsLocation) {
            Object animatedValue2 = it.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
            confirmedCircleItemLocation.setOffsetXTemp(((Float) animatedValue2).floatValue() * this$0.confirmedCircleSpacing);
        }
        this$0.calculateSelectedItemAreaLocation();
        this$0.calculateItemsLocation();
        this$0.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSelectedConfirmAnimation$lambda$25$lambda$22(NumberPickerView this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.confirmSelectedAreaReversScaleFactor = ((Float) animatedValue).floatValue();
        for (ConfirmedCircleItemLocation confirmedCircleItemLocation : this$0.confirmedCircleItemsLocation) {
            Object animatedValue2 = it.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
            confirmedCircleItemLocation.setOffsetXTemp(((Float) animatedValue2).floatValue() * this$0.confirmedCircleSpacing);
        }
        this$0.calculateSelectedItemAreaLocation();
        this$0.invalidate();
    }

    private final void showNoSelectedConfirmAnimation() {
        final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f, 0.0f).setDuration(350L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NumberPickerView.showNoSelectedConfirmAnimation$lambda$28$lambda$26(NumberPickerView.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(duration);
        duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$showNoSelectedConfirmAnimation$lambda$28$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                List<NumberPickerView.ConfirmedCircleItemLocation> list;
                list = NumberPickerView.this.confirmedCircleItemsLocation;
                for (NumberPickerView.ConfirmedCircleItemLocation confirmedCircleItemLocation : list) {
                    confirmedCircleItemLocation.setOffsetX(confirmedCircleItemLocation.getOffsetX() + confirmedCircleItemLocation.getOffsetXTemp());
                    confirmedCircleItemLocation.setOffsetXTemp(0.0f);
                }
                duration.removeAllUpdateListeners();
                duration.removeAllListeners();
                NumberPickerView.this.isAnimationRunning = false;
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showNoSelectedConfirmAnimation$lambda$28$lambda$26(NumberPickerView this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.icScrollGuideScaleFactor = ((Float) animatedValue).floatValue();
        this$0.calculateSelectedItemAreaLocation();
        this$0.calculateInitItemsLocationYAndTextSize();
        this$0.calculateItemsLocation();
        this$0.invalidate();
    }

    public final void onDelete() {
        if (this.confirmedCircleItemCount == 0 || this.isAnimationRunning) {
            return;
        }
        this.isAnimationRunning = true;
        final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(350L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NumberPickerView.onDelete$lambda$32$lambda$29(NumberPickerView.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(duration);
        duration.addListener(new Animator.AnimatorListener(duration, this) { // from class: tech.rabbit.r1launcher.initstep.widget.NumberPickerView$onDelete$lambda$32$$inlined$addListener$default$1
            final /* synthetic */ ValueAnimator $this_apply$inlined;

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                List<NumberPickerView.ConfirmedCircleItemLocation> list;
                list = NumberPickerView.this.confirmedCircleItemsLocation;
                for (NumberPickerView.ConfirmedCircleItemLocation confirmedCircleItemLocation : list) {
                    confirmedCircleItemLocation.setOffsetX(confirmedCircleItemLocation.getOffsetX() + confirmedCircleItemLocation.getOffsetXTemp());
                    confirmedCircleItemLocation.setOffsetXTemp(0.0f);
                }
                this.$this_apply$inlined.removeAllUpdateListeners();
                this.$this_apply$inlined.removeAllListeners();
                NumberPickerView.this.isAnimationRunning = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                int i;
                List list;
                i = NumberPickerView.this.confirmedCircleItemCount;
                NumberPickerView.this.confirmedCircleItemCount = i - 1;
                list = NumberPickerView.this.confirmedCircleItemsLocation;
                CollectionsKt.removeLast(list);
                NumberPickerView.this.confirmSelectedAreaScaleFactor = 0.0f;
                NumberPickerView.this.confirmSelectedAreaReversScaleFactor = 0.0f;
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDelete$lambda$32$lambda$29(NumberPickerView this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        for (ConfirmedCircleItemLocation confirmedCircleItemLocation : this$0.confirmedCircleItemsLocation) {
            Object animatedValue = it.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            confirmedCircleItemLocation.setOffsetXTemp((-((Float) animatedValue).floatValue()) * this$0.confirmedCircleSpacing * 2.0f);
        }
        this$0.calculateSelectedItemAreaLocation();
        this$0.calculateInitItemsLocationYAndTextSize();
        this$0.calculateItemsLocation();
        this$0.calculateSelectedItem();
        this$0.invalidate();
    }

    public final void reset() {
        this.confirmSelectedAreaScaleFactor = 0.0f;
        this.confirmSelectedAreaReversScaleFactor = 0.0f;
        this.confirmedCircleItemCount = 0;
        this.confirmedCircleItemsLocation.clear();
        calculateSelectedItemAreaLocation();
        calculateInitItemsLocationYAndTextSize();
        calculateItemsLocation();
        calculateSelectedItem();
        invalidate();
    }

    public final void resetCacheData() {
        this.confirmSelectedAreaScaleFactor = 0.0f;
        this.confirmSelectedAreaReversScaleFactor = 0.0f;
        this.confirmedCircleItemCount = 0;
        this.confirmedCircleItemsLocation.clear();
    }

    @Override // android.view.View
    public void setSelected(boolean selected) {
        if (selected) {
            Paint paint = this.selectedAreaPaint;
            paint.setColor(Color.parseColor("#FF4D00"));
            paint.setStyle(Paint.Style.FILL);
        } else {
            Paint paint2 = this.selectedAreaPaint;
            paint2.setColor(-1);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(UiExtensionsKt.getDp(3));
        }
        super.setSelected(selected);
    }

    public final boolean isDeleteItem() {
        for (Item item : this.items) {
            if (item.getLocation().bottom >= this.selectedAreaDrawRect.top && item.getLocation().bottom <= this.selectedAreaDrawRect.bottom && Intrinsics.areEqual(item.getText(), "-1") && isSelected()) {
                return true;
            }
        }
        return false;
    }
}
