package androidx.compose.material3;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: AndroidAlertDialog.android.kt */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aâ\u0001\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u0011\u0010\b\u001a\r\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\b\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u0015\b\u0002\u0010\f\u001a\u000f\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\u0002\b\t2\u0015\b\u0002\u0010\r\u001a\u000f\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\u0002\b\t2\u0015\b\u0002\u0010\u000e\u001a\u000f\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\u0002\b\t2\u0015\b\u0002\u0010\u000f\u001a\u000f\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\u0002\b\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u00132\b\b\u0002\u0010\u0017\u001a\u00020\u00012\b\b\u0002\u0010\u0018\u001a\u00020\u0019H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001aB\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\u0011\u0010\u001c\u001a\r\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\b\tH\u0007¢\u0006\u0002\u0010\u001d\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0003\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u001e"}, d2 = {"ButtonsCrossAxisSpacing", "Landroidx/compose/ui/unit/Dp;", "F", "ButtonsMainAxisSpacing", "AlertDialog", "", "onDismissRequest", "Lkotlin/Function0;", "confirmButton", "Landroidx/compose/runtime/Composable;", "modifier", "Landroidx/compose/ui/Modifier;", "dismissButton", "icon", "title", "text", "shape", "Landroidx/compose/ui/graphics/Shape;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "iconContentColor", "titleContentColor", "textContentColor", "tonalElevation", "properties", "Landroidx/compose/ui/window/DialogProperties;", "AlertDialog-Oix01E0", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V", "content", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidAlertDialog_androidKt {
    private static final float ButtonsMainAxisSpacing = Dp.m4883constructorimpl(8);
    private static final float ButtonsCrossAxisSpacing = Dp.m4883constructorimpl(12);

    /* JADX WARN: Removed duplicated region for block: B:107:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01f3  */
    /* renamed from: AlertDialog-Oix01E0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m985AlertDialogOix01E0(final kotlin.jvm.functions.Function0<kotlin.Unit> r38, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r39, androidx.compose.ui.Modifier r40, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r41, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r42, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r44, androidx.compose.ui.graphics.Shape r45, long r46, long r48, long r50, long r52, float r54, androidx.compose.ui.window.DialogProperties r55, androidx.compose.runtime.Composer r56, final int r57, final int r58, final int r59) {
        /*
            Method dump skipped, instructions count: 909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AndroidAlertDialog_androidKt.m985AlertDialogOix01E0(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, long, long, long, long, float, androidx.compose.ui.window.DialogProperties, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AlertDialog(final kotlin.jvm.functions.Function0<kotlin.Unit> r17, androidx.compose.ui.Modifier r18, androidx.compose.ui.window.DialogProperties r19, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r20, androidx.compose.runtime.Composer r21, final int r22, final int r23) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AndroidAlertDialog_androidKt.AlertDialog(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.ui.window.DialogProperties, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }
}
