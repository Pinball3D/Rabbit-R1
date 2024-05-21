package androidx.compose.material3;

import kotlin.Metadata;

/* compiled from: Button.kt */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u008d\u0001\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u001c\u0010\u0014\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u0015¢\u0006\u0002\b\u0017¢\u0006\u0002\b\u0018H\u0007¢\u0006\u0002\u0010\u0019\u001a\u008d\u0001\u0010\u001a\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u001c\u0010\u0014\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u0015¢\u0006\u0002\b\u0017¢\u0006\u0002\b\u0018H\u0007¢\u0006\u0002\u0010\u0019\u001a\u008d\u0001\u0010\u001b\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u001c\u0010\u0014\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u0015¢\u0006\u0002\b\u0017¢\u0006\u0002\b\u0018H\u0007¢\u0006\u0002\u0010\u0019\u001a\u008d\u0001\u0010\u001c\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u001c\u0010\u0014\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u0015¢\u0006\u0002\b\u0017¢\u0006\u0002\b\u0018H\u0007¢\u0006\u0002\u0010\u0019\u001a\u008d\u0001\u0010\u001d\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u001c\u0010\u0014\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u0015¢\u0006\u0002\b\u0017¢\u0006\u0002\b\u0018H\u0007¢\u0006\u0002\u0010\u0019¨\u0006\u001e"}, d2 = {"Button", "", "onClick", "Lkotlin/Function0;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "", "shape", "Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material3/ButtonColors;", "elevation", "Landroidx/compose/material3/ButtonElevation;", "border", "Landroidx/compose/foundation/BorderStroke;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "ElevatedButton", "FilledTonalButton", "OutlinedButton", "TextButton", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ButtonKt {
    /* JADX WARN: Removed duplicated region for block: B:100:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0296  */
    /* JADX WARN: Type inference failed for: r4v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Button(final kotlin.jvm.functions.Function0<kotlin.Unit> r34, androidx.compose.ui.Modifier r35, boolean r36, androidx.compose.ui.graphics.Shape r37, androidx.compose.material3.ButtonColors r38, androidx.compose.material3.ButtonElevation r39, androidx.compose.foundation.BorderStroke r40, androidx.compose.foundation.layout.PaddingValues r41, androidx.compose.foundation.interaction.MutableInteractionSource r42, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, androidx.compose.runtime.Composer r44, final int r45, final int r46) {
        /*
            Method dump skipped, instructions count: 896
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ButtonKt.Button(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ButtonColors, androidx.compose.material3.ButtonElevation, androidx.compose.foundation.BorderStroke, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x020e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ElevatedButton(final kotlin.jvm.functions.Function0<kotlin.Unit> r37, androidx.compose.ui.Modifier r38, boolean r39, androidx.compose.ui.graphics.Shape r40, androidx.compose.material3.ButtonColors r41, androidx.compose.material3.ButtonElevation r42, androidx.compose.foundation.BorderStroke r43, androidx.compose.foundation.layout.PaddingValues r44, androidx.compose.foundation.interaction.MutableInteractionSource r45, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r46, androidx.compose.runtime.Composer r47, final int r48, final int r49) {
        /*
            Method dump skipped, instructions count: 729
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ButtonKt.ElevatedButton(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ButtonColors, androidx.compose.material3.ButtonElevation, androidx.compose.foundation.BorderStroke, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x020e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void FilledTonalButton(final kotlin.jvm.functions.Function0<kotlin.Unit> r37, androidx.compose.ui.Modifier r38, boolean r39, androidx.compose.ui.graphics.Shape r40, androidx.compose.material3.ButtonColors r41, androidx.compose.material3.ButtonElevation r42, androidx.compose.foundation.BorderStroke r43, androidx.compose.foundation.layout.PaddingValues r44, androidx.compose.foundation.interaction.MutableInteractionSource r45, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r46, androidx.compose.runtime.Composer r47, final int r48, final int r49) {
        /*
            Method dump skipped, instructions count: 729
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ButtonKt.FilledTonalButton(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ButtonColors, androidx.compose.material3.ButtonElevation, androidx.compose.foundation.BorderStroke, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedButton(final kotlin.jvm.functions.Function0<kotlin.Unit> r32, androidx.compose.ui.Modifier r33, boolean r34, androidx.compose.ui.graphics.Shape r35, androidx.compose.material3.ButtonColors r36, androidx.compose.material3.ButtonElevation r37, androidx.compose.foundation.BorderStroke r38, androidx.compose.foundation.layout.PaddingValues r39, androidx.compose.foundation.interaction.MutableInteractionSource r40, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r41, androidx.compose.runtime.Composer r42, final int r43, final int r44) {
        /*
            Method dump skipped, instructions count: 701
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ButtonKt.OutlinedButton(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ButtonColors, androidx.compose.material3.ButtonElevation, androidx.compose.foundation.BorderStroke, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TextButton(final kotlin.jvm.functions.Function0<kotlin.Unit> r33, androidx.compose.ui.Modifier r34, boolean r35, androidx.compose.ui.graphics.Shape r36, androidx.compose.material3.ButtonColors r37, androidx.compose.material3.ButtonElevation r38, androidx.compose.foundation.BorderStroke r39, androidx.compose.foundation.layout.PaddingValues r40, androidx.compose.foundation.interaction.MutableInteractionSource r41, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r42, androidx.compose.runtime.Composer r43, final int r44, final int r45) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ButtonKt.TextButton(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ButtonColors, androidx.compose.material3.ButtonElevation, androidx.compose.foundation.BorderStroke, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }
}
