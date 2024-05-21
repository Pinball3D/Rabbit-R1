package com.airbnb.lottie.parser;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import io.sentry.protocol.ViewHierarchyNode;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
class KeyframeParser {
    private static final float MAX_CP_VALUE = 100.0f;
    private static SparseArrayCompat<WeakReference<Interpolator>> pathInterpolatorCache;
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    static JsonReader.Options NAMES = JsonReader.Options.of("t", CmcdHeadersFactory.STREAMING_FORMAT_SS, "e", "o", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, CmcdHeadersFactory.STREAMING_FORMAT_HLS, "to", "ti");
    static JsonReader.Options INTERPOLATOR_NAMES = JsonReader.Options.of(ViewHierarchyNode.JsonKeys.X, ViewHierarchyNode.JsonKeys.Y);

    KeyframeParser() {
    }

    private static SparseArrayCompat<WeakReference<Interpolator>> pathInterpolatorCache() {
        if (pathInterpolatorCache == null) {
            pathInterpolatorCache = new SparseArrayCompat<>();
        }
        return pathInterpolatorCache;
    }

    private static WeakReference<Interpolator> getInterpolator(int i) {
        WeakReference<Interpolator> weakReference;
        synchronized (KeyframeParser.class) {
            weakReference = pathInterpolatorCache().get(i);
        }
        return weakReference;
    }

