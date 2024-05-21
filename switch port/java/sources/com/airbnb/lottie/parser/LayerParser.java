package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.Rect;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.BlurEffect;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes2.dex */
public class LayerParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", CmcdConfiguration.KEY_STREAM_TYPE, "w", CmcdHeadersFactory.STREAMING_FORMAT_HLS, "ip", "op", "tm", "cl", "hd", "ao", "bm");
    private static final JsonReader.Options TEXT_NAMES = JsonReader.Options.of("d", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY);
    private static final JsonReader.Options EFFECTS_NAMES = JsonReader.Options.of("ty", "nm");

    private LayerParser() {
    }

    public static Layer parse(LottieComposition lottieComposition) {
        Rect bounds = lottieComposition.getBounds();
        return new Layer(Collections.emptyList(), lottieComposition, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new AnimatableTransform(), 0, 0, 0, 0.0f, 0.0f, bounds.width(), bounds.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false, null, null, LBlendMode.NORMAL);
    }

    public static Layer parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        ArrayList arrayList;
        boolean z;
        float f;
        Layer.MatteType matteType = Layer.MatteType.NONE;
        LBlendMode lBlendMode = LBlendMode.NORMAL;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        jsonReader.beginObject();
        Float valueOf = Float.valueOf(0.0f);
        Float valueOf2 = Float.valueOf(1.0f);
        Layer.MatteType matteType2 = matteType;
        LBlendMode lBlendMode2 = lBlendMode;
        Layer.LayerType layerType = null;
        String str = null;
        AnimatableTextFrame animatableTextFrame = null;
        AnimatableTextProperties animatableTextProperties = null;
        AnimatableFloatValue animatableFloatValue = null;
        BlurEffect blurEffect = null;
        DropShadowEffect dropShadowEffect = null;
        long j = 0;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z3 = false;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        long j2 = -1;
        float f7 = 1.0f;
        String str2 = "UNSET";
        String str3 = null;
        AnimatableTransform animatableTransform = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    str2 = jsonReader.nextString();
                    break;
                case 1:
                    j = jsonReader.nextInt();
                    break;
                case 2:
                    str = jsonReader.nextString();
                    break;
                case 3:
                    int nextInt = jsonReader.nextInt();
                    if (nextInt < Layer.LayerType.UNKNOWN.ordinal()) {
                        layerType = Layer.LayerType.values()[nextInt];
                        break;
                    } else {
                        layerType = Layer.LayerType.UNKNOWN;
                        break;
                    }
                case 4:
                    j2 = jsonReader.nextInt();
                    break;
                case 5:
                    i = (int) (jsonReader.nextInt() * Utils.dpScale());
                    break;
                case 6:
                    i2 = (int) (jsonReader.nextInt() * Utils.dpScale());
                    break;
                case 7:
                    i3 = Color.parseColor(jsonReader.nextString());
                    break;
                case 8:
                    animatableTransform = AnimatableTransformParser.parse(jsonReader, lottieComposition);
                    break;
                case 9:
                    int nextInt2 = jsonReader.nextInt();
                    if (nextInt2 >= Layer.MatteType.values().length) {
                        lottieComposition.addWarning("Unsupported matte type: " + nextInt2);
                        break;
                    } else {
                        matteType2 = Layer.MatteType.values()[nextInt2];
                        int i4 = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[matteType2.ordinal()];
                        if (i4 == 1) {
                            lottieComposition.addWarning("Unsupported matte type: Luma");
                        } else if (i4 == 2) {
                            lottieComposition.addWarning("Unsupported matte type: Luma Inverted");
                        }
                        lottieComposition.incrementMatteOrMaskCount(1);
                        break;
                    }
                case 10:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList2.add(MaskParser.parse(jsonReader, lottieComposition));
                    }
                    lottieComposition.incrementMatteOrMaskCount(arrayList2.size());
                    jsonReader.endArray();
                    break;
                case 11:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ContentModel parse = ContentModelParser.parse(jsonReader, lottieComposition);
                        if (parse != null) {
                            arrayList3.add(parse);
                        }
                    }
                    jsonReader.endArray();
                    break;
                case 12:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        int selectName = jsonReader.selectName(TEXT_NAMES);
                        if (selectName == 0) {
                            animatableTextFrame = AnimatableValueParser.parseDocumentData(jsonReader, lottieComposition);
                        } else if (selectName == 1) {
                            jsonReader.beginArray();
                            if (jsonReader.hasNext()) {
                                animatableTextProperties = AnimatableTextPropertiesParser.parse(jsonReader, lottieComposition);
                            }
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            jsonReader.endArray();
                        } else {
                            jsonReader.skipName();
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 13:
                    jsonReader.beginArray();
                    ArrayList arrayList4 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            int selectName2 = jsonReader.selectName(EFFECTS_NAMES);
                            if (selectName2 == 0) {
                                int nextInt3 = jsonReader.nextInt();
                                if (nextInt3 == 29) {
                                    blurEffect = BlurEffectParser.parse(jsonReader, lottieComposition);
                                } else if (nextInt3 == 25) {
                                    dropShadowEffect = new DropShadowEffectParser().parse(jsonReader, lottieComposition);
                                }
                            } else if (selectName2 == 1) {
                                arrayList4.add(jsonReader.nextString());
                            } else {
                                jsonReader.skipName();
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    lottieComposition.addWarning("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList4);
                    break;
                case 14:
                    f7 = (float) jsonReader.nextDouble();
                    break;
                case 15:
                    f3 = (float) jsonReader.nextDouble();
                    break;
                case 16:
                    f4 = (float) (jsonReader.nextDouble() * Utils.dpScale());
                    break;
                case 17:
                    f5 = (float) (jsonReader.nextDouble() * Utils.dpScale());
                    break;
                case 18:
                    f2 = (float) jsonReader.nextDouble();
                    break;
                case 19:
                    f6 = (float) jsonReader.nextDouble();
                    break;
                case 20:
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    break;
                case 21:
                    str3 = jsonReader.nextString();
                    break;
                case 22:
                    z3 = jsonReader.nextBoolean();
                    break;
                case 23:
                    if (jsonReader.nextInt() != 1) {
                        z2 = false;
                        break;
                    } else {
                        z2 = true;
                        break;
                    }
                case 24:
                    int nextInt4 = jsonReader.nextInt();
                    if (nextInt4 >= LBlendMode.values().length) {
                        lottieComposition.addWarning("Unsupported Blend Mode: " + nextInt4);
                        lBlendMode2 = LBlendMode.NORMAL;
                        break;
                    } else {
                        lBlendMode2 = LBlendMode.values()[nextInt4];
                        break;
                    }
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        ArrayList arrayList5 = new ArrayList();
        if (f2 > 0.0f) {
            arrayList = arrayList2;
            z = z2;
            arrayList5.add(new Keyframe(lottieComposition, valueOf, valueOf, null, 0.0f, Float.valueOf(f2)));
            f = 0.0f;
        } else {
            arrayList = arrayList2;
            z = z2;
            f = 0.0f;
        }
        if (f6 <= f) {
            f6 = lottieComposition.getEndFrame();
        }
        arrayList5.add(new Keyframe(lottieComposition, valueOf2, valueOf2, null, f2, Float.valueOf(f6)));
        arrayList5.add(new Keyframe(lottieComposition, valueOf, valueOf, null, f6, Float.valueOf(Float.MAX_VALUE)));
        if (str2.endsWith(".ai") || "ai".equals(str3)) {
            lottieComposition.addWarning("Convert your Illustrator layers to shape layers.");
        }
        if (z) {
            if (animatableTransform == null) {
                animatableTransform = new AnimatableTransform();
            }
            animatableTransform.setAutoOrient(z);
        }
        return new Layer(arrayList3, lottieComposition, str2, j, layerType, j2, str, arrayList, animatableTransform, i, i2, i3, f7, f3, f4, f5, animatableTextFrame, animatableTextProperties, arrayList5, matteType2, animatableFloatValue, z3, blurEffect, dropShadowEffect, lBlendMode2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.airbnb.lottie.parser.LayerParser$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
