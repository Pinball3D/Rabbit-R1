package androidx.compose.material3;

import kotlin.Metadata;

/* compiled from: Card.kt */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0081\u0001\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007¢\u0006\u0002\u0010\u0017\u001a_\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007¢\u0006\u0002\u0010\u0018\u001au\u0010\u0019\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007¢\u0006\u0002\u0010\u001a\u001aS\u0010\u0019\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007¢\u0006\u0002\u0010\u001b\u001a\u007f\u0010\u001c\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007¢\u0006\u0002\u0010\u0017\u001a]\u0010\u001c\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007¢\u0006\u0002\u0010\u0018¨\u0006\u001d"}, d2 = {"Card", "", "onClick", "Lkotlin/Function0;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "", "shape", "Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material3/CardColors;", "elevation", "Landroidx/compose/material3/CardElevation;", "border", "Landroidx/compose/foundation/BorderStroke;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "ElevatedCard", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "OutlinedCard", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CardKt {
    /* JADX WARN: Removed duplicated region for block: B:42:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Card(androidx.compose.ui.Modifier r26, androidx.compose.ui.graphics.Shape r27, androidx.compose.material3.CardColors r28, androidx.compose.material3.CardElevation r29, androidx.compose.foundation.BorderStroke r30, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, androidx.compose.runtime.Composer r32, final int r33, final int r34) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.Card(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, androidx.compose.foundation.BorderStroke, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Card(final kotlin.jvm.functions.Function0<kotlin.Unit> r31, androidx.compose.ui.Modifier r32, boolean r33, androidx.compose.ui.graphics.Shape r34, androidx.compose.material3.CardColors r35, androidx.compose.material3.CardElevation r36, androidx.compose.foundation.BorderStroke r37, androidx.compose.foundation.interaction.MutableInteractionSource r38, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r39, androidx.compose.runtime.Composer r40, final int r41, final int r42) {
        /*
            Method dump skipped, instructions count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.Card(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, androidx.compose.foundation.BorderStroke, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x016e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ElevatedCard(androidx.compose.ui.Modifier r23, androidx.compose.ui.graphics.Shape r24, androidx.compose.material3.CardColors r25, androidx.compose.material3.CardElevation r26, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r27, androidx.compose.runtime.Composer r28, final int r29, final int r30) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.ElevatedCard(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0157  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ElevatedCard(final kotlin.jvm.functions.Function0<kotlin.Unit> r36, androidx.compose.ui.Modifier r37, boolean r38, androidx.compose.ui.graphics.Shape r39, androidx.compose.material3.CardColors r40, androidx.compose.material3.CardElevation r41, androidx.compose.foundation.interaction.MutableInteractionSource r42, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, androidx.compose.runtime.Composer r44, final int r45, final int r46) {
        /*
            Method dump skipped, instructions count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.ElevatedCard(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedCard(androidx.compose.ui.Modifier r25, androidx.compose.ui.graphics.Shape r26, androidx.compose.material3.CardColors r27, androidx.compose.material3.CardElevation r28, androidx.compose.foundation.BorderStroke r29, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, androidx.compose.runtime.Composer r31, final int r32, final int r33) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.OutlinedCard(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, androidx.compose.foundation.BorderStroke, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedCard(final kotlin.jvm.functions.Function0<kotlin.Unit> r35, androidx.compose.ui.Modifier r36, boolean r37, androidx.compose.ui.graphics.Shape r38, androidx.compose.material3.CardColors r39, androidx.compose.material3.CardElevation r40, androidx.compose.foundation.BorderStroke r41, androidx.compose.foundation.interaction.MutableInteractionSource r42, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, androidx.compose.runtime.Composer r44, final int r45, final int r46) {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.OutlinedCard(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, androidx.compose.foundation.BorderStroke, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }
}
