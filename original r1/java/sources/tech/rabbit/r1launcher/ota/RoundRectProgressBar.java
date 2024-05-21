package tech.rabbit.r1launcher.ota;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;

/* compiled from: RoundRectProgressBar.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J(\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0010H\u0014J\u000e\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;", "Landroid/view/View;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "cornerRadius", "", "drawPath", "Landroid/graphics/Path;", "paint", "Landroid/graphics/Paint;", "pathMeasure", "Landroid/graphics/PathMeasure;", NotificationCompat.CATEGORY_PROGRESS, "", "progressPath", "rectF", "Landroid/graphics/RectF;", "getClockRoundRectPath", "rect", "onDraw", "", "canvas", "Landroid/graphics/Canvas;", "onSizeChanged", "w", CmcdHeadersFactory.STREAMING_FORMAT_HLS, "oldw", "oldh", "setProgress", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RoundRectProgressBar extends View {
    public static final int $stable = 8;
    private final float cornerRadius;
    private Path drawPath;
    private final Paint paint;
    private PathMeasure pathMeasure;
    private int progress;
    private Path progressPath;
    private RectF rectF;

    public RoundRectProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.paint = paint;
        this.rectF = new RectF();
        this.drawPath = new Path();
        this.cornerRadius = 24.0f;
        Intrinsics.checkNotNull(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RoundRectProgressBar);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.progress = obtainStyledAttributes.getInt(R.styleable.RoundRectProgressBar_progress, 0);
        obtainStyledAttributes.recycle();
        paint.setStrokeWidth(16.0f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        float f = 0;
        float f2 = 2;
        this.rectF.set((this.paint.getStrokeWidth() / f2) + f, f + (this.paint.getStrokeWidth() / f2), w - (this.paint.getStrokeWidth() / f2), h - (this.paint.getStrokeWidth() / f2));
        this.progressPath = getClockRoundRectPath(this.rectF);
        this.pathMeasure = new PathMeasure(this.progressPath, false);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        this.paint.setColor(Color.parseColor("#414141"));
        RectF rectF = this.rectF;
        float f = this.cornerRadius;
        canvas.drawRoundRect(rectF, f, f, this.paint);
        PathMeasure pathMeasure = this.pathMeasure;
        if (pathMeasure != null) {
            float length = (pathMeasure.getLength() * this.progress) / 100;
            this.drawPath.reset();
            pathMeasure.getSegment(0.0f, length, this.drawPath, true);
            this.paint.setColor(Color.parseColor("#FF4D06"));
            canvas.drawPath(this.drawPath, this.paint);
        }
    }

    private final Path getClockRoundRectPath(RectF rect) {
        Path path = new Path();
        path.moveTo(rect.centerX(), rect.bottom);
        path.lineTo(rect.right - this.cornerRadius, rect.bottom);
        float f = 2;
        path.arcTo(new RectF(rect.right - (this.cornerRadius * f), rect.bottom - (this.cornerRadius * f), rect.right, rect.bottom), 90.0f, -90.0f);
        path.lineTo(rect.right, rect.top + this.cornerRadius);
        path.arcTo(new RectF(rect.right - (this.cornerRadius * f), rect.top, rect.right, rect.top + (this.cornerRadius * f)), 0.0f, -90.0f);
        path.lineTo(rect.left + this.cornerRadius, rect.top);
        path.arcTo(new RectF(rect.left, rect.top, rect.left + (this.cornerRadius * f), rect.top + (this.cornerRadius * f)), -90.0f, -90.0f);
        path.lineTo(rect.left, rect.bottom - this.cornerRadius);
        path.arcTo(new RectF(rect.left, rect.bottom - (this.cornerRadius * f), rect.left + (f * this.cornerRadius), rect.bottom), 180.0f, -90.0f);
        path.lineTo(rect.centerX(), rect.bottom);
        path.close();
        return path;
    }

    public final void setProgress(int progress) {
        this.progress = progress;
        invalidate();
    }
}
