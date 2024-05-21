package com.airbnb.lottie.parser;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ColorParser implements ValueParser<Integer> {
    public static final ColorParser INSTANCE = new ColorParser();

    private ColorParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.parser.ValueParser
    public Integer parse(JsonReader jsonReader, float f) throws IOException {
        boolean z = jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            jsonReader.beginArray();
        }
        double nextDouble = jsonReader.nextDouble();
        double nextDouble2 = jsonReader.nextDouble();
        double nextDouble3 = jsonReader.nextDouble();
        double nextDouble4 = jsonReader.peek() == JsonReader.Token.NUMBER ? jsonReader.nextDouble() : 1.0d;
        if (z) {
            jsonReader.endArray();
        }
        if (nextDouble <= 1.0d && nextDouble2 <= 1.0d && nextDouble3 <= 1.0d) {
            nextDouble *= 255.0d;
            nextDouble2 *= 255.0d;
            nextDouble3 *= 255.0d;
            if (nextDouble4 <= 1.0d) {
                nextDouble4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) nextDouble4, (int) nextDouble, (int) nextDouble2, (int) nextDouble3));
    }
}
