package io.flutter.embedding.android;

import android.R;
import android.content.Context;
import android.graphics.Matrix;
import android.util.TypedValue;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes3.dex */
public class AndroidTouchProcessor {
    static final int BYTES_PER_FIELD = 8;
    static final int DEFAULT_HORIZONTAL_SCROLL_FACTOR = 48;
    static final int DEFAULT_VERTICAL_SCROLL_FACTOR = 48;
    private static final Matrix IDENTITY_TRANSFORM = new Matrix();
    private static final int IMPLICIT_VIEW_ID = 0;
    private static final int POINTER_DATA_FIELD_COUNT = 36;
    private static final int POINTER_DATA_FLAG_BATCHED = 1;
    private static final String TAG = "AndroidTouchProcessor";
    private int cachedVerticalScrollFactor;
    private final FlutterRenderer renderer;
    private final boolean trackMotionEvents;
    private final Map<Integer, float[]> ongoingPans = new HashMap();
    private final MotionEventTracker motionEventTracker = MotionEventTracker.getInstance();

    /* loaded from: classes3.dex */
    public @interface PointerChange {
        public static final int ADD = 1;
        public static final int CANCEL = 0;
        public static final int DOWN = 4;
        public static final int HOVER = 3;
        public static final int MOVE = 5;
        public static final int PAN_ZOOM_END = 9;
        public static final int PAN_ZOOM_START = 7;
        public static final int PAN_ZOOM_UPDATE = 8;
        public static final int REMOVE = 2;
        public static final int UP = 6;
    }

    /* loaded from: classes3.dex */
    public @interface PointerDeviceKind {
        public static final int INVERTED_STYLUS = 3;
        public static final int MOUSE = 1;
        public static final int STYLUS = 2;
        public static final int TOUCH = 0;
        public static final int TRACKPAD = 4;
        public static final int UNKNOWN = 5;
    }

    /* loaded from: classes3.dex */
    public @interface PointerSignalKind {
        public static final int NONE = 0;
        public static final int SCALE = 3;
        public static final int SCROLL = 1;
        public static final int SCROLL_INERTIA_CANCEL = 2;
        public static final int UNKNOWN = 4;
    }

    private int getPointerChangeForAction(int i) {
        if (i == 0) {
            return 4;
        }
        if (i == 1) {
            return 6;
        }
        if (i == 5) {
            return 4;
        }
        if (i == 6) {
            return 6;
        }
        if (i == 2) {
            return 5;
        }
        if (i == 7) {
            return 3;
        }
        if (i == 3) {
            return 0;
        }
        return i == 8 ? 3 : -1;
    }

    private int getPointerChangeForPanZoom(int i) {
        if (i == 4) {
            return 7;
        }
        if (i == 5) {
            return 8;
        }
        return (i == 6 || i == 0) ? 9 : -1;
    }