    private static void putInterpolator(int i, WeakReference<Interpolator> weakReference) {
        synchronized (KeyframeParser.class) {
            pathInterpolatorCache.put(i, weakReference);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Keyframe<T> parse(JsonReader jsonReader, LottieComposition lottieComposition, float f, ValueParser<T> valueParser, boolean z, boolean z2) throws IOException {
        if (z && z2) {
            return parseMultiDimensionalKeyframe(lottieComposition, jsonReader, f, valueParser);
        }
        if (z) {
            return parseKeyframe(lottieComposition, jsonReader, f, valueParser);
        }
        return parseStaticValue(jsonReader, f, valueParser);
    }

    private static <T> Keyframe<T> parseKeyframe(LottieComposition lottieComposition, JsonReader jsonReader, float f, ValueParser<T> valueParser) throws IOException {
        Interpolator interpolatorFor;
        T t;
        jsonReader.beginObject();
        PointF pointF = null;
        T t2 = null;
        T t3 = null;
        PointF pointF2 = null;
        PointF pointF3 = null;
        float f2 = 0.0f;
        boolean z = false;
        PointF pointF4 = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    f2 = (float) jsonReader.nextDouble();
                    break;
                case 1:
                    t3 = valueParser.parse(jsonReader, f);
                    break;
                case 2:
                    t2 = valueParser.parse(jsonReader, f);
                    break;
                case 3:
                    pointF = JsonUtils.jsonToPoint(jsonReader, 1.0f);
                    break;
                case 4:
                    pointF4 = JsonUtils.jsonToPoint(jsonReader, 1.0f);
                    break;
                case 5:
                    if (jsonReader.nextInt() != 1) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 6:
                    pointF2 = JsonUtils.jsonToPoint(jsonReader, f);
                    break;
                case 7:
                    pointF3 = JsonUtils.jsonToPoint(jsonReader, f);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (z) {
            interpolatorFor = LINEAR_INTERPOLATOR;
            t = t3;
        } else {
            interpolatorFor = (pointF == null || pointF4 == null) ? LINEAR_INTERPOLATOR : interpolatorFor(pointF, pointF4);
            t = t2;
        }
        Keyframe<T> keyframe = new Keyframe<>(lottieComposition, t3, t, interpolatorFor, f2, null);
        keyframe.pathCp1 = pointF2;
        keyframe.pathCp2 = pointF3;
        return keyframe;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0023. Please report as an issue. */
    private static <T> Keyframe<T> parseMultiDimensionalKeyframe(LottieComposition lottieComposition, JsonReader jsonReader, float f, ValueParser<T> valueParser) throws IOException {
        Interpolator interpolator;
        Interpolator interpolatorFor;
        Interpolator interpolatorFor2;
        T t;
        PointF pointF;
        Keyframe<T> keyframe;
        PointF pointF2;
        float f2;
        PointF pointF3;
        float f3;
        jsonReader.beginObject();
        PointF pointF4 = null;
        boolean z = false;
        PointF pointF5 = null;
        PointF pointF6 = null;
        PointF pointF7 = null;
        T t2 = null;
        PointF pointF8 = null;
        PointF pointF9 = null;
        PointF pointF10 = null;
        float f4 = 0.0f;
        PointF pointF11 = null;
        T t3 = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    pointF2 = pointF4;
                    f4 = (float) jsonReader.nextDouble();
                    pointF4 = pointF2;
                    break;
                case 1:
                    pointF2 = pointF4;
                    t2 = valueParser.parse(jsonReader, f);
                    pointF4 = pointF2;
                    break;
                case 2:
                    pointF2 = pointF4;
                    t3 = valueParser.parse(jsonReader, f);
                    pointF4 = pointF2;
                    break;
                case 3:
                    pointF2 = pointF4;
                    f2 = f4;
                    PointF pointF12 = pointF11;
                    if (jsonReader.peek() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.beginObject();
                        float f5 = 0.0f;
                        float f6 = 0.0f;
                        float f7 = 0.0f;
                        float f8 = 0.0f;
                        while (jsonReader.hasNext()) {
                            int selectName = jsonReader.selectName(INTERPOLATOR_NAMES);
                            if (selectName != 0) {
                                if (selectName == 1) {
                                    if (jsonReader.peek() == JsonReader.Token.NUMBER) {
                                        f8 = (float) jsonReader.nextDouble();
                                        f6 = f8;
                                    } else {
                                        jsonReader.beginArray();
                                        f6 = (float) jsonReader.nextDouble();
                                        f8 = jsonReader.peek() == JsonReader.Token.NUMBER ? (float) jsonReader.nextDouble() : f6;
                                        jsonReader.endArray();
                                    }
                                } else {
                                    jsonReader.skipValue();
                                }
                            } else if (jsonReader.peek() == JsonReader.Token.NUMBER) {
                                f7 = (float) jsonReader.nextDouble();
                                f5 = f7;
                            } else {
                                jsonReader.beginArray();
                                f5 = (float) jsonReader.nextDouble();
                                f7 = jsonReader.peek() == JsonReader.Token.NUMBER ? (float) jsonReader.nextDouble() : f5;
                                jsonReader.endArray();
                            }
                        }
                        PointF pointF13 = new PointF(f5, f6);
                        PointF pointF14 = new PointF(f7, f8);
                        jsonReader.endObject();
                        pointF8 = pointF14;
                        pointF7 = pointF13;
                        pointF11 = pointF12;
                        f4 = f2;
                        pointF4 = pointF2;
                        break;
                    } else {
                        pointF5 = JsonUtils.jsonToPoint(jsonReader, f);
                        f4 = f2;
                        pointF11 = pointF12;
                        pointF4 = pointF2;
                    }
                case 4:
                    if (jsonReader.peek() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.beginObject();
                        float f9 = 0.0f;
                        float f10 = 0.0f;
                        float f11 = 0.0f;
                        float f12 = 0.0f;
                        while (jsonReader.hasNext()) {
                            PointF pointF15 = pointF11;
                            int selectName2 = jsonReader.selectName(INTERPOLATOR_NAMES);
                            if (selectName2 != 0) {
                                pointF3 = pointF4;
                                if (selectName2 == 1) {
                                    if (jsonReader.peek() == JsonReader.Token.NUMBER) {
                                        f12 = (float) jsonReader.nextDouble();
                                        f4 = f4;
                                        f10 = f12;
                                    } else {
                                        f3 = f4;
                                        jsonReader.beginArray();
                                        f10 = (float) jsonReader.nextDouble();
                                        f12 = jsonReader.peek() == JsonReader.Token.NUMBER ? (float) jsonReader.nextDouble() : f10;
                                        jsonReader.endArray();
                                        f4 = f3;
                                    }
                                } else {
                                    jsonReader.skipValue();
                                }
                            } else {
                                pointF3 = pointF4;
                                f3 = f4;
                                if (jsonReader.peek() == JsonReader.Token.NUMBER) {
                                    f11 = (float) jsonReader.nextDouble();
                                    f4 = f3;
                                    f9 = f11;
                                } else {
                                    jsonReader.beginArray();
                                    f9 = (float) jsonReader.nextDouble();
                                    f11 = jsonReader.peek() == JsonReader.Token.NUMBER ? (float) jsonReader.nextDouble() : f9;
                                    jsonReader.endArray();
                                    f4 = f3;
                                }
                            }
                            pointF11 = pointF15;
                            pointF4 = pointF3;
                        }
                        pointF2 = pointF4;
                        f2 = f4;
                        PointF pointF16 = new PointF(f9, f10);
                        PointF pointF17 = new PointF(f11, f12);
                        jsonReader.endObject();
                        pointF10 = pointF17;
                        pointF9 = pointF16;
                        f4 = f2;
                        pointF4 = pointF2;
                        break;
                    } else {
                        pointF2 = pointF4;
                        pointF6 = JsonUtils.jsonToPoint(jsonReader, f);
                        pointF4 = pointF2;
                    }
                case 5:
                    if (jsonReader.nextInt() != 1) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 6:
                    pointF11 = JsonUtils.jsonToPoint(jsonReader, f);
                    break;
                case 7:
                    pointF4 = JsonUtils.jsonToPoint(jsonReader, f);
                    break;
                default:
                    pointF2 = pointF4;
                    jsonReader.skipValue();
                    pointF4 = pointF2;
                    break;
            }
        }
        PointF pointF18 = pointF4;
        float f13 = f4;
        PointF pointF19 = pointF11;
        jsonReader.endObject();
        if (z) {
            interpolator = LINEAR_INTERPOLATOR;
            t = t2;
        } else {
            if (pointF5 != null && pointF6 != null) {
                interpolator = interpolatorFor(pointF5, pointF6);
            } else {
                if (pointF7 != null && pointF8 != null && pointF9 != null && pointF10 != null) {
                    interpolatorFor = interpolatorFor(pointF7, pointF9);
                    interpolatorFor2 = interpolatorFor(pointF8, pointF10);
                    t = t3;
                    interpolator = null;
                    if (interpolatorFor == null && interpolatorFor2 != null) {
                        pointF = pointF19;
                        keyframe = new Keyframe<>(lottieComposition, t2, t, interpolatorFor, interpolatorFor2, f13, null);
                    } else {
                        pointF = pointF19;
                        keyframe = new Keyframe<>(lottieComposition, t2, t, interpolator, f13, null);
                    }
                    keyframe.pathCp1 = pointF;
                    keyframe.pathCp2 = pointF18;
                    return keyframe;
                }
                interpolator = LINEAR_INTERPOLATOR;
            }
            t = t3;
        }
        interpolatorFor = null;
        interpolatorFor2 = null;
        if (interpolatorFor == null) {
        }
        pointF = pointF19;
        keyframe = new Keyframe<>(lottieComposition, t2, t, interpolator, f13, null);
        keyframe.pathCp1 = pointF;
        keyframe.pathCp2 = pointF18;
        return keyframe;
    }

    private static Interpolator interpolatorFor(PointF pointF, PointF pointF2) {
        Interpolator linearInterpolator;
        pointF.x = MiscUtils.clamp(pointF.x, -1.0f, 1.0f);
        pointF.y = MiscUtils.clamp(pointF.y, -100.0f, 100.0f);
        pointF2.x = MiscUtils.clamp(pointF2.x, -1.0f, 1.0f);
        pointF2.y = MiscUtils.clamp(pointF2.y, -100.0f, 100.0f);
        int hashFor = Utils.hashFor(pointF.x, pointF.y, pointF2.x, pointF2.y);
        WeakReference<Interpolator> interpolator = L.getDisablePathInterpolatorCache() ? null : getInterpolator(hashFor);
        Interpolator interpolator2 = interpolator != null ? interpolator.get() : null;
        if (interpolator == null || interpolator2 == null) {
            try {
                linearInterpolator = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e) {
                if ("The Path cannot loop back on itself.".equals(e.getMessage())) {
                    linearInterpolator = PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y);
                } else {
                    linearInterpolator = new LinearInterpolator();
                }
            }
            interpolator2 = linearInterpolator;
            if (!L.getDisablePathInterpolatorCache()) {
                try {
                    putInterpolator(hashFor, new WeakReference(interpolator2));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator2;
    }

    private static <T> Keyframe<T> parseStaticValue(JsonReader jsonReader, float f, ValueParser<T> valueParser) throws IOException {
        return new Keyframe<>(valueParser.parse(jsonReader, f));
    }
}
