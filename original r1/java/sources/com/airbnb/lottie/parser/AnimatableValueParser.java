package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableScaleValue;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.ScaleXY;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public class AnimatableValueParser {
    private AnimatableValueParser() {
    }

    public static AnimatableFloatValue parseFloat(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return parseFloat(jsonReader, lottieComposition, true);
    }

    public static AnimatableFloatValue parseFloat(JsonReader jsonReader, LottieComposition lottieComposition, boolean z) throws IOException {
        return new AnimatableFloatValue(parse(jsonReader, z ? Utils.dpScale() : 1.0f, lottieComposition, FloatParser.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimatableIntegerValue parseInteger(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableIntegerValue(parse(jsonReader, lottieComposition, IntegerParser.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimatablePointValue parsePoint(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatablePointValue(KeyframesParser.parse(jsonReader, lottieComposition, Utils.dpScale(), PointFParser.INSTANCE, true));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimatableScaleValue parseScale(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableScaleValue((List<Keyframe<ScaleXY>>) parse(jsonReader, lottieComposition, ScaleXYParser.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimatableShapeValue parseShapeData(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableShapeValue(parse(jsonReader, Utils.dpScale(), lottieComposition, ShapeDataParser.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimatableTextFrame parseDocumentData(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableTextFrame(parse(jsonReader, Utils.dpScale(), lottieComposition, DocumentDataParser.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimatableColorValue parseColor(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableColorValue(parse(jsonReader, lottieComposition, ColorParser.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimatableGradientColorValue parseGradientColor(JsonReader jsonReader, LottieComposition lottieComposition, int i) throws IOException {
        return new AnimatableGradientColorValue(parse(jsonReader, lottieComposition, new GradientColorParser(i)));
    }

    private static <T> List<Keyframe<T>> parse(JsonReader jsonReader, LottieComposition lottieComposition, ValueParser<T> valueParser) throws IOException {
        return KeyframesParser.parse(jsonReader, lottieComposition, 1.0f, valueParser, false);
    }

    private static <T> List<Keyframe<T>> parse(JsonReader jsonReader, float f, LottieComposition lottieComposition, ValueParser<T> valueParser) throws IOException {
        return KeyframesParser.parse(jsonReader, lottieComposition, f, valueParser, false);
    }
}