    private int getPointerDeviceTypeForToolType(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 2;
        }
        if (i != 3) {
            return i != 4 ? 5 : 3;
        }
        return 1;
    }

    public AndroidTouchProcessor(FlutterRenderer flutterRenderer, boolean z) {
        this.renderer = flutterRenderer;
        this.trackMotionEvents = z;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return onTouchEvent(motionEvent, IDENTITY_TRANSFORM);
    }

    public boolean onTouchEvent(MotionEvent motionEvent, Matrix matrix) {
        int pointerCount = motionEvent.getPointerCount();
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(pointerCount * 288);
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        int actionMasked = motionEvent.getActionMasked();
        int pointerChangeForAction = getPointerChangeForAction(motionEvent.getActionMasked());
        boolean z = actionMasked == 0 || actionMasked == 5;
        boolean z2 = !z && (actionMasked == 1 || actionMasked == 6);
        if (z) {
            addPointerForIndex(motionEvent, motionEvent.getActionIndex(), pointerChangeForAction, 0, matrix, allocateDirect);
        } else if (z2) {
            for (int i = 0; i < pointerCount; i++) {
                if (i != motionEvent.getActionIndex() && motionEvent.getToolType(i) == 1) {
                    addPointerForIndex(motionEvent, i, 5, 1, matrix, allocateDirect);
                }
            }
            addPointerForIndex(motionEvent, motionEvent.getActionIndex(), pointerChangeForAction, 0, matrix, allocateDirect);
        } else {
            for (int i2 = 0; i2 < pointerCount; i2++) {
                addPointerForIndex(motionEvent, i2, pointerChangeForAction, 0, matrix, allocateDirect);
            }
        }
        if (allocateDirect.position() % 288 != 0) {
            throw new AssertionError("Packet position is not on field boundary");
        }
        this.renderer.dispatchPointerDataPacket(allocateDirect, allocateDirect.position());
        return true;
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent, Context context) {
        boolean isFromSource = motionEvent.isFromSource(2);
        boolean z = motionEvent.getActionMasked() == 7 || motionEvent.getActionMasked() == 8;
        if (!isFromSource || !z) {
            return false;
        }
        int pointerChangeForAction = getPointerChangeForAction(motionEvent.getActionMasked());
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(motionEvent.getPointerCount() * 288);
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        addPointerForIndex(motionEvent, motionEvent.getActionIndex(), pointerChangeForAction, 0, IDENTITY_TRANSFORM, allocateDirect, context);
        if (allocateDirect.position() % 288 != 0) {
            throw new AssertionError("Packet position is not on field boundary.");
        }
        this.renderer.dispatchPointerDataPacket(allocateDirect, allocateDirect.position());
        return true;
    }

    private void addPointerForIndex(MotionEvent motionEvent, int i, int i2, int i3, Matrix matrix, ByteBuffer byteBuffer) {
        addPointerForIndex(motionEvent, i, i2, i3, matrix, byteBuffer, null);
    }

    private void addPointerForIndex(MotionEvent motionEvent, int i, int i2, int i3, Matrix matrix, ByteBuffer byteBuffer, Context context) {
        long j;
        int i4;
        double d;
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        InputDevice.MotionRange motionRange;
        int i5 = -1;
        if (i2 == -1) {
            return;
        }
        int pointerId = motionEvent.getPointerId(i);
        int pointerDeviceTypeForToolType = getPointerDeviceTypeForToolType(motionEvent.getToolType(i));
        float[] fArr = {motionEvent.getX(i), motionEvent.getY(i)};
        matrix.mapPoints(fArr);
        if (pointerDeviceTypeForToolType == 1) {
            j = motionEvent.getButtonState() & 31;
            if (j == 0 && motionEvent.getSource() == 8194 && i2 == 4) {
                this.ongoingPans.put(Integer.valueOf(pointerId), fArr);
            }
        } else {
            j = pointerDeviceTypeForToolType == 2 ? (motionEvent.getButtonState() >> 4) & 15 : 0L;
        }
        boolean containsKey = this.ongoingPans.containsKey(Integer.valueOf(pointerId));
        if (containsKey) {
            int pointerChangeForPanZoom = getPointerChangeForPanZoom(i2);
            if (pointerChangeForPanZoom == -1) {
                return;
            } else {
                i5 = pointerChangeForPanZoom;
            }
        }
        long id = this.trackMotionEvents ? this.motionEventTracker.track(motionEvent).getId() : 0L;
        int i6 = motionEvent.getActionMasked() == 8 ? 1 : 0;
        int i7 = i5;
        long eventTime = motionEvent.getEventTime() * 1000;
        byteBuffer.putLong(id);
        byteBuffer.putLong(eventTime);
        if (containsKey) {
            i4 = i7;
            byteBuffer.putLong(i4);
            byteBuffer.putLong(4L);
        } else {
            i4 = i7;
            byteBuffer.putLong(i2);
            byteBuffer.putLong(pointerDeviceTypeForToolType);
        }
        byteBuffer.putLong(i6);
        byteBuffer.putLong(pointerId);
        byteBuffer.putLong(0L);
        if (containsKey) {
            float[] fArr2 = this.ongoingPans.get(Integer.valueOf(pointerId));
            byteBuffer.putDouble(fArr2[0]);
            byteBuffer.putDouble(fArr2[1]);
        } else {
            byteBuffer.putDouble(fArr[0]);
            byteBuffer.putDouble(fArr[1]);
        }
        byteBuffer.putDouble(BuildConfig.SENTRY_SAMPLE_RATE);
        byteBuffer.putDouble(BuildConfig.SENTRY_SAMPLE_RATE);
        byteBuffer.putLong(j);
        byteBuffer.putLong(0L);
        byteBuffer.putLong(0L);
        byteBuffer.putDouble(motionEvent.getPressure(i));
        if (motionEvent.getDevice() == null || (motionRange = motionEvent.getDevice().getMotionRange(2)) == null) {
            d = 1.0d;
            d2 = BuildConfig.SENTRY_SAMPLE_RATE;
        } else {
            d2 = motionRange.getMin();
            d = motionRange.getMax();
        }
        byteBuffer.putDouble(d2);
        byteBuffer.putDouble(d);
        if (pointerDeviceTypeForToolType == 2) {
            byteBuffer.putDouble(motionEvent.getAxisValue(24, i));
            d3 = BuildConfig.SENTRY_SAMPLE_RATE;
            byteBuffer.putDouble(BuildConfig.SENTRY_SAMPLE_RATE);
        } else {
            d3 = BuildConfig.SENTRY_SAMPLE_RATE;
            byteBuffer.putDouble(BuildConfig.SENTRY_SAMPLE_RATE);
            byteBuffer.putDouble(BuildConfig.SENTRY_SAMPLE_RATE);
        }
        byteBuffer.putDouble(motionEvent.getSize(i));
        byteBuffer.putDouble(motionEvent.getToolMajor(i));
        byteBuffer.putDouble(motionEvent.getToolMinor(i));
        byteBuffer.putDouble(d3);
        byteBuffer.putDouble(d3);
        byteBuffer.putDouble(motionEvent.getAxisValue(8, i));
        if (pointerDeviceTypeForToolType == 2) {
            byteBuffer.putDouble(motionEvent.getAxisValue(25, i));
        } else {
            byteBuffer.putDouble(d3);
        }
        byteBuffer.putLong(i3);
        if (i6 == 1) {
            if (context != null) {
                d5 = getHorizontalScrollFactor(context);
                d6 = getVerticalScrollFactor(context);
            } else {
                d5 = 48.0d;
                d6 = 48.0d;
            }
            byteBuffer.putDouble(d5 * (-motionEvent.getAxisValue(10, i)));
            byteBuffer.putDouble(d6 * (-motionEvent.getAxisValue(9, i)));
        } else {
            byteBuffer.putDouble(BuildConfig.SENTRY_SAMPLE_RATE);
            byteBuffer.putDouble(BuildConfig.SENTRY_SAMPLE_RATE);
        }
        if (containsKey) {
            float[] fArr3 = this.ongoingPans.get(Integer.valueOf(pointerId));
            byteBuffer.putDouble(fArr[0] - fArr3[0]);
            byteBuffer.putDouble(fArr[1] - fArr3[1]);
            d4 = BuildConfig.SENTRY_SAMPLE_RATE;
        } else {
            d4 = BuildConfig.SENTRY_SAMPLE_RATE;
            byteBuffer.putDouble(BuildConfig.SENTRY_SAMPLE_RATE);
            byteBuffer.putDouble(BuildConfig.SENTRY_SAMPLE_RATE);
        }
        byteBuffer.putDouble(d4);
        byteBuffer.putDouble(d4);
        byteBuffer.putDouble(1.0d);
        byteBuffer.putDouble(d4);
        byteBuffer.putLong(0L);
        if (containsKey && i4 == 9) {
            this.ongoingPans.remove(Integer.valueOf(pointerId));
        }
    }

    private float getHorizontalScrollFactor(Context context) {
        return ViewConfiguration.get(context).getScaledHorizontalScrollFactor();
    }

    private float getVerticalScrollFactor(Context context) {
        return getVerticalScrollFactorAbove26(context);
    }

    private float getVerticalScrollFactorAbove26(Context context) {
        return ViewConfiguration.get(context).getScaledVerticalScrollFactor();
    }

    private int getVerticalScrollFactorPre26(Context context) {
        if (this.cachedVerticalScrollFactor == 0) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                return 48;
            }
            this.cachedVerticalScrollFactor = (int) typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.cachedVerticalScrollFactor;
    }
}
