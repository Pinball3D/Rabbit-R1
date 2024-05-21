package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.R;
import com.journeyapps.barcodescanner.CameraPreview;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ViewfinderView extends View {
    protected static final long ANIMATION_DELAY = 80;
    protected static final int CURRENT_POINT_OPACITY = 160;
    protected static final int MAX_RESULT_POINTS = 20;
    protected static final int POINT_SIZE = 6;
    protected static final int[] SCANNER_ALPHA = {0, 64, 128, 192, 255, 192, 128, 64};
    protected static final String TAG = "ViewfinderView";
    protected CameraPreview cameraPreview;
    protected Rect framingRect;
    protected final int laserColor;
    protected boolean laserVisibility;
    protected List<ResultPoint> lastPossibleResultPoints;
    protected int maskColor;
    protected final Paint paint;
    protected List<ResultPoint> possibleResultPoints;
    protected Size previewSize;
    protected Bitmap resultBitmap;
    protected final int resultColor;
    protected final int resultPointColor;
    protected int scannerAlpha;

    public void setLaserVisibility(boolean z) {
        this.laserVisibility = z;
    }

    public void setMaskColor(int i) {
        this.maskColor = i;
    }

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint(1);
        Resources resources = getResources();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.zxing_finder);
        this.maskColor = obtainStyledAttributes.getColor(R.styleable.zxing_finder_zxing_viewfinder_mask, resources.getColor(R.color.zxing_viewfinder_mask));
        this.resultColor = obtainStyledAttributes.getColor(R.styleable.zxing_finder_zxing_result_view, resources.getColor(R.color.zxing_result_view));
        this.laserColor = obtainStyledAttributes.getColor(R.styleable.zxing_finder_zxing_viewfinder_laser, resources.getColor(R.color.zxing_viewfinder_laser));
        this.resultPointColor = obtainStyledAttributes.getColor(R.styleable.zxing_finder_zxing_possible_result_points, resources.getColor(R.color.zxing_possible_result_points));
        this.laserVisibility = obtainStyledAttributes.getBoolean(R.styleable.zxing_finder_zxing_viewfinder_laser_visibility, true);
        obtainStyledAttributes.recycle();
        this.scannerAlpha = 0;
        this.possibleResultPoints = new ArrayList(20);
        this.lastPossibleResultPoints = new ArrayList(20);
    }

    public void setCameraPreview(CameraPreview cameraPreview) {
        this.cameraPreview = cameraPreview;
        cameraPreview.addStateListener(new CameraPreview.StateListener() { // from class: com.journeyapps.barcodescanner.ViewfinderView.1
            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraClosed() {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraError(Exception exc) {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStarted() {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStopped() {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewSized() {
                ViewfinderView.this.refreshSizes();
                ViewfinderView.this.invalidate();
            }
        });
    }

    protected void refreshSizes() {
        CameraPreview cameraPreview = this.cameraPreview;
        if (cameraPreview == null) {
            return;
        }
        Rect framingRect = cameraPreview.getFramingRect();
        Size previewSize = this.cameraPreview.getPreviewSize();
        if (framingRect == null || previewSize == null) {
            return;
        }
        this.framingRect = framingRect;
        this.previewSize = previewSize;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Size size;
        refreshSizes();
        Rect rect = this.framingRect;
        if (rect == null || (size = this.previewSize) == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        this.paint.setColor(this.resultBitmap != null ? this.resultColor : this.maskColor);
        float f = width;
        canvas.drawRect(0.0f, 0.0f, f, rect.top, this.paint);
        canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, this.paint);
        canvas.drawRect(rect.right + 1, rect.top, f, rect.bottom + 1, this.paint);
        canvas.drawRect(0.0f, rect.bottom + 1, f, height, this.paint);
        if (this.resultBitmap != null) {
            this.paint.setAlpha(CURRENT_POINT_OPACITY);
            canvas.drawBitmap(this.resultBitmap, (Rect) null, rect, this.paint);
            return;
        }
        if (this.laserVisibility) {
            this.paint.setColor(this.laserColor);
            Paint paint = this.paint;
            int[] iArr = SCANNER_ALPHA;
            paint.setAlpha(iArr[this.scannerAlpha]);
            this.scannerAlpha = (this.scannerAlpha + 1) % iArr.length;
            int height2 = (rect.height() / 2) + rect.top;
            canvas.drawRect(rect.left + 2, height2 - 1, rect.right - 1, height2 + 2, this.paint);
        }
        float width2 = getWidth() / size.width;
        float height3 = getHeight() / size.height;
        if (!this.lastPossibleResultPoints.isEmpty()) {
            this.paint.setAlpha(80);
            this.paint.setColor(this.resultPointColor);
            for (ResultPoint resultPoint : this.lastPossibleResultPoints) {
                canvas.drawCircle((int) (resultPoint.getX() * width2), (int) (resultPoint.getY() * height3), 3.0f, this.paint);
            }
            this.lastPossibleResultPoints.clear();
        }
        if (!this.possibleResultPoints.isEmpty()) {
            this.paint.setAlpha(CURRENT_POINT_OPACITY);
            this.paint.setColor(this.resultPointColor);
            for (ResultPoint resultPoint2 : this.possibleResultPoints) {
                canvas.drawCircle((int) (resultPoint2.getX() * width2), (int) (resultPoint2.getY() * height3), 6.0f, this.paint);
            }
            List<ResultPoint> list = this.possibleResultPoints;
            List<ResultPoint> list2 = this.lastPossibleResultPoints;
            this.possibleResultPoints = list2;
            this.lastPossibleResultPoints = list;
            list2.clear();
        }
        postInvalidateDelayed(ANIMATION_DELAY, rect.left - 6, rect.top - 6, rect.right + 6, rect.bottom + 6);
    }

    public void drawViewfinder() {
        Bitmap bitmap = this.resultBitmap;
        this.resultBitmap = null;
        if (bitmap != null) {
            bitmap.recycle();
        }
        invalidate();
    }

    public void drawResultBitmap(Bitmap bitmap) {
        this.resultBitmap = bitmap;
        invalidate();
    }

    public void addPossibleResultPoint(ResultPoint resultPoint) {
        if (this.possibleResultPoints.size() < 20) {
            this.possibleResultPoints.add(resultPoint);
        }
    }
}
