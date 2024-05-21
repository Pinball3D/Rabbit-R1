package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ShapeStrokeParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "c", "w", "o", "lc", "lj", "ml", "hd", "d");
    private static final JsonReader.Options DASH_PATTERN_NAMES = JsonReader.Options.of("n", "v");

    private ShapeStrokeParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008a, code lost:
    
        switch(r17) {
            case 0: goto L83;
            case 1: goto L83;
            case 2: goto L82;
            default: goto L85;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0090, code lost:
    
        r5 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0094, code lost:
    
        r19.setHasDashPattern(true);
        r3.add(r15);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.airbnb.lottie.model.content.ShapeStroke parse(com.airbnb.lottie.parser.moshi.JsonReader r18, com.airbnb.lottie.LottieComposition r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.ShapeStrokeParser.parse(com.airbnb.lottie.parser.moshi.JsonReader, com.airbnb.lottie.LottieComposition):com.airbnb.lottie.model.content.ShapeStroke");
    }
}
