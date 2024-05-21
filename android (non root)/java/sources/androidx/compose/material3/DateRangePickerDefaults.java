package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.SentryThread;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DateRangePicker.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u000bJn\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\u00040\u0010¢\u0006\u0002\b\u00112\u0011\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00040\u0010¢\u0006\u0002\b\u00112\u0011\u0010\u0013\u001a\r\u0012\u0004\u0012\u00020\u00040\u0010¢\u0006\u0002\b\u0011H\u0003¢\u0006\u0002\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/compose/material3/DateRangePickerDefaults;", "", "()V", "DateRangePickerHeadline", "", SentryThread.JsonKeys.STATE, "Landroidx/compose/material3/DateRangePickerState;", "dateFormatter", "Landroidx/compose/material3/DatePickerFormatter;", "modifier", "Landroidx/compose/ui/Modifier;", "(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "startDateText", "", "endDateText", "startDatePlaceholder", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "endDatePlaceholder", "datesDelimiter", "(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "DateRangePickerTitle", "(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DateRangePickerDefaults {
    public static final int $stable = 0;
    public static final DateRangePickerDefaults INSTANCE = new DateRangePickerDefaults();

    private DateRangePickerDefaults() {
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void DateRangePickerTitle(final androidx.compose.material3.DateRangePickerState r30, androidx.compose.ui.Modifier r31, androidx.compose.runtime.Composer r32, final int r33, final int r34) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DateRangePickerDefaults.DateRangePickerTitle(androidx.compose.material3.DateRangePickerState, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void DateRangePickerHeadline(final androidx.compose.material3.DateRangePickerState r18, final androidx.compose.material3.DatePickerFormatter r19, androidx.compose.ui.Modifier r20, androidx.compose.runtime.Composer r21, final int r22, final int r23) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline(androidx.compose.material3.DateRangePickerState, androidx.compose.material3.DatePickerFormatter, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void DateRangePickerHeadline(final DateRangePickerState dateRangePickerState, final DatePickerFormatter datePickerFormatter, final Modifier modifier, final String str, final String str2, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer startRestartGroup = composer.startRestartGroup(-861159957);
        ComposerKt.sourceInformation(startRestartGroup, "C(DateRangePickerHeadline)P(7!1,4,6,3,5,2)*379@16359L15,418@18064L168,417@18002L796:DateRangePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(dateRangePickerState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(datePickerFormatter) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(str) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changed(str2) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function23) ? 8388608 : 4194304;
        }
        int i3 = i2;
        if ((23967451 & i3) != 4793490 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-861159957, i3, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:368)");
            }
            StateData stateData = dateRangePickerState.getStateData();
            Locale defaultLocale = CalendarModel_androidKt.defaultLocale(startRestartGroup, 0);
            String formatDate$material3_release$default = DatePickerFormatter.formatDate$material3_release$default(datePickerFormatter, stateData.getSelectedStartDate().getValue(), stateData.getCalendarModel(), defaultLocale, false, 8, null);
            String formatDate$material3_release$default2 = DatePickerFormatter.formatDate$material3_release$default(datePickerFormatter, stateData.getSelectedEndDate().getValue(), stateData.getCalendarModel(), defaultLocale, false, 8, null);
            String formatDate$material3_release = datePickerFormatter.formatDate$material3_release(stateData.getSelectedStartDate().getValue(), stateData.getCalendarModel(), defaultLocale, true);
            startRestartGroup.startReplaceableGroup(-1212634278);
            String str3 = "";
            ComposerKt.sourceInformation(startRestartGroup, "");
            if (formatDate$material3_release == null) {
                int value = stateData.getDisplayMode().getValue().getValue();
                if (DisplayMode.m1179equalsimpl0(value, DisplayMode.INSTANCE.m1184getPickerjFl4v0())) {
                    startRestartGroup.startReplaceableGroup(1922096411);
                    ComposerKt.sourceInformation(startRestartGroup, "398@17129L51");
                    formatDate$material3_release = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1430getDatePickerNoSelectionDescriptionadMyvUU(), startRestartGroup, 6);
                    startRestartGroup.endReplaceableGroup();
                } else if (DisplayMode.m1179equalsimpl0(value, DisplayMode.INSTANCE.m1183getInputjFl4v0())) {
                    startRestartGroup.startReplaceableGroup(1922096500);
                    ComposerKt.sourceInformation(startRestartGroup, "399@17218L46");
                    formatDate$material3_release = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1425getDateInputNoInputDescriptionadMyvUU(), startRestartGroup, 6);
                    startRestartGroup.endReplaceableGroup();
                } else {
                    startRestartGroup.startReplaceableGroup(-544548443);
                    startRestartGroup.endReplaceableGroup();
                    formatDate$material3_release = "";
                }
            }
            startRestartGroup.endReplaceableGroup();
            String formatDate$material3_release2 = datePickerFormatter.formatDate$material3_release(stateData.getSelectedEndDate().getValue(), stateData.getCalendarModel(), defaultLocale, true);
            startRestartGroup.startReplaceableGroup(-1212633768);
            ComposerKt.sourceInformation(startRestartGroup, "");
            if (formatDate$material3_release2 == null) {
                int value2 = stateData.getDisplayMode().getValue().getValue();
                if (DisplayMode.m1179equalsimpl0(value2, DisplayMode.INSTANCE.m1184getPickerjFl4v0())) {
                    startRestartGroup.startReplaceableGroup(1922096919);
                    ComposerKt.sourceInformation(startRestartGroup, "409@17637L51");
                    str3 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1430getDatePickerNoSelectionDescriptionadMyvUU(), startRestartGroup, 6);
                    startRestartGroup.endReplaceableGroup();
                } else if (DisplayMode.m1179equalsimpl0(value2, DisplayMode.INSTANCE.m1183getInputjFl4v0())) {
                    startRestartGroup.startReplaceableGroup(1922097008);
                    ComposerKt.sourceInformation(startRestartGroup, "410@17726L46");
                    str3 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1425getDateInputNoInputDescriptionadMyvUU(), startRestartGroup, 6);
                    startRestartGroup.endReplaceableGroup();
                } else {
                    startRestartGroup.startReplaceableGroup(-544532695);
                    startRestartGroup.endReplaceableGroup();
                }
            } else {
                str3 = formatDate$material3_release2;
            }
            startRestartGroup.endReplaceableGroup();
            final String str4 = str + ": " + formatDate$material3_release;
            final String str5 = str2 + ": " + str3;
            startRestartGroup.startReplaceableGroup(511388516);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(str4) | startRestartGroup.changed(str5);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$4$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        invoke2(semanticsPropertyReceiver);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(SemanticsPropertyReceiver clearAndSetSemantics) {
                        Intrinsics.checkNotNullParameter(clearAndSetSemantics, "$this$clearAndSetSemantics");
                        SemanticsPropertiesKt.m4269setLiveRegionhR3wRGc(clearAndSetSemantics, LiveRegionMode.INSTANCE.m4248getPolite0phEisY());
                        SemanticsPropertiesKt.setContentDescription(clearAndSetSemantics, str4 + ", " + str5);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            Modifier clearAndSetSemantics = SemanticsModifierKt.clearAndSetSemantics(modifier, (Function1) rememberedValue);
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Arrangement.HorizontalOrVertical m401spacedBy0680j_4 = Arrangement.INSTANCE.m401spacedBy0680j_4(Dp.m4883constructorimpl(4));
            startRestartGroup.startReplaceableGroup(693286680);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(m401spacedBy0680j_4, centerVertically, startRestartGroup, 54);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume2;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(clearAndSetSemantics);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, rowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -326682283, "C80@4021L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 990390577, "C430@18586L16:DateRangePicker.kt#uh7d8r");
            if (formatDate$material3_release$default != null) {
                startRestartGroup.startReplaceableGroup(990390609);
                ComposerKt.sourceInformation(startRestartGroup, "426@18452L31");
                composer2 = startRestartGroup;
                TextKt.m1562Text4IGK_g(formatDate$material3_release$default, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 0, 0, 131070);
                composer2.endReplaceableGroup();
            } else {
                composer2 = startRestartGroup;
                composer2.startReplaceableGroup(990390686);
                ComposerKt.sourceInformation(composer2, "428@18529L22");
                function2.invoke(composer2, Integer.valueOf((i3 >> 15) & 14));
                composer2.endReplaceableGroup();
            }
            function23.invoke(composer2, Integer.valueOf((i3 >> 21) & 14));
            if (formatDate$material3_release$default2 != null) {
                composer2.startReplaceableGroup(990390828);
                ComposerKt.sourceInformation(composer2, "432@18671L29");
                TextKt.m1562Text4IGK_g(formatDate$material3_release$default2, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 0, 0, 131070);
                composer2.endReplaceableGroup();
            } else {
                composer2.startReplaceableGroup(990390903);
                ComposerKt.sourceInformation(composer2, "434@18746L20");
                function22.invoke(composer2, Integer.valueOf((i3 >> 18) & 14));
                composer2.endReplaceableGroup();
            }
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endReplaceableGroup();
            composer2.endNode();
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$5
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                invoke(composer3, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer3, int i4) {
                DateRangePickerDefaults.this.DateRangePickerHeadline(dateRangePickerState, datePickerFormatter, modifier, str, str2, function2, function22, function23, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }
}
