package com.airbnb.lottie.parser;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes2.dex */
public class AnimatableTextPropertiesParser {
    private static final JsonReader.Options PROPERTIES_NAMES = JsonReader.Options.of(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY);
    private static final JsonReader.Options ANIMATABLE_PROPERTIES_NAMES = JsonReader.Options.of("fc", "sc", "sw", "t");

    private AnimatableTextPropertiesParser() {
    }

    public static AnimatableTextProperties parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        jsonReader.beginObject();
        AnimatableTextProperties animatableTextProperties = null;
        while (jsonReader.hasNext()) {
            if (jsonReader.selectName(PROPERTIES_NAMES) == 0) {
                animatableTextProperties = parseAnimatableTextProperties(jsonReader, lottieComposition);
            } else {
                jsonReader.skipName();
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return animatableTextProperties == null ? new AnimatableTextProperties(null, null, null, null) : animatableTextProperties;
    }

    private static AnimatableTextProperties parseAnimatableTextProperties(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        jsonReader.beginObject();
        AnimatableColorValue animatableColorValue = null;
        AnimatableColorValue animatableColorValue2 = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(ANIMATABLE_PROPERTIES_NAMES);
            if (selectName == 0) {
                animatableColorValue = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
            } else if (selectName == 1) {
                animatableColorValue2 = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
            } else if (selectName == 2) {
                animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
            } else if (selectName == 3) {
                animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
            } else {
                jsonReader.skipName();
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return new AnimatableTextProperties(animatableColorValue, animatableColorValue2, animatableFloatValue, animatableFloatValue2);
    }
}
