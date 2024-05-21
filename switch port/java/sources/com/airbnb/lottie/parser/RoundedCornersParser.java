package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.content.RoundedCorners;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes2.dex */
public class RoundedCornersParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "r", "hd");

    private RoundedCornersParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RoundedCorners parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        boolean z = false;
        String str = null;
        AnimatableFloatValue animatableFloatValue = null;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName == 0) {
                str = jsonReader.nextString();
            } else if (selectName == 1) {
                animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, true);
            } else if (selectName == 2) {
                z = jsonReader.nextBoolean();
            } else {
                jsonReader.skipValue();
            }
        }
        if (z) {
            return null;
        }
        return new RoundedCorners(str, animatableFloatValue);
    }
}
