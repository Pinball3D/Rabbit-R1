package androidx.compose.material3;

import androidx.compose.material3.tokens.TypographyTokensKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.text.TextStyle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Text.kt */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0011\u0010\b\u001a\r\u0012\u0004\u0012\u00020\u00060\t¢\u0006\u0002\b\nH\u0007¢\u0006\u0002\u0010\u000b\u001aé\u0001\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00142\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u0010'\u001a\u00020&2\u0014\b\u0002\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0)2\u0014\b\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00060-2\b\b\u0002\u0010/\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101\u001aß\u0001\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00142\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\u0014\b\u0002\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0)2\u0014\b\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00060-2\b\b\u0002\u0010/\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b2\u00103\u001aÉ\u0001\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020*2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00142\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\u0014\b\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00060-2\b\b\u0002\u0010/\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b4\u00105\u001aÓ\u0001\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020*2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00142\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u0010'\u001a\u00020&2\u0014\b\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00060-2\b\b\u0002\u0010/\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b2\u00106\"\u0017\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00067"}, d2 = {"LocalTextStyle", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/compose/ui/text/TextStyle;", "getLocalTextStyle", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "ProvideTextStyle", "", "value", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "Text", "text", "Landroidx/compose/ui/text/AnnotatedString;", "modifier", "Landroidx/compose/ui/Modifier;", "color", "Landroidx/compose/ui/graphics/Color;", "fontSize", "Landroidx/compose/ui/unit/TextUnit;", "fontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "fontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "fontFamily", "Landroidx/compose/ui/text/font/FontFamily;", "letterSpacing", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "textAlign", "Landroidx/compose/ui/text/style/TextAlign;", "lineHeight", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "softWrap", "", "maxLines", "", "minLines", "inlineContent", "", "", "Landroidx/compose/foundation/text/InlineTextContent;", "onTextLayout", "Lkotlin/Function1;", "Landroidx/compose/ui/text/TextLayoutResult;", "style", "Text-IbK3jfQ", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V", "Text--4IGK_g", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V", "Text-fLXpl1I", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextKt {
    private static final ProvidableCompositionLocal<TextStyle> LocalTextStyle = CompositionLocalKt.compositionLocalOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<TextStyle>() { // from class: androidx.compose.material3.TextKt$LocalTextStyle$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final TextStyle invoke() {
            return TypographyTokensKt.getDefaultTextStyle();
        }
    });

    public static final ProvidableCompositionLocal<TextStyle> getLocalTextStyle() {
        return LocalTextStyle;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0362  */
    /* renamed from: Text--4IGK_g, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1562Text4IGK_g(final java.lang.String r65, androidx.compose.ui.Modifier r66, long r67, long r69, androidx.compose.ui.text.font.FontStyle r71, androidx.compose.ui.text.font.FontWeight r72, androidx.compose.ui.text.font.FontFamily r73, long r74, androidx.compose.ui.text.style.TextDecoration r76, androidx.compose.ui.text.style.TextAlign r77, long r78, int r80, boolean r81, int r82, int r83, kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r84, androidx.compose.ui.text.TextStyle r85, androidx.compose.runtime.Composer r86, final int r87, final int r88, final int r89) {
        /*
            Method dump skipped, instructions count: 1131
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextKt.m1562Text4IGK_g(java.lang.String, androidx.compose.ui.Modifier, long, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, int, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02a3  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use version with minLines instead")
    /* renamed from: Text-fLXpl1I, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m1564TextfLXpl1I(final java.lang.String r49, androidx.compose.ui.Modifier r50, long r51, long r53, androidx.compose.ui.text.font.FontStyle r55, androidx.compose.ui.text.font.FontWeight r56, androidx.compose.ui.text.font.FontFamily r57, long r58, androidx.compose.ui.text.style.TextDecoration r60, androidx.compose.ui.text.style.TextAlign r61, long r62, int r64, boolean r65, int r66, kotlin.jvm.functions.Function1 r67, androidx.compose.ui.text.TextStyle r68, androidx.compose.runtime.Composer r69, final int r70, final int r71, final int r72) {
        /*
            Method dump skipped, instructions count: 1011
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextKt.m1564TextfLXpl1I(java.lang.String, androidx.compose.ui.Modifier, long, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x039a  */
    /* renamed from: Text-IbK3jfQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1563TextIbK3jfQ(final androidx.compose.ui.text.AnnotatedString r67, androidx.compose.ui.Modifier r68, long r69, long r71, androidx.compose.ui.text.font.FontStyle r73, androidx.compose.ui.text.font.FontWeight r74, androidx.compose.ui.text.font.FontFamily r75, long r76, androidx.compose.ui.text.style.TextDecoration r78, androidx.compose.ui.text.style.TextAlign r79, long r80, int r82, boolean r83, int r84, int r85, java.util.Map<java.lang.String, androidx.compose.foundation.text.InlineTextContent> r86, kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r87, androidx.compose.ui.text.TextStyle r88, androidx.compose.runtime.Composer r89, final int r90, final int r91, final int r92) {
        /*
            Method dump skipped, instructions count: 1160
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextKt.m1563TextIbK3jfQ(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, long, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, int, java.util.Map, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0298  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use version with minLines instead")
    /* renamed from: Text--4IGK_g, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m1561Text4IGK_g(final androidx.compose.ui.text.AnnotatedString r51, androidx.compose.ui.Modifier r52, long r53, long r55, androidx.compose.ui.text.font.FontStyle r57, androidx.compose.ui.text.font.FontWeight r58, androidx.compose.ui.text.font.FontFamily r59, long r60, androidx.compose.ui.text.style.TextDecoration r62, androidx.compose.ui.text.style.TextAlign r63, long r64, int r66, boolean r67, int r68, java.util.Map r69, kotlin.jvm.functions.Function1 r70, androidx.compose.ui.text.TextStyle r71, androidx.compose.runtime.Composer r72, final int r73, final int r74, final int r75) {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextKt.m1561Text4IGK_g(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, long, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, java.util.Map, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int):void");
    }

    public static final void ProvideTextStyle(final TextStyle value, final Function2<? super Composer, ? super Integer, Unit> content, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-460300127);
        ComposerKt.sourceInformation(startRestartGroup, "C(ProvideTextStyle)P(1)358@14903L7,359@14928L80:Text.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(value) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(content) ? 32 : 16;
        }
        if ((i2 & 91) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-460300127, i2, -1, "androidx.compose.material3.ProvideTextStyle (Text.kt:357)");
            }
            ProvidableCompositionLocal<TextStyle> providableCompositionLocal = LocalTextStyle;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(providableCompositionLocal);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{providableCompositionLocal.provides(((TextStyle) consume).merge(value))}, content, startRestartGroup, (i2 & 112) | 8);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TextKt$ProvideTextStyle$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i3) {
                TextKt.ProvideTextStyle(TextStyle.this, content, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }
}
