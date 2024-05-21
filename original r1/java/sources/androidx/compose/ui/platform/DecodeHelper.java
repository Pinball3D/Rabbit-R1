package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidClipboardManager.android.kt */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\t\u001a\u00020\nH\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\r\u001a\u00020\u000eH\u0002J\u0016\u0010\u000f\u001a\u00020\u0010ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\u0016\u0010\u0015\u001a\u00020\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u001aø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001b\u0010\u0018J\u0006\u0010\u001c\u001a\u00020\u001dJ\b\u0010\u001e\u001a\u00020\bH\u0002J\b\u0010\u001f\u001a\u00020 H\u0002J\u0006\u0010!\u001a\u00020\"J\n\u0010#\u001a\u0004\u0018\u00010\u0003H\u0002J\b\u0010$\u001a\u00020%H\u0002J\b\u0010&\u001a\u00020'H\u0002J\u0016\u0010(\u001a\u00020)ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b*\u0010\u0012J\u0018\u0010+\u001a\u00020,H\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b-\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006."}, d2 = {"Landroidx/compose/ui/platform/DecodeHelper;", "", "string", "", "(Ljava/lang/String;)V", "parcel", "Landroid/os/Parcel;", "dataAvailable", "", "decodeBaselineShift", "Landroidx/compose/ui/text/style/BaselineShift;", "decodeBaselineShift-y9eOQZs", "()F", "decodeByte", "", "decodeColor", "Landroidx/compose/ui/graphics/Color;", "decodeColor-0d7_KjU", "()J", "decodeFloat", "", "decodeFontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "decodeFontStyle-_-LCdwA", "()I", "decodeFontSynthesis", "Landroidx/compose/ui/text/font/FontSynthesis;", "decodeFontSynthesis-GVVA2EU", "decodeFontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "decodeInt", "decodeShadow", "Landroidx/compose/ui/graphics/Shadow;", "decodeSpanStyle", "Landroidx/compose/ui/text/SpanStyle;", "decodeString", "decodeTextDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "decodeTextGeometricTransform", "Landroidx/compose/ui/text/style/TextGeometricTransform;", "decodeTextUnit", "Landroidx/compose/ui/unit/TextUnit;", "decodeTextUnit-XSAIIZE", "decodeULong", "Lkotlin/ULong;", "decodeULong-s-VKNKU", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DecodeHelper {
    private final Parcel parcel;

    public DecodeHelper(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        Parcel obtain = Parcel.obtain();
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
        this.parcel = obtain;
        byte[] decode = Base64.decode(string, 0);
        obtain.unmarshall(decode, 0, decode.length);
        obtain.setDataPosition(0);
    }

    public final SpanStyle decodeSpanStyle() {
        MutableSpanStyle mutableSpanStyle;
        MutableSpanStyle mutableSpanStyle2 = r15;
        MutableSpanStyle mutableSpanStyle3 = new MutableSpanStyle(0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, 16383, null);
        while (this.parcel.dataAvail() > 1) {
            byte decodeByte = decodeByte();
            if (decodeByte != 1) {
                mutableSpanStyle = mutableSpanStyle2;
                if (decodeByte == 2) {
                    if (dataAvailable() < 5) {
                        break;
                    }
                    mutableSpanStyle.m4219setFontSizeR2X_6o(m4191decodeTextUnitXSAIIZE());
                    mutableSpanStyle2 = mutableSpanStyle;
                } else if (decodeByte == 3) {
                    if (dataAvailable() < 4) {
                        break;
                    }
                    mutableSpanStyle.setFontWeight(decodeFontWeight());
                    mutableSpanStyle2 = mutableSpanStyle;
                } else if (decodeByte == 4) {
                    if (dataAvailable() < 1) {
                        break;
                    }
                    mutableSpanStyle.m4220setFontStylemLjRB2g(FontStyle.m4507boximpl(m4189decodeFontStyle_LCdwA()));
                    mutableSpanStyle2 = mutableSpanStyle;
                } else if (decodeByte != 5) {
                    if (decodeByte != 6) {
                        if (decodeByte != 7) {
                            if (decodeByte != 8) {
                                if (decodeByte != 9) {
                                    if (decodeByte != 10) {
                                        if (decodeByte != 11) {
                                            if (decodeByte == 12) {
                                                if (dataAvailable() < 20) {
                                                    break;
                                                }
                                                mutableSpanStyle.setShadow(decodeShadow());
                                            }
                                        } else {
                                            if (dataAvailable() < 4) {
                                                break;
                                            }
                                            mutableSpanStyle.setTextDecoration(decodeTextDecoration());
                                        }
                                    } else {
                                        if (dataAvailable() < 8) {
                                            break;
                                        }
                                        mutableSpanStyle.m4216setBackground8_81llA(m4188decodeColor0d7_KjU());
                                    }
                                } else {
                                    if (dataAvailable() < 8) {
                                        break;
                                    }
                                    mutableSpanStyle.setTextGeometricTransform(decodeTextGeometricTransform());
                                }
                            } else {
                                if (dataAvailable() < 4) {
                                    break;
                                }
                                mutableSpanStyle.m4217setBaselineShift_isdbwI(BaselineShift.m4670boximpl(m4186decodeBaselineShifty9eOQZs()));
                            }
                        } else {
                            if (dataAvailable() < 5) {
                                break;
                            }
                            mutableSpanStyle.m4222setLetterSpacingR2X_6o(m4191decodeTextUnitXSAIIZE());
                        }
                    } else {
                        mutableSpanStyle.setFontFeatureSettings(decodeString());
                    }
                    mutableSpanStyle2 = mutableSpanStyle;
                } else {
                    if (dataAvailable() < 1) {
                        break;
                    }
                    mutableSpanStyle.m4221setFontSynthesistDdu0R4(FontSynthesis.m4516boximpl(m4190decodeFontSynthesisGVVA2EU()));
                    mutableSpanStyle2 = mutableSpanStyle;
                }
            } else {
                if (dataAvailable() < 8) {
                    break;
                }
                mutableSpanStyle2.m4218setColor8_81llA(m4188decodeColor0d7_KjU());
            }
        }
        mutableSpanStyle = mutableSpanStyle2;
        return mutableSpanStyle.toSpanStyle();
    }

    /* renamed from: decodeColor-0d7_KjU, reason: not valid java name */
    public final long m4188decodeColor0d7_KjU() {
        return Color.m2635constructorimpl(m4187decodeULongsVKNKU());
    }

    /* renamed from: decodeTextUnit-XSAIIZE, reason: not valid java name */
    public final long m4191decodeTextUnitXSAIIZE() {
        long m5098getUnspecifiedUIouoOA;
        byte decodeByte = decodeByte();
        if (decodeByte == 1) {
            m5098getUnspecifiedUIouoOA = TextUnitType.INSTANCE.m5097getSpUIouoOA();
        } else if (decodeByte == 2) {
            m5098getUnspecifiedUIouoOA = TextUnitType.INSTANCE.m5096getEmUIouoOA();
        } else {
            m5098getUnspecifiedUIouoOA = TextUnitType.INSTANCE.m5098getUnspecifiedUIouoOA();
        }
        if (TextUnitType.m5092equalsimpl0(m5098getUnspecifiedUIouoOA, TextUnitType.INSTANCE.m5098getUnspecifiedUIouoOA())) {
            return TextUnit.INSTANCE.m5075getUnspecifiedXSAIIZE();
        }
        return TextUnitKt.m5076TextUnitanM5pPY(decodeFloat(), m5098getUnspecifiedUIouoOA);
    }

    public final FontWeight decodeFontWeight() {
        return new FontWeight(decodeInt());
    }

    /* renamed from: decodeFontStyle-_-LCdwA, reason: not valid java name */
    public final int m4189decodeFontStyle_LCdwA() {
        byte decodeByte = decodeByte();
        if (decodeByte == 0) {
            return FontStyle.INSTANCE.m4515getNormal_LCdwA();
        }
        if (decodeByte == 1) {
            return FontStyle.INSTANCE.m4514getItalic_LCdwA();
        }
        return FontStyle.INSTANCE.m4515getNormal_LCdwA();
    }

    /* renamed from: decodeFontSynthesis-GVVA2EU, reason: not valid java name */
    public final int m4190decodeFontSynthesisGVVA2EU() {
        byte decodeByte = decodeByte();
        if (decodeByte == 0) {
            return FontSynthesis.INSTANCE.m4526getNoneGVVA2EU();
        }
        if (decodeByte == 1) {
            return FontSynthesis.INSTANCE.m4525getAllGVVA2EU();
        }
        if (decodeByte == 3) {
            return FontSynthesis.INSTANCE.m4527getStyleGVVA2EU();
        }
        if (decodeByte == 2) {
            return FontSynthesis.INSTANCE.m4528getWeightGVVA2EU();
        }
        return FontSynthesis.INSTANCE.m4526getNoneGVVA2EU();
    }

    /* renamed from: decodeBaselineShift-y9eOQZs, reason: not valid java name */
    private final float m4186decodeBaselineShifty9eOQZs() {
        return BaselineShift.m4671constructorimpl(decodeFloat());
    }

    private final TextGeometricTransform decodeTextGeometricTransform() {
        return new TextGeometricTransform(decodeFloat(), decodeFloat());
    }

    private final TextDecoration decodeTextDecoration() {
        int decodeInt = decodeInt();
        boolean z = (TextDecoration.INSTANCE.getLineThrough().getMask() & decodeInt) != 0;
        boolean z2 = (decodeInt & TextDecoration.INSTANCE.getUnderline().getMask()) != 0;
        if (z && z2) {
            return TextDecoration.INSTANCE.combine(CollectionsKt.listOf((Object[]) new TextDecoration[]{TextDecoration.INSTANCE.getLineThrough(), TextDecoration.INSTANCE.getUnderline()}));
        }
        if (z) {
            return TextDecoration.INSTANCE.getLineThrough();
        }
        if (z2) {
            return TextDecoration.INSTANCE.getUnderline();
        }
        return TextDecoration.INSTANCE.getNone();
    }

    private final Shadow decodeShadow() {
        return new Shadow(m4188decodeColor0d7_KjU(), OffsetKt.Offset(decodeFloat(), decodeFloat()), decodeFloat(), null);
    }

    private final byte decodeByte() {
        return this.parcel.readByte();
    }

    private final int decodeInt() {
        return this.parcel.readInt();
    }

    /* renamed from: decodeULong-s-VKNKU, reason: not valid java name */
    private final long m4187decodeULongsVKNKU() {
        return ULong.m5872constructorimpl(this.parcel.readLong());
    }

    private final float decodeFloat() {
        return this.parcel.readFloat();
    }

    private final String decodeString() {
        return this.parcel.readString();
    }

    private final int dataAvailable() {
        return this.parcel.dataAvail();
    }
}
