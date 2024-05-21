package com.airbnb.lottie.utils;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.animation.content.KeyPathElementContent;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.ShapeData;
import java.util.List;

/* loaded from: classes2.dex */
public class MiscUtils {
    private static final PointF pathFromDataCurrentPoint = new PointF();

    public static boolean contains(float f, float f2, float f3) {
        return f >= f2 && f <= f3;
    }

    public static double lerp(double d, double d2, double d3) {
        return d + (d3 * (d2 - d));
    }

    public static float lerp(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    public static int lerp(int i, int i2, float f) {
        return (int) (i + (f * (i2 - i)));
    }

    public static PointF addPoints(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static void getPathFromData(ShapeData shapeData, Path path) {
        path.reset();
        PointF initialPoint = shapeData.getInitialPoint();
        path.moveTo(initialPoint.x, initialPoint.y);
        pathFromDataCurrentPoint.set(initialPoint.x, initialPoint.y);
        for (int i = 0; i < shapeData.getCurves().size(); i++) {
            CubicCurveData cubicCurveData = shapeData.getCurves().get(i);
            PointF controlPoint1 = cubicCurveData.getControlPoint1();
            PointF controlPoint2 = cubicCurveData.getControlPoint2();
            PointF vertex = cubicCurveData.getVertex();
            PointF pointF = pathFromDataCurrentPoint;
            if (controlPoint1.equals(pointF) && controlPoint2.equals(vertex)) {
                path.lineTo(vertex.x, vertex.y);
            } else {
                path.cubicTo(controlPoint1.x, controlPoint1.y, controlPoint2.x, controlPoint2.y, vertex.x, vertex.y);
            }
            pointF.set(vertex.x, vertex.y);
        }
        if (shapeData.isClosed()) {
            path.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int floorMod(float f, float f2) {
        return floorMod((int) f, (int) f2);
    }

    private static int floorMod(int i, int i2) {
        return i - (i2 * floorDiv(i, i2));
    }

    private static int floorDiv(int i, int i2) {
        int i3 = i / i2;
        return (((i ^ i2) >= 0) || i % i2 == 0) ? i3 : i3 - 1;
    }

    public static int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    public static float clamp(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    public static double clamp(double d, double d2, double d3) {
        return Math.max(d2, Math.min(d3, d));
    }

    public static void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2, KeyPathElementContent keyPathElementContent) {
        if (keyPath.fullyResolvesTo(keyPathElementContent.getName(), i)) {
            list.add(keyPath2.addKey(keyPathElementContent.getName()).resolve(keyPathElementContent));
        }
    }
}
