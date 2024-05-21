package com.journeyapps.barcodescanner;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class BarcodeResult {
    private static final float PREVIEW_DOT_WIDTH = 10.0f;
    private static final float PREVIEW_LINE_WIDTH = 4.0f;
    protected Result mResult;
    private final int mScaleFactor = 2;
    protected SourceData sourceData;

    public int getBitmapScaleFactor() {
        return 2;
    }

    public Result getResult() {
        return this.mResult;
    }

    public BarcodeResult(Result result, SourceData sourceData) {
        this.mResult = result;
        this.sourceData = sourceData;
    }

    private static void drawLine(Canvas canvas, Paint paint, ResultPoint resultPoint, ResultPoint resultPoint2, int i) {
        if (resultPoint == null || resultPoint2 == null) {
            return;
        }
        float f = i;
        canvas.drawLine(resultPoint.getX() / f, resultPoint.getY() / f, resultPoint2.getX() / f, resultPoint2.getY() / f, paint);
    }

    public Bitmap getBitmap() {
        return this.sourceData.getBitmap(null, 2);
    }

    public List<ResultPoint> getTransformedResultPoints() {
        if (this.mResult.getResultPoints() == null) {
            return Collections.emptyList();
        }
        return transformResultPoints(Arrays.asList(this.mResult.getResultPoints()), this.sourceData);
    }

    public Bitmap getBitmapWithResultPoints(int i) {
        Bitmap bitmap = getBitmap();
        List<ResultPoint> transformedResultPoints = getTransformedResultPoints();
        if (transformedResultPoints.isEmpty() || bitmap == null) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        Paint paint = new Paint();
        paint.setColor(i);
        if (transformedResultPoints.size() == 2) {
            paint.setStrokeWidth(4.0f);
            drawLine(canvas, paint, transformedResultPoints.get(0), transformedResultPoints.get(1), 2);
        } else if (transformedResultPoints.size() == 4 && (this.mResult.getBarcodeFormat() == BarcodeFormat.UPC_A || this.mResult.getBarcodeFormat() == BarcodeFormat.EAN_13)) {
            drawLine(canvas, paint, transformedResultPoints.get(0), transformedResultPoints.get(1), 2);
            drawLine(canvas, paint, transformedResultPoints.get(2), transformedResultPoints.get(3), 2);
        } else {
            paint.setStrokeWidth(10.0f);
            for (ResultPoint resultPoint : transformedResultPoints) {
                if (resultPoint != null) {
                    canvas.drawPoint(resultPoint.getX() / 2.0f, resultPoint.getY() / 2.0f, paint);
                }
            }
        }
        return createBitmap;
    }

    public String getText() {
        return this.mResult.getText();
    }

    public byte[] getRawBytes() {
        return this.mResult.getRawBytes();
    }

    public ResultPoint[] getResultPoints() {
        return this.mResult.getResultPoints();
    }

    public BarcodeFormat getBarcodeFormat() {
        return this.mResult.getBarcodeFormat();
    }

    public Map<ResultMetadataType, Object> getResultMetadata() {
        return this.mResult.getResultMetadata();
    }

    public long getTimestamp() {
        return this.mResult.getTimestamp();
    }

    public String toString() {
        return this.mResult.getText();
    }

    public static List<ResultPoint> transformResultPoints(List<ResultPoint> list, SourceData sourceData) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<ResultPoint> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(sourceData.translateResultPoint(it.next()));
        }
        return arrayList;
    }
}
