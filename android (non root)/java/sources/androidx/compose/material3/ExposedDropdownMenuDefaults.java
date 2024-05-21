package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowDropDownKt;
import androidx.compose.material3.tokens.FilledAutocompleteTokens;
import androidx.compose.material3.tokens.OutlinedAutocompleteTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.RotateKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: ExposedDropdownMenu.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b3\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u000bJ\u0085\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u000f2\b\b\u0002\u0010\u0017\u001a\u00020\u000f2\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\b\b\u0002\u0010\u0019\u001a\u00020\u000f2\b\b\u0002\u0010\u001a\u001a\u00020\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u000f2\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u000f2\b\b\u0002\u0010\u001e\u001a\u00020\u000f2\b\b\u0002\u0010\u001f\u001a\u00020\u000f2\b\b\u0002\u0010 \u001a\u00020\u000f2\b\b\u0002\u0010!\u001a\u00020\u000f2\b\b\u0002\u0010\"\u001a\u00020\u000f2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020\u000f2\b\b\u0002\u0010%\u001a\u00020\u000f2\b\b\u0002\u0010&\u001a\u00020\u000f2\b\b\u0002\u0010'\u001a\u00020\u000fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b(\u0010)J\u0087\u0003\u0010\f\u001a\u00020\r2\b\b\u0002\u0010*\u001a\u00020\u000f2\b\b\u0002\u0010+\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010,\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u000f2\b\b\u0002\u0010-\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u000f2\b\b\u0002\u0010\u0017\u001a\u00020\u000f2\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\b\b\u0002\u0010\u0019\u001a\u00020\u000f2\b\b\u0002\u0010\u001a\u001a\u00020\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u000f2\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u000f2\b\b\u0002\u0010\u001e\u001a\u00020\u000f2\b\b\u0002\u0010\u001f\u001a\u00020\u000f2\b\b\u0002\u0010 \u001a\u00020\u000f2\b\b\u0002\u0010!\u001a\u00020\u000f2\b\b\u0002\u0010\"\u001a\u00020\u000f2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020\u000f2\b\b\u0002\u0010%\u001a\u00020\u000f2\b\b\u0002\u0010.\u001a\u00020\u000f2\b\b\u0002\u0010/\u001a\u00020\u000f2\b\b\u0002\u0010'\u001a\u00020\u000f2\b\b\u0002\u00100\u001a\u00020\u000f2\b\b\u0002\u00101\u001a\u00020\u000f2\b\b\u0002\u00102\u001a\u00020\u000f2\b\b\u0002\u00103\u001a\u00020\u000f2\b\b\u0002\u00104\u001a\u00020\u000f2\b\b\u0002\u00105\u001a\u00020\u000f2\b\b\u0002\u00106\u001a\u00020\u000f2\b\b\u0002\u00107\u001a\u00020\u000f2\b\b\u0002\u00108\u001a\u00020\u000fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b9\u0010:J\u009b\u0003\u0010\f\u001a\u00020\r2\b\b\u0002\u0010*\u001a\u00020\u000f2\b\b\u0002\u0010+\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010,\u001a\u00020\u000f2\b\b\u0002\u0010;\u001a\u00020\u000f2\b\b\u0002\u0010<\u001a\u00020\u000f2\b\b\u0002\u0010=\u001a\u00020\u000f2\b\b\u0002\u0010-\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u000f2\b\b\u0002\u0010\u0017\u001a\u00020\u000f2\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\b\b\u0002\u0010\u0019\u001a\u00020\u000f2\b\b\u0002\u0010\u001a\u001a\u00020\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u000f2\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u000f2\b\b\u0002\u0010\u001e\u001a\u00020\u000f2\b\b\u0002\u0010\u001f\u001a\u00020\u000f2\b\b\u0002\u0010 \u001a\u00020\u000f2\b\b\u0002\u0010!\u001a\u00020\u000f2\b\b\u0002\u0010\"\u001a\u00020\u000f2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020\u000f2\b\b\u0002\u0010%\u001a\u00020\u000f2\b\b\u0002\u0010.\u001a\u00020\u000f2\b\b\u0002\u0010/\u001a\u00020\u000f2\b\b\u0002\u0010'\u001a\u00020\u000f2\b\b\u0002\u00100\u001a\u00020\u000f2\b\b\u0002\u00101\u001a\u00020\u000f2\b\b\u0002\u00102\u001a\u00020\u000f2\b\b\u0002\u00103\u001a\u00020\u000f2\b\b\u0002\u00104\u001a\u00020\u000f2\b\b\u0002\u00105\u001a\u00020\u000f2\b\b\u0002\u00106\u001a\u00020\u000f2\b\b\u0002\u00107\u001a\u00020\u000f2\b\b\u0002\u00108\u001a\u00020\u000fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b>\u0010?J\u0085\u0002\u0010@\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010A\u001a\u00020\u000f2\b\b\u0002\u0010B\u001a\u00020\u000f2\b\b\u0002\u0010C\u001a\u00020\u000f2\b\b\u0002\u0010D\u001a\u00020\u000f2\b\b\u0002\u0010\u001a\u001a\u00020\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u000f2\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u000f2\b\b\u0002\u0010\u001e\u001a\u00020\u000f2\b\b\u0002\u0010\u001f\u001a\u00020\u000f2\b\b\u0002\u0010 \u001a\u00020\u000f2\b\b\u0002\u0010!\u001a\u00020\u000f2\b\b\u0002\u0010\"\u001a\u00020\u000f2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020\u000f2\b\b\u0002\u0010%\u001a\u00020\u000f2\b\b\u0002\u0010&\u001a\u00020\u000f2\b\b\u0002\u0010'\u001a\u00020\u000fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bE\u0010)J\u0087\u0003\u0010@\u001a\u00020\r2\b\b\u0002\u0010*\u001a\u00020\u000f2\b\b\u0002\u0010+\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010,\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u000f2\b\b\u0002\u0010-\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010A\u001a\u00020\u000f2\b\b\u0002\u0010B\u001a\u00020\u000f2\b\b\u0002\u0010C\u001a\u00020\u000f2\b\b\u0002\u0010D\u001a\u00020\u000f2\b\b\u0002\u0010\u001a\u001a\u00020\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u000f2\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u000f2\b\b\u0002\u0010\u001e\u001a\u00020\u000f2\b\b\u0002\u0010\u001f\u001a\u00020\u000f2\b\b\u0002\u0010 \u001a\u00020\u000f2\b\b\u0002\u0010!\u001a\u00020\u000f2\b\b\u0002\u0010\"\u001a\u00020\u000f2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020\u000f2\b\b\u0002\u0010%\u001a\u00020\u000f2\b\b\u0002\u0010.\u001a\u00020\u000f2\b\b\u0002\u0010/\u001a\u00020\u000f2\b\b\u0002\u0010'\u001a\u00020\u000f2\b\b\u0002\u00100\u001a\u00020\u000f2\b\b\u0002\u00101\u001a\u00020\u000f2\b\b\u0002\u00102\u001a\u00020\u000f2\b\b\u0002\u00103\u001a\u00020\u000f2\b\b\u0002\u00104\u001a\u00020\u000f2\b\b\u0002\u00105\u001a\u00020\u000f2\b\b\u0002\u00106\u001a\u00020\u000f2\b\b\u0002\u00107\u001a\u00020\u000f2\b\b\u0002\u00108\u001a\u00020\u000fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bF\u0010:J\u009b\u0003\u0010@\u001a\u00020\r2\b\b\u0002\u0010*\u001a\u00020\u000f2\b\b\u0002\u0010+\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010,\u001a\u00020\u000f2\b\b\u0002\u0010;\u001a\u00020\u000f2\b\b\u0002\u0010<\u001a\u00020\u000f2\b\b\u0002\u0010=\u001a\u00020\u000f2\b\b\u0002\u0010-\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010A\u001a\u00020\u000f2\b\b\u0002\u0010B\u001a\u00020\u000f2\b\b\u0002\u0010C\u001a\u00020\u000f2\b\b\u0002\u0010D\u001a\u00020\u000f2\b\b\u0002\u0010\u001a\u001a\u00020\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u000f2\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u000f2\b\b\u0002\u0010\u001e\u001a\u00020\u000f2\b\b\u0002\u0010\u001f\u001a\u00020\u000f2\b\b\u0002\u0010 \u001a\u00020\u000f2\b\b\u0002\u0010!\u001a\u00020\u000f2\b\b\u0002\u0010\"\u001a\u00020\u000f2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020\u000f2\b\b\u0002\u0010%\u001a\u00020\u000f2\b\b\u0002\u0010.\u001a\u00020\u000f2\b\b\u0002\u0010/\u001a\u00020\u000f2\b\b\u0002\u0010'\u001a\u00020\u000f2\b\b\u0002\u00100\u001a\u00020\u000f2\b\b\u0002\u00101\u001a\u00020\u000f2\b\b\u0002\u00102\u001a\u00020\u000f2\b\b\u0002\u00103\u001a\u00020\u000f2\b\b\u0002\u00104\u001a\u00020\u000f2\b\b\u0002\u00105\u001a\u00020\u000f2\b\b\u0002\u00106\u001a\u00020\u000f2\b\b\u0002\u00107\u001a\u00020\u000f2\b\b\u0002\u00108\u001a\u00020\u000fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bG\u0010?R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006H"}, d2 = {"Landroidx/compose/material3/ExposedDropdownMenuDefaults;", "", "()V", "ItemContentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "getItemContentPadding", "()Landroidx/compose/foundation/layout/PaddingValues;", "TrailingIcon", "", "expanded", "", "(ZLandroidx/compose/runtime/Composer;I)V", "outlinedTextFieldColors", "Landroidx/compose/material3/TextFieldColors;", "textColor", "Landroidx/compose/ui/graphics/Color;", "disabledTextColor", "containerColor", "cursorColor", "errorCursorColor", "selectionColors", "Landroidx/compose/foundation/text/selection/TextSelectionColors;", "focusedBorderColor", "unfocusedBorderColor", "disabledBorderColor", "errorBorderColor", "focusedLeadingIconColor", "unfocusedLeadingIconColor", "disabledLeadingIconColor", "errorLeadingIconColor", "focusedTrailingIconColor", "unfocusedTrailingIconColor", "disabledTrailingIconColor", "errorTrailingIconColor", "focusedLabelColor", "unfocusedLabelColor", "disabledLabelColor", "errorLabelColor", "placeholderColor", "disabledPlaceholderColor", "outlinedTextFieldColors-St-qZLY", "(JJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/TextFieldColors;", "focusedTextColor", "unfocusedTextColor", "errorTextColor", "errorContainerColor", "focusedPlaceholderColor", "unfocusedPlaceholderColor", "errorPlaceholderColor", "focusedPrefixColor", "unfocusedPrefixColor", "disabledPrefixColor", "errorPrefixColor", "focusedSuffixColor", "unfocusedSuffixColor", "disabledSuffixColor", "errorSuffixColor", "outlinedTextFieldColors-tN0la-I", "(JJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIII)Landroidx/compose/material3/TextFieldColors;", "focusedContainerColor", "unfocusedContainerColor", "disabledContainerColor", "outlinedTextFieldColors-FD9MK7s", "(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIII)Landroidx/compose/material3/TextFieldColors;", "textFieldColors", "focusedIndicatorColor", "unfocusedIndicatorColor", "disabledIndicatorColor", "errorIndicatorColor", "textFieldColors-St-qZLY", "textFieldColors-tN0la-I", "textFieldColors-FD9MK7s", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ExposedDropdownMenuDefaults {
    public static final int $stable = 0;
    public static final ExposedDropdownMenuDefaults INSTANCE = new ExposedDropdownMenuDefaults();
    private static final PaddingValues ItemContentPadding;

    public final PaddingValues getItemContentPadding() {
        return ItemContentPadding;
    }

    private ExposedDropdownMenuDefaults() {
    }

    public final void TrailingIcon(final boolean z, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-1803742020);
        ComposerKt.sourceInformation(startRestartGroup, "C(TrailingIcon)301@12373L129:ExposedDropdownMenu.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 11) != 2 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1803742020, i, -1, "androidx.compose.material3.ExposedDropdownMenuDefaults.TrailingIcon (ExposedDropdownMenu.kt:300)");
            }
            IconKt.m1246Iconww6aTOc(ArrowDropDownKt.getArrowDropDown(Icons.Filled.INSTANCE), (String) null, RotateKt.rotate(Modifier.INSTANCE, z ? 180.0f : 0.0f), 0L, startRestartGroup, 48, 8);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ExposedDropdownMenuDefaults$TrailingIcon$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i3) {
                ExposedDropdownMenuDefaults.this.TrailingIcon(z, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* renamed from: textFieldColors-FD9MK7s, reason: not valid java name */
    public final TextFieldColors m1204textFieldColorsFD9MK7s(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, TextSelectionColors textSelectionColors, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, Composer composer, int i, int i2, int i3, int i4, int i5, int i6) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(-375683630);
        ComposerKt.sourceInformation(composer, "C(textFieldColors)P(27:c#ui.graphics.Color,37:c#ui.graphics.Color,8:c#ui.graphics.Color,18:c#ui.graphics.Color,20:c#ui.graphics.Color,30:c#ui.graphics.Color,1:c#ui.graphics.Color,10:c#ui.graphics.Color,0:c#ui.graphics.Color,11:c#ui.graphics.Color,29,21:c#ui.graphics.Color,31:c#ui.graphics.Color,2:c#ui.graphics.Color,12:c#ui.graphics.Color,23:c#ui.graphics.Color,33:c#ui.graphics.Color,4:c#ui.graphics.Color,14:c#ui.graphics.Color,28:c#ui.graphics.Color,38:c#ui.graphics.Color,9:c#ui.graphics.Color,19:c#ui.graphics.Color,22:c#ui.graphics.Color,32:c#ui.graphics.Color,3:c#ui.graphics.Color,13:c#ui.graphics.Color,24:c#ui.graphics.Color,34:c#ui.graphics.Color,5:c#ui.graphics.Color,15:c#ui.graphics.Color,25:c#ui.graphics.Color,35:c#ui.graphics.Color,6:c#ui.graphics.Color,16:c#ui.graphics.Color,26:c#ui.graphics.Color,36:c#ui.graphics.Color,7:c#ui.graphics.Color,17:c#ui.graphics.Color)358@16485L9,359@16577L9,360@16676L9,362@16851L9,363@16950L9,364@17051L9,365@17151L9,366@17248L9,367@17333L9,368@17433L9,369@17516L7,371@17636L9,373@17755L9,375@17881L9,378@18097L9,380@18217L9,382@18334L9,384@18458L9,387@18668L9,389@18790L9,391@18909L9,393@19035L9,396@19248L9,397@19344L9,398@19437L9,399@19537L9,400@19631L9,402@19745L9,404@19861L9,406@19984L9,408@20175L9,409@20272L9,410@20371L9,412@20490L9,413@20659L9,414@20756L9,415@20855L9,417@20974L9,418@21143L9,420@21205L2230:ExposedDropdownMenu.kt#uh7d8r");
        long color = (i5 & 1) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldFocusInputTextColor(), composer, 6) : j;
        long color2 = (i5 & 2) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldInputTextColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i5 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledInputTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i5 & 8) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldErrorInputTextColor(), composer, 6) : j4;
        long color4 = (i5 & 16) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldContainerColor(), composer, 6) : j5;
        long color5 = (i5 & 32) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldContainerColor(), composer, 6) : j6;
        long color6 = (i5 & 64) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldContainerColor(), composer, 6) : j7;
        long color7 = (i5 & 128) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldContainerColor(), composer, 6) : j8;
        long color8 = (i5 & 256) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldCaretColor(), composer, 6) : j9;
        long color9 = (i5 & 512) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorFocusCaretColor(), composer, 6) : j10;
        if ((i5 & 1024) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color10 = (i5 & 2048) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldFocusActiveIndicatorColor(), composer, 6) : j11;
        long color11 = (i5 & 4096) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldActiveIndicatorColor(), composer, 6) : j12;
        long m2638copywmQWz5c$default2 = (i5 & 8192) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldDisabledActiveIndicatorColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j13;
        long color12 = (i5 & 16384) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorActiveIndicatorColor(), composer, 6) : j14;
        long color13 = (32768 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldFocusLeadingIconColor(), composer, 6) : j15;
        long color14 = (65536 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldLeadingIconColor(), composer, 6) : j16;
        long m2638copywmQWz5c$default3 = (131072 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long color15 = (262144 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorLeadingIconColor(), composer, 6) : j18;
        long color16 = (524288 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldFocusTrailingIconColor(), composer, 6) : j19;
        long color17 = (1048576 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldTrailingIconColor(), composer, 6) : j20;
        long m2638copywmQWz5c$default4 = (2097152 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j21;
        long color18 = (4194304 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorTrailingIconColor(), composer, 6) : j22;
        long color19 = (8388608 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldFocusLabelTextColor(), composer, 6) : j23;
        long color20 = (16777216 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldLabelTextColor(), composer, 6) : j24;
        long color21 = (33554432 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledLabelTextColor(), composer, 6) : j25;
        long color22 = (67108864 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldErrorLabelTextColor(), composer, 6) : j26;
        long color23 = (134217728 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j27;
        long color24 = (268435456 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j28;
        long m2638copywmQWz5c$default5 = (536870912 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j29;
        long color25 = (i5 & 1073741824) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j30;
        long color26 = (i6 & 1) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j31;
        long color27 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j32;
        long m2638copywmQWz5c$default6 = (i6 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j33;
        long color28 = (i6 & 8) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j34;
        long color29 = (i6 & 16) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j35;
        long color30 = (i6 & 32) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j36;
        long m2638copywmQWz5c$default7 = (i6 & 64) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j37;
        long color31 = (i6 & 128) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j38;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-375683630, i, i2, "androidx.compose.material3.ExposedDropdownMenuDefaults.textFieldColors (ExposedDropdownMenu.kt:357)");
        }
        int i7 = i4 << 12;
        int i8 = i4 >> 18;
        TextFieldColors m1532colors0hiis_0 = TextFieldDefaults.INSTANCE.m1532colors0hiis_0(color, color2, m2638copywmQWz5c$default, color3, color4, color5, color6, color7, color8, color9, textSelectionColors2, color10, color11, m2638copywmQWz5c$default2, color12, color13, color14, m2638copywmQWz5c$default3, color15, color16, color17, m2638copywmQWz5c$default4, color18, color19, color20, color21, color22, color23, color24, m2638copywmQWz5c$default5, color25, 0L, 0L, 0L, 0L, color26, color27, m2638copywmQWz5c$default6, color28, color29, color30, m2638copywmQWz5c$default7, color31, composer, (i & 14) | (i & 112) | (i & 896) | (i & 7168) | (i & 57344) | (i & 458752) | (i & 3670016) | (i & 29360128) | (i & 234881024) | (i & 1879048192), (i2 & 14) | (i2 & 112) | (i2 & 896) | (i2 & 7168) | (i2 & 57344) | (i2 & 458752) | (i2 & 3670016) | (i2 & 29360128) | (i2 & 234881024) | (i2 & 1879048192), (i3 & 14) | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (i3 & 57344) | (i3 & 458752) | (i3 & 3670016) | (i3 & 29360128) | (i3 & 234881024) | (i3 & 1879048192), (i4 & 14) | (i7 & 458752) | (i7 & 3670016) | (i7 & 29360128) | (i7 & 234881024) | (i7 & 1879048192), (i8 & 14) | 3072 | (i8 & 112) | (i8 & 896), 0, 15);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1532colors0hiis_0;
    }

    /* renamed from: outlinedTextFieldColors-FD9MK7s, reason: not valid java name */
    public final TextFieldColors m1201outlinedTextFieldColorsFD9MK7s(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, TextSelectionColors textSelectionColors, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, Composer composer, int i, int i2, int i3, int i4, int i5, int i6) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(-325161132);
        ComposerKt.sourceInformation(composer, "C(outlinedTextFieldColors)P(27:c#ui.graphics.Color,37:c#ui.graphics.Color,8:c#ui.graphics.Color,18:c#ui.graphics.Color,21:c#ui.graphics.Color,31:c#ui.graphics.Color,2:c#ui.graphics.Color,11:c#ui.graphics.Color,0:c#ui.graphics.Color,12:c#ui.graphics.Color,29,20:c#ui.graphics.Color,30:c#ui.graphics.Color,1:c#ui.graphics.Color,10:c#ui.graphics.Color,23:c#ui.graphics.Color,33:c#ui.graphics.Color,4:c#ui.graphics.Color,14:c#ui.graphics.Color,28:c#ui.graphics.Color,38:c#ui.graphics.Color,9:c#ui.graphics.Color,19:c#ui.graphics.Color,22:c#ui.graphics.Color,32:c#ui.graphics.Color,3:c#ui.graphics.Color,13:c#ui.graphics.Color,24:c#ui.graphics.Color,34:c#ui.graphics.Color,5:c#ui.graphics.Color,15:c#ui.graphics.Color,25:c#ui.graphics.Color,35:c#ui.graphics.Color,6:c#ui.graphics.Color,16:c#ui.graphics.Color,26:c#ui.graphics.Color,36:c#ui.graphics.Color,7:c#ui.graphics.Color,17:c#ui.graphics.Color)511@27400L9,512@27494L9,513@27595L9,515@27774L9,520@28094L9,522@28208L9,523@28291L7,524@28390L9,525@28488L9,527@28605L9,529@28794L9,531@28916L9,533@29035L9,535@29161L9,538@29375L9,540@29499L9,542@29620L9,544@29748L9,547@29965L9,548@30063L9,549@30158L9,550@30260L9,552@30440L9,554@30556L9,556@30674L9,558@30799L9,561@31006L9,562@31105L9,563@31206L9,565@31327L9,566@31500L9,567@31599L9,568@31700L9,570@31821L9,571@31994L9,573@32064L2206:ExposedDropdownMenu.kt#uh7d8r");
        long color = (i5 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldFocusInputTextColor(), composer, 6) : j;
        long color2 = (i5 & 2) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldInputTextColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i5 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledInputTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i5 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldErrorInputTextColor(), composer, 6) : j4;
        long m2674getTransparent0d7_KjU = (i5 & 16) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j5;
        long m2674getTransparent0d7_KjU2 = (i5 & 32) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j6;
        long m2674getTransparent0d7_KjU3 = (i5 & 64) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j7;
        long m2674getTransparent0d7_KjU4 = (i5 & 128) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j8;
        long color4 = (i5 & 256) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldCaretColor(), composer, 6) : j9;
        long color5 = (i5 & 512) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorFocusCaretColor(), composer, 6) : j10;
        if ((i5 & 1024) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color6 = (i5 & 2048) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldFocusOutlineColor(), composer, 6) : j11;
        long color7 = (i5 & 4096) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldOutlineColor(), composer, 6) : j12;
        long m2638copywmQWz5c$default2 = (i5 & 8192) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldDisabledOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j13;
        long color8 = (i5 & 16384) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorOutlineColor(), composer, 6) : j14;
        long color9 = (32768 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldFocusLeadingIconColor(), composer, 6) : j15;
        long color10 = (65536 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldLeadingIconColor(), composer, 6) : j16;
        long m2638copywmQWz5c$default3 = (131072 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long color11 = (262144 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorLeadingIconColor(), composer, 6) : j18;
        long color12 = (524288 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldFocusTrailingIconColor(), composer, 6) : j19;
        long color13 = (1048576 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldTrailingIconColor(), composer, 6) : j20;
        long m2638copywmQWz5c$default4 = (2097152 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j21;
        long color14 = (4194304 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorTrailingIconColor(), composer, 6) : j22;
        long color15 = (8388608 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldFocusLabelTextColor(), composer, 6) : j23;
        long color16 = (16777216 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldLabelTextColor(), composer, 6) : j24;
        long m2638copywmQWz5c$default5 = (33554432 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledLabelTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j25;
        long color17 = (67108864 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldErrorLabelTextColor(), composer, 6) : j26;
        long color18 = (134217728 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j27;
        long color19 = (268435456 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j28;
        long m2638copywmQWz5c$default6 = (536870912 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j29;
        long color20 = (i5 & 1073741824) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j30;
        long color21 = (i6 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j31;
        long color22 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j32;
        long m2638copywmQWz5c$default7 = (i6 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j33;
        long color23 = (i6 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j34;
        long color24 = (i6 & 16) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j35;
        long color25 = (i6 & 32) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j36;
        long m2638copywmQWz5c$default8 = (i6 & 64) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j37;
        long color26 = (i6 & 128) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j38;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-325161132, i, i2, "androidx.compose.material3.ExposedDropdownMenuDefaults.outlinedTextFieldColors (ExposedDropdownMenu.kt:510)");
        }
        int i7 = i4 << 12;
        int i8 = i4 >> 18;
        TextFieldColors m1327colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m1327colors0hiis_0(color, color2, m2638copywmQWz5c$default, color3, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU2, m2674getTransparent0d7_KjU3, m2674getTransparent0d7_KjU4, color4, color5, textSelectionColors2, color6, color7, m2638copywmQWz5c$default2, color8, color9, color10, m2638copywmQWz5c$default3, color11, color12, color13, m2638copywmQWz5c$default4, color14, color15, color16, m2638copywmQWz5c$default5, color17, color18, color19, m2638copywmQWz5c$default6, color20, 0L, 0L, 0L, 0L, color21, color22, m2638copywmQWz5c$default7, color23, color24, color25, m2638copywmQWz5c$default8, color26, composer, (i & 14) | (i & 112) | (i & 896) | (i & 7168) | (i & 57344) | (i & 458752) | (i & 3670016) | (i & 29360128) | (i & 234881024) | (i & 1879048192), (i2 & 14) | (i2 & 112) | (i2 & 896) | (i2 & 7168) | (i2 & 57344) | (i2 & 458752) | (i2 & 3670016) | (i2 & 29360128) | (i2 & 234881024) | (i2 & 1879048192), (i3 & 14) | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (i3 & 57344) | (i3 & 458752) | (i3 & 3670016) | (i3 & 29360128) | (i3 & 234881024) | (i3 & 1879048192), (i4 & 14) | (i7 & 458752) | (i7 & 3670016) | (i7 & 29360128) | (i7 & 234881024) | (i7 & 1879048192), (i8 & 14) | 3072 | (i8 & 112) | (i8 & 896), 0, 15);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1327colors0hiis_0;
    }

    static {
        float f;
        f = ExposedDropdownMenuKt.ExposedDropdownMenuItemHorizontalPadding;
        ItemContentPadding = PaddingKt.m484PaddingValuesYgX7TsA(f, Dp.m4883constructorimpl(0));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: textFieldColors-tN0la-I, reason: not valid java name */
    public final /* synthetic */ TextFieldColors m1206textFieldColorstN0laI(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, TextSelectionColors textSelectionColors, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, Composer composer, int i, int i2, int i3, int i4, int i5, int i6) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(1357676928);
        ComposerKt.sourceInformation(composer, "C(textFieldColors)P(26:c#ui.graphics.Color,35:c#ui.graphics.Color,8:c#ui.graphics.Color,18:c#ui.graphics.Color,0:c#ui.graphics.Color,10:c#ui.graphics.Color,1:c#ui.graphics.Color,11:c#ui.graphics.Color,28,20:c#ui.graphics.Color,29:c#ui.graphics.Color,2:c#ui.graphics.Color,12:c#ui.graphics.Color,22:c#ui.graphics.Color,31:c#ui.graphics.Color,4:c#ui.graphics.Color,14:c#ui.graphics.Color,27:c#ui.graphics.Color,36:c#ui.graphics.Color,9:c#ui.graphics.Color,19:c#ui.graphics.Color,21:c#ui.graphics.Color,30:c#ui.graphics.Color,3:c#ui.graphics.Color,13:c#ui.graphics.Color,23:c#ui.graphics.Color,32:c#ui.graphics.Color,5:c#ui.graphics.Color,15:c#ui.graphics.Color,24:c#ui.graphics.Color,33:c#ui.graphics.Color,6:c#ui.graphics.Color,16:c#ui.graphics.Color,25:c#ui.graphics.Color,34:c#ui.graphics.Color,7:c#ui.graphics.Color,17:c#ui.graphics.Color)627@34809L9,628@34901L9,629@35000L9,631@35175L9,632@35267L9,633@35364L9,634@35449L9,635@35549L9,636@35632L7,638@35752L9,640@35871L9,642@35997L9,645@36213L9,647@36333L9,649@36450L9,651@36574L9,654@36784L9,656@36906L9,658@37025L9,660@37151L9,663@37364L9,664@37460L9,665@37553L9,666@37653L9,667@37747L9,669@37861L9,671@37977L9,673@38100L9,675@38291L9,676@38388L9,677@38487L9,679@38606L9,680@38775L9,681@38872L9,682@38971L9,684@39090L9,685@39259L9,687@39303L2215:ExposedDropdownMenu.kt#uh7d8r");
        long color = (i5 & 1) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldFocusInputTextColor(), composer, 6) : j;
        long color2 = (i5 & 2) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldInputTextColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i5 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledInputTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i5 & 8) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldErrorInputTextColor(), composer, 6) : j4;
        long color4 = (i5 & 16) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldContainerColor(), composer, 6) : j5;
        long color5 = (i5 & 32) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldContainerColor(), composer, 6) : j6;
        long color6 = (i5 & 64) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldCaretColor(), composer, 6) : j7;
        long color7 = (i5 & 128) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorFocusCaretColor(), composer, 6) : j8;
        if ((i5 & 256) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color8 = (i5 & 512) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldFocusActiveIndicatorColor(), composer, 6) : j9;
        long color9 = (i5 & 1024) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldActiveIndicatorColor(), composer, 6) : j10;
        long m2638copywmQWz5c$default2 = (i5 & 2048) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldDisabledActiveIndicatorColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j11;
        long color10 = (i5 & 4096) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorActiveIndicatorColor(), composer, 6) : j12;
        long color11 = (i5 & 8192) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldFocusLeadingIconColor(), composer, 6) : j13;
        long color12 = (i5 & 16384) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldLeadingIconColor(), composer, 6) : j14;
        long m2638copywmQWz5c$default3 = (32768 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j15;
        long color13 = (65536 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorLeadingIconColor(), composer, 6) : j16;
        long color14 = (131072 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldFocusTrailingIconColor(), composer, 6) : j17;
        long color15 = (262144 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldTrailingIconColor(), composer, 6) : j18;
        long m2638copywmQWz5c$default4 = (524288 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        long color16 = (1048576 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorTrailingIconColor(), composer, 6) : j20;
        long color17 = (2097152 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldFocusLabelTextColor(), composer, 6) : j21;
        long color18 = (4194304 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldLabelTextColor(), composer, 6) : j22;
        long color19 = (8388608 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledLabelTextColor(), composer, 6) : j23;
        long color20 = (16777216 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldErrorLabelTextColor(), composer, 6) : j24;
        long color21 = (33554432 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j25;
        long color22 = (67108864 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j26;
        long m2638copywmQWz5c$default5 = (134217728 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j27;
        long color23 = (268435456 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j28;
        long color24 = (536870912 & i5) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j29;
        long color25 = (i5 & 1073741824) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j30;
        long m2638copywmQWz5c$default6 = (i6 & 1) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j31;
        long color26 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j32;
        long color27 = (i6 & 4) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j33;
        long color28 = (i6 & 8) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j34;
        long m2638copywmQWz5c$default7 = (i6 & 16) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j35;
        long color29 = (i6 & 32) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j36;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1357676928, i, i2, "androidx.compose.material3.ExposedDropdownMenuDefaults.textFieldColors (ExposedDropdownMenu.kt:626)");
        }
        int i7 = i << 6;
        int i8 = i >> 24;
        int i9 = i2 << 6;
        int i10 = (i8 & 112) | (i8 & 14) | (i9 & 896) | (i9 & 7168) | (i9 & 57344) | (i9 & 458752) | (i9 & 3670016) | (i9 & 29360128) | (i9 & 234881024) | (i9 & 1879048192);
        int i11 = i2 >> 24;
        int i12 = i3 << 6;
        int i13 = (i11 & 112) | (i11 & 14) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752) | (i12 & 3670016) | (i12 & 29360128) | (i12 & 234881024) | (i12 & 1879048192);
        int i14 = i3 >> 24;
        int i15 = i4 << 6;
        TextFieldColors m1204textFieldColorsFD9MK7s = m1204textFieldColorsFD9MK7s(color, color2, m2638copywmQWz5c$default, color3, color4, color4, color4, color5, color6, color7, textSelectionColors2, color8, color9, m2638copywmQWz5c$default2, color10, color11, color12, m2638copywmQWz5c$default3, color13, color14, color15, m2638copywmQWz5c$default4, color16, color17, color18, color19, color20, color21, color22, m2638copywmQWz5c$default5, color23, color24, color25, m2638copywmQWz5c$default6, color26, color27, color28, m2638copywmQWz5c$default7, color29, composer, (i & 14) | (i & 112) | (i & 896) | (i & 7168) | (i & 57344) | ((i << 3) & 458752) | (i7 & 3670016) | (i7 & 29360128) | (i7 & 234881024) | (i7 & 1879048192), i10, i13, (i14 & 112) | (i14 & 14) | (i15 & 896) | (i15 & 7168) | (i15 & 57344) | (i15 & 458752) | (i15 & 3670016) | (i15 & 29360128) | (i15 & 234881024) | (i15 & 1879048192), 0, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1204textFieldColorsFD9MK7s;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: outlinedTextFieldColors-tN0la-I, reason: not valid java name */
    public final /* synthetic */ TextFieldColors m1203outlinedTextFieldColorstN0laI(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, TextSelectionColors textSelectionColors, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, Composer composer, int i, int i2, int i3, int i4, int i5, int i6) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(-907010558);
        ComposerKt.sourceInformation(composer, "C(outlinedTextFieldColors)P(26:c#ui.graphics.Color,35:c#ui.graphics.Color,8:c#ui.graphics.Color,18:c#ui.graphics.Color,0:c#ui.graphics.Color,11:c#ui.graphics.Color,1:c#ui.graphics.Color,12:c#ui.graphics.Color,28,20:c#ui.graphics.Color,29:c#ui.graphics.Color,2:c#ui.graphics.Color,10:c#ui.graphics.Color,22:c#ui.graphics.Color,31:c#ui.graphics.Color,4:c#ui.graphics.Color,14:c#ui.graphics.Color,27:c#ui.graphics.Color,36:c#ui.graphics.Color,9:c#ui.graphics.Color,19:c#ui.graphics.Color,21:c#ui.graphics.Color,30:c#ui.graphics.Color,3:c#ui.graphics.Color,13:c#ui.graphics.Color,23:c#ui.graphics.Color,32:c#ui.graphics.Color,5:c#ui.graphics.Color,15:c#ui.graphics.Color,24:c#ui.graphics.Color,33:c#ui.graphics.Color,6:c#ui.graphics.Color,16:c#ui.graphics.Color,25:c#ui.graphics.Color,34:c#ui.graphics.Color,7:c#ui.graphics.Color,17:c#ui.graphics.Color)732@41743L9,733@41837L9,734@41938L9,736@42117L9,739@42311L9,741@42425L9,742@42508L7,743@42607L9,744@42705L9,746@42822L9,748@43011L9,750@43133L9,752@43252L9,754@43378L9,757@43592L9,759@43716L9,761@43837L9,763@43965L9,766@44182L9,767@44280L9,768@44375L9,769@44477L9,771@44657L9,773@44773L9,775@44891L9,777@45016L9,780@45223L9,781@45322L9,782@45423L9,784@45544L9,785@45717L9,786@45816L9,787@45917L9,789@46038L9,790@46211L9,792@46255L2199:ExposedDropdownMenu.kt#uh7d8r");
        long color = (i5 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldFocusInputTextColor(), composer, 6) : j;
        long color2 = (i5 & 2) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldInputTextColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i5 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledInputTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i5 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldErrorInputTextColor(), composer, 6) : j4;
        long m2674getTransparent0d7_KjU = (i5 & 16) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j5;
        long m2674getTransparent0d7_KjU2 = (i5 & 32) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j6;
        long color4 = (i5 & 64) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldCaretColor(), composer, 6) : j7;
        long color5 = (i5 & 128) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorFocusCaretColor(), composer, 6) : j8;
        if ((i5 & 256) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color6 = (i5 & 512) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldFocusOutlineColor(), composer, 6) : j9;
        long color7 = (i5 & 1024) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldOutlineColor(), composer, 6) : j10;
        long m2638copywmQWz5c$default2 = (i5 & 2048) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldDisabledOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j11;
        long color8 = (i5 & 4096) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorOutlineColor(), composer, 6) : j12;
        long color9 = (i5 & 8192) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldFocusLeadingIconColor(), composer, 6) : j13;
        long color10 = (i5 & 16384) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldLeadingIconColor(), composer, 6) : j14;
        long m2638copywmQWz5c$default3 = (32768 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j15;
        long color11 = (65536 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorLeadingIconColor(), composer, 6) : j16;
        long color12 = (131072 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldFocusTrailingIconColor(), composer, 6) : j17;
        long color13 = (262144 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldTrailingIconColor(), composer, 6) : j18;
        long m2638copywmQWz5c$default4 = (524288 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        long color14 = (1048576 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorTrailingIconColor(), composer, 6) : j20;
        long color15 = (2097152 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldFocusLabelTextColor(), composer, 6) : j21;
        long color16 = (4194304 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldLabelTextColor(), composer, 6) : j22;
        long m2638copywmQWz5c$default5 = (8388608 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledLabelTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j23;
        long color17 = (16777216 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldErrorLabelTextColor(), composer, 6) : j24;
        long color18 = (33554432 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j25;
        long color19 = (67108864 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j26;
        long m2638copywmQWz5c$default6 = (134217728 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j27;
        long color20 = (268435456 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j28;
        long color21 = (536870912 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j29;
        long color22 = (i5 & 1073741824) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j30;
        long m2638copywmQWz5c$default7 = (i6 & 1) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j31;
        long color23 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j32;
        long color24 = (i6 & 4) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j33;
        long color25 = (i6 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j34;
        long m2638copywmQWz5c$default8 = (i6 & 16) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j35;
        long color26 = (i6 & 32) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j36;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-907010558, i, i2, "androidx.compose.material3.ExposedDropdownMenuDefaults.outlinedTextFieldColors (ExposedDropdownMenu.kt:731)");
        }
        int i7 = i << 6;
        int i8 = i >> 24;
        int i9 = i2 << 6;
        int i10 = (i8 & 112) | (i8 & 14) | (i9 & 896) | (i9 & 7168) | (i9 & 57344) | (i9 & 458752) | (i9 & 3670016) | (i9 & 29360128) | (i9 & 234881024) | (i9 & 1879048192);
        int i11 = i2 >> 24;
        int i12 = i3 << 6;
        int i13 = (i11 & 112) | (i11 & 14) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752) | (i12 & 3670016) | (i12 & 29360128) | (i12 & 234881024) | (i12 & 1879048192);
        int i14 = i3 >> 24;
        int i15 = i4 << 6;
        TextFieldColors m1201outlinedTextFieldColorsFD9MK7s = m1201outlinedTextFieldColorsFD9MK7s(color, color2, m2638copywmQWz5c$default, color3, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU2, color4, color5, textSelectionColors2, color6, color7, m2638copywmQWz5c$default2, color8, color9, color10, m2638copywmQWz5c$default3, color11, color12, color13, m2638copywmQWz5c$default4, color14, color15, color16, m2638copywmQWz5c$default5, color17, color18, color19, m2638copywmQWz5c$default6, color20, color21, color22, m2638copywmQWz5c$default7, color23, color24, color25, m2638copywmQWz5c$default8, color26, composer, (i & 14) | (i & 112) | (i & 896) | (i & 7168) | (i & 57344) | ((i << 3) & 458752) | (i7 & 3670016) | (i7 & 29360128) | (i7 & 234881024) | (i7 & 1879048192), i10, i13, (i14 & 112) | (i14 & 14) | (i15 & 896) | (i15 & 7168) | (i15 & 57344) | (i15 & 458752) | (i15 & 3670016) | (i15 & 29360128) | (i15 & 234881024) | (i15 & 1879048192), 0, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1201outlinedTextFieldColorsFD9MK7s;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: textFieldColors-St-qZLY, reason: not valid java name */
    public final /* synthetic */ TextFieldColors m1205textFieldColorsStqZLY(long j, long j2, long j3, long j4, long j5, TextSelectionColors textSelectionColors, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, Composer composer, int i, int i2, int i3, int i4) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(-2013303349);
        ComposerKt.sourceInformation(composer, "C(textFieldColors)P(19:c#ui.graphics.Color,6:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color,8:c#ui.graphics.Color,18,13:c#ui.graphics.Color,20:c#ui.graphics.Color,2:c#ui.graphics.Color,9:c#ui.graphics.Color,15:c#ui.graphics.Color,22:c#ui.graphics.Color,4:c#ui.graphics.Color,11:c#ui.graphics.Color,16:c#ui.graphics.Color,23:c#ui.graphics.Color,7:c#ui.graphics.Color,12:c#ui.graphics.Color,14:c#ui.graphics.Color,21:c#ui.graphics.Color,3:c#ui.graphics.Color,10:c#ui.graphics.Color,17:c#ui.graphics.Color,5:c#ui.graphics.Color)837@48657L9,838@48756L9,840@48930L9,841@49015L9,842@49115L9,843@49198L7,845@49318L9,847@49437L9,849@49563L9,852@49779L9,854@49899L9,856@50016L9,858@50140L9,861@50350L9,863@50472L9,865@50591L9,867@50717L9,870@50930L9,871@51026L9,872@51119L9,873@51219L9,874@51313L9,875@51408L9,877@51526L9,911@53335L9,912@53429L9,913@53530L9,915@53709L9,916@53801L9,917@53895L9,918@53996L9,920@54175L9,879@51647L2544:ExposedDropdownMenu.kt#uh7d8r");
        long color = (i4 & 1) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldInputTextColor(), composer, 6) : j;
        long m2638copywmQWz5c$default = (i4 & 2) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledInputTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j2;
        long color2 = (i4 & 4) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldContainerColor(), composer, 6) : j3;
        long color3 = (i4 & 8) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldCaretColor(), composer, 6) : j4;
        long color4 = (i4 & 16) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorFocusCaretColor(), composer, 6) : j5;
        if ((i4 & 32) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color5 = (i4 & 64) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldFocusActiveIndicatorColor(), composer, 6) : j6;
        long color6 = (i4 & 128) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldActiveIndicatorColor(), composer, 6) : j7;
        long m2638copywmQWz5c$default2 = (i4 & 256) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldDisabledActiveIndicatorColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j8;
        long color7 = (i4 & 512) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorActiveIndicatorColor(), composer, 6) : j9;
        long color8 = (i4 & 1024) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldFocusLeadingIconColor(), composer, 6) : j10;
        long color9 = (i4 & 2048) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldLeadingIconColor(), composer, 6) : j11;
        long m2638copywmQWz5c$default3 = (i4 & 4096) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j12;
        long color10 = (i4 & 8192) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorLeadingIconColor(), composer, 6) : j13;
        long color11 = (i4 & 16384) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldFocusTrailingIconColor(), composer, 6) : j14;
        long color12 = (32768 & i4) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldTrailingIconColor(), composer, 6) : j15;
        long m2638copywmQWz5c$default4 = (65536 & i4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long color13 = (131072 & i4) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getTextFieldErrorTrailingIconColor(), composer, 6) : j17;
        long color14 = (262144 & i4) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldFocusLabelTextColor(), composer, 6) : j18;
        long color15 = (524288 & i4) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldLabelTextColor(), composer, 6) : j19;
        long color16 = (1048576 & i4) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledLabelTextColor(), composer, 6) : j20;
        long color17 = (2097152 & i4) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldErrorLabelTextColor(), composer, 6) : j21;
        long color18 = (4194304 & i4) != 0 ? ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j22;
        long m2638copywmQWz5c$default5 = (i4 & 8388608) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledAutocompleteTokens.INSTANCE.getFieldDisabledInputTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j23;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2013303349, i, i2, "androidx.compose.material3.ExposedDropdownMenuDefaults.textFieldColors (ExposedDropdownMenu.kt:836)");
        }
        int i5 = i << 3;
        int i6 = (i & 14) | (i5 & 112) | (i5 & 896);
        int i7 = i << 9;
        int i8 = i6 | (i7 & 7168) | ((i << 6) & 57344) | (i7 & 458752) | ((i << 12) & 3670016);
        int i9 = i << 15;
        int i10 = i8 | (i9 & 29360128) | (i9 & 234881024) | (i9 & 1879048192);
        int i11 = i >> 15;
        int i12 = i2 << 15;
        int i13 = (i11 & 57344) | (i11 & 14) | (i11 & 112) | (i11 & 896) | (i11 & 7168) | (i12 & 458752) | (i12 & 3670016) | (i12 & 29360128) | (i12 & 234881024) | (i12 & 1879048192);
        int i14 = i2 >> 15;
        int i15 = i3 << 15;
        int i16 = i3 << 18;
        TextFieldColors m1204textFieldColorsFD9MK7s = m1204textFieldColorsFD9MK7s(color, color, m2638copywmQWz5c$default, color, color2, color2, color2, color2, color3, color4, textSelectionColors2, color5, color6, m2638copywmQWz5c$default2, color7, color8, color9, m2638copywmQWz5c$default3, color10, color11, color12, m2638copywmQWz5c$default4, color13, color14, color15, color16, color17, color18, color18, m2638copywmQWz5c$default5, color18, ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), composer, i10, i13, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 896) | (i14 & 7168) | (i15 & 458752) | (i15 & 3670016) | (i15 & 29360128) | (i16 & 234881024) | (i16 & 1879048192), ((i3 >> 6) & 14) | (i15 & 1879048192), 0, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1204textFieldColorsFD9MK7s;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: outlinedTextFieldColors-St-qZLY, reason: not valid java name */
    public final /* synthetic */ TextFieldColors m1202outlinedTextFieldColorsStqZLY(long j, long j2, long j3, long j4, long j5, TextSelectionColors textSelectionColors, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, Composer composer, int i, int i2, int i3, int i4) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(-83147315);
        ComposerKt.sourceInformation(composer, "C(outlinedTextFieldColors)P(19:c#ui.graphics.Color,6:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color,9:c#ui.graphics.Color,18,13:c#ui.graphics.Color,20:c#ui.graphics.Color,2:c#ui.graphics.Color,8:c#ui.graphics.Color,15:c#ui.graphics.Color,22:c#ui.graphics.Color,4:c#ui.graphics.Color,11:c#ui.graphics.Color,16:c#ui.graphics.Color,23:c#ui.graphics.Color,7:c#ui.graphics.Color,12:c#ui.graphics.Color,14:c#ui.graphics.Color,21:c#ui.graphics.Color,3:c#ui.graphics.Color,10:c#ui.graphics.Color,17:c#ui.graphics.Color,5:c#ui.graphics.Color)926@54404L9,927@54505L9,930@54727L9,932@54841L9,933@54924L7,934@55023L9,935@55121L9,937@55238L9,939@55427L9,941@55549L9,943@55668L9,945@55794L9,948@56008L9,950@56132L9,952@56253L9,954@56381L9,957@56598L9,958@56696L9,959@56791L9,960@56893L9,962@57073L9,963@57170L9,965@57290L9,999@59085L9,1000@59179L9,1001@59280L9,1003@59459L9,1004@59551L9,1005@59645L9,1006@59746L9,1008@59925L9,967@57413L2528:ExposedDropdownMenu.kt#uh7d8r");
        long color = (i4 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldInputTextColor(), composer, 6) : j;
        long m2638copywmQWz5c$default = (i4 & 2) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledInputTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j2;
        long m2674getTransparent0d7_KjU = (i4 & 4) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j3;
        long color2 = (i4 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldCaretColor(), composer, 6) : j4;
        long color3 = (i4 & 16) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorFocusCaretColor(), composer, 6) : j5;
        if ((i4 & 32) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color4 = (i4 & 64) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldFocusOutlineColor(), composer, 6) : j6;
        long color5 = (i4 & 128) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldOutlineColor(), composer, 6) : j7;
        long m2638copywmQWz5c$default2 = (i4 & 256) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldDisabledOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j8;
        long color6 = (i4 & 512) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorOutlineColor(), composer, 6) : j9;
        long color7 = (i4 & 1024) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldFocusLeadingIconColor(), composer, 6) : j10;
        long color8 = (i4 & 2048) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldLeadingIconColor(), composer, 6) : j11;
        long m2638copywmQWz5c$default3 = (i4 & 4096) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j12;
        long color9 = (i4 & 8192) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorLeadingIconColor(), composer, 6) : j13;
        long color10 = (i4 & 16384) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldFocusTrailingIconColor(), composer, 6) : j14;
        long color11 = (32768 & i4) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldTrailingIconColor(), composer, 6) : j15;
        long m2638copywmQWz5c$default4 = (65536 & i4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long color12 = (131072 & i4) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getTextFieldErrorTrailingIconColor(), composer, 6) : j17;
        long color13 = (262144 & i4) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldFocusLabelTextColor(), composer, 6) : j18;
        long color14 = (524288 & i4) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldLabelTextColor(), composer, 6) : j19;
        long m2638copywmQWz5c$default5 = (1048576 & i4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledLabelTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j20;
        long color15 = (2097152 & i4) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldErrorLabelTextColor(), composer, 6) : j21;
        long color16 = (4194304 & i4) != 0 ? ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6) : j22;
        long m2638copywmQWz5c$default6 = (i4 & 8388608) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledInputTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j23;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-83147315, i, i2, "androidx.compose.material3.ExposedDropdownMenuDefaults.outlinedTextFieldColors (ExposedDropdownMenu.kt:925)");
        }
        int i5 = i << 3;
        int i6 = (i & 14) | (i5 & 112) | (i5 & 896);
        int i7 = i << 9;
        int i8 = i6 | (i7 & 7168) | ((i << 6) & 57344) | (i7 & 458752) | ((i << 12) & 3670016);
        int i9 = i << 15;
        int i10 = i8 | (i9 & 29360128) | (i9 & 234881024) | (i9 & 1879048192);
        int i11 = i >> 15;
        int i12 = i2 << 15;
        int i13 = (i11 & 57344) | (i11 & 14) | (i11 & 112) | (i11 & 896) | (i11 & 7168) | (i12 & 458752) | (i12 & 3670016) | (i12 & 29360128) | (i12 & 234881024) | (i12 & 1879048192);
        int i14 = i2 >> 15;
        int i15 = i3 << 15;
        int i16 = i3 << 18;
        TextFieldColors m1201outlinedTextFieldColorsFD9MK7s = m1201outlinedTextFieldColorsFD9MK7s(color, color, m2638copywmQWz5c$default, color, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, color2, color3, textSelectionColors2, color4, color5, m2638copywmQWz5c$default2, color6, color7, color8, m2638copywmQWz5c$default3, color9, color10, color11, m2638copywmQWz5c$default4, color12, color13, color14, m2638copywmQWz5c$default5, color15, color16, color16, m2638copywmQWz5c$default6, color16, ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldDisabledSupportingTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.toColor(OutlinedAutocompleteTokens.INSTANCE.getFieldSupportingTextColor(), composer, 6), composer, i10, i13, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 896) | (i14 & 7168) | (i15 & 458752) | (i15 & 3670016) | (i15 & 29360128) | (i16 & 234881024) | (i16 & 1879048192), ((i3 >> 6) & 14) | (i15 & 1879048192), 0, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1201outlinedTextFieldColorsFD9MK7s;
    }
}
