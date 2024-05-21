package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
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
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
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
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DateRangeInput.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a1\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nH\u0001¢\u0006\u0002\u0010\r\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"TextFieldSpacing", "Landroidx/compose/ui/unit/Dp;", "F", "DateRangeInputContent", "", "stateData", "Landroidx/compose/material3/StateData;", "dateFormatter", "Landroidx/compose/material3/DatePickerFormatter;", "dateValidator", "Lkotlin/Function1;", "", "", "(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DateRangeInputKt {
    private static final float TextFieldSpacing = Dp.m4883constructorimpl(8);

    public static final void DateRangeInputContent(final StateData stateData, final DatePickerFormatter dateFormatter, final Function1<? super Long, Boolean> dateValidator, Composer composer, final int i) {
        int i2;
        int i3;
        DateInputFormat dateInputFormat;
        String str;
        Locale locale;
        Composer composer2;
        Intrinsics.checkNotNullParameter(stateData, "stateData");
        Intrinsics.checkNotNullParameter(dateFormatter, "dateFormatter");
        Intrinsics.checkNotNullParameter(dateValidator, "dateValidator");
        Composer startRestartGroup = composer.startRestartGroup(-1163802470);
        ComposerKt.sourceInformation(startRestartGroup, "C(DateRangeInputContent)P(2)37@1398L15,38@1440L97,41@1565L45,42@1645L44,43@1723L45,44@1797L50,45@1877L482,57@2364L1939:DateRangeInput.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(stateData) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(dateFormatter) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(dateValidator) ? 256 : 128;
        }
        int i4 = i2;
        if ((i4 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1163802470, i4, -1, "androidx.compose.material3.DateRangeInputContent (DateRangeInput.kt:31)");
            }
            Locale defaultLocale = CalendarModel_androidKt.defaultLocale(startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(defaultLocale);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = stateData.getCalendarModel().getDateInputFormat(defaultLocale);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            DateInputFormat dateInputFormat2 = (DateInputFormat) rememberedValue;
            String m1475getStringNWtq28 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1421getDateInputInvalidForPatternadMyvUU(), startRestartGroup, 6);
            String m1475getStringNWtq282 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1423getDateInputInvalidYearRangeadMyvUU(), startRestartGroup, 6);
            String m1475getStringNWtq283 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1422getDateInputInvalidNotAllowedadMyvUU(), startRestartGroup, 6);
            String m1475getStringNWtq284 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1442getDateRangeInputInvalidRangeInputadMyvUU(), startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(511388516);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2):Composables.kt#9igjgp");
            boolean changed2 = startRestartGroup.changed(dateInputFormat2) | startRestartGroup.changed(dateFormatter);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                i3 = 6;
                dateInputFormat = dateInputFormat2;
                str = "CC(remember)P(1):Composables.kt#9igjgp";
                locale = defaultLocale;
                DateInputValidator dateInputValidator = new DateInputValidator(stateData, dateInputFormat2, dateFormatter, dateValidator, m1475getStringNWtq28, m1475getStringNWtq282, m1475getStringNWtq283, m1475getStringNWtq284);
                startRestartGroup.updateRememberedValue(dateInputValidator);
                rememberedValue2 = dateInputValidator;
            } else {
                i3 = 6;
                dateInputFormat = dateInputFormat2;
                str = "CC(remember)P(1):Composables.kt#9igjgp";
                locale = defaultLocale;
            }
            startRestartGroup.endReplaceableGroup();
            DateInputValidator dateInputValidator2 = (DateInputValidator) rememberedValue2;
            Modifier padding = PaddingKt.padding(Modifier.INSTANCE, DateInputKt.getInputTextFieldPadding());
            Arrangement.HorizontalOrVertical m401spacedBy0680j_4 = Arrangement.INSTANCE.m401spacedBy0680j_4(TextFieldSpacing);
            startRestartGroup.startReplaceableGroup(693286680);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(m401spacedBy0680j_4, Alignment.INSTANCE.getTop(), startRestartGroup, i3);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(padding);
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
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1849028810, "C62@2625L56,74@3193L52,63@2690L763,80@3481L54,92@4041L50,81@3544L753:DateRangeInput.kt#uh7d8r");
            final String upperCase = dateInputFormat.getPatternWithDelimiters().toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            final String m1475getStringNWtq285 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1448getDateRangePickerStartHeadlineadMyvUU(), startRestartGroup, i3);
            Modifier weight$default = RowScope.weight$default(rowScopeInstance, Modifier.INSTANCE, 0.5f, false, 2, null);
            ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(startRestartGroup, 576559191, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i5) {
                    ComposerKt.sourceInformation(composer3, "C67@2865L96,66@2794L168:DateRangeInput.kt#uh7d8r");
                    if ((i5 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(576559191, i5, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:65)");
                        }
                        String str2 = m1475getStringNWtq285;
                        Modifier.Companion companion = Modifier.INSTANCE;
                        final String str3 = m1475getStringNWtq285;
                        final String str4 = upperCase;
                        composer3.startReplaceableGroup(511388516);
                        ComposerKt.sourceInformation(composer3, "CC(remember)P(1,2):Composables.kt#9igjgp");
                        boolean changed3 = composer3.changed(str3) | composer3.changed(str4);
                        Object rememberedValue3 = composer3.rememberedValue();
                        if (changed3 || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                            rememberedValue3 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$1$1$1
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
                                public final void invoke2(SemanticsPropertyReceiver semantics) {
                                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                                    SemanticsPropertiesKt.setContentDescription(semantics, str3 + ", " + str4);
                                }
                            };
                            composer3.updateRememberedValue(rememberedValue3);
                        }
                        composer3.endReplaceableGroup();
                        TextKt.m1562Text4IGK_g(str2, SemanticsModifierKt.semantics$default(companion, false, (Function1) rememberedValue3, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer3, 0, 0, 131068);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            });
            ComposableLambda composableLambda2 = ComposableLambdaKt.composableLambda(startRestartGroup, 1726391478, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i5) {
                    ComposerKt.sourceInformation(composer3, "C71@3006L59:DateRangeInput.kt#uh7d8r");
                    if ((i5 & 11) == 2 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1726391478, i5, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:71)");
                    }
                    TextKt.m1562Text4IGK_g(upperCase, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$2.1
                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(SemanticsPropertyReceiver clearAndSetSemantics) {
                            Intrinsics.checkNotNullParameter(clearAndSetSemantics, "$this$clearAndSetSemantics");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                            invoke2(semanticsPropertyReceiver);
                            return Unit.INSTANCE;
                        }
                    }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer3, 0, 0, 131068);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            });
            CalendarDate value = stateData.getSelectedStartDate().getValue();
            startRestartGroup.startReplaceableGroup(1157296644);
            String str2 = str;
            ComposerKt.sourceInformation(startRestartGroup, str2);
            boolean changed3 = startRestartGroup.changed(stateData);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed3 || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                rememberedValue3 = (Function1) new Function1<CalendarDate, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$3$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(CalendarDate calendarDate) {
                        invoke2(calendarDate);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(CalendarDate calendarDate) {
                        StateData.this.getSelectedStartDate().setValue(calendarDate);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            int i5 = ((i4 << 9) & 7168) | 1075315120;
            composer2 = startRestartGroup;
            DateInputKt.m1142DateInputTextFieldzm97o8M(weight$default, composableLambda, composableLambda2, stateData, value, (Function1) rememberedValue3, InputIdentifier.INSTANCE.m1263getStartDateInputJ2x2o4M(), dateInputValidator2, dateInputFormat, locale, startRestartGroup, i5);
            final String m1475getStringNWtq286 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1445getDateRangePickerEndHeadlineadMyvUU(), composer2, i3);
            Modifier weight$default2 = RowScope.weight$default(rowScopeInstance, Modifier.INSTANCE, 0.5f, false, 2, null);
            ComposableLambda composableLambda3 = ComposableLambdaKt.composableLambda(composer2, -663502784, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i6) {
                    ComposerKt.sourceInformation(composer3, "C85@3717L94,84@3648L164:DateRangeInput.kt#uh7d8r");
                    if ((i6 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-663502784, i6, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:83)");
                        }
                        String str3 = m1475getStringNWtq286;
                        Modifier.Companion companion = Modifier.INSTANCE;
                        final String str4 = m1475getStringNWtq286;
                        final String str5 = upperCase;
                        composer3.startReplaceableGroup(511388516);
                        ComposerKt.sourceInformation(composer3, "CC(remember)P(1,2):Composables.kt#9igjgp");
                        boolean changed4 = composer3.changed(str4) | composer3.changed(str5);
                        Object rememberedValue4 = composer3.rememberedValue();
                        if (changed4 || rememberedValue4 == Composer.INSTANCE.getEmpty()) {
                            rememberedValue4 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$4$1$1
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
                                public final void invoke2(SemanticsPropertyReceiver semantics) {
                                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                                    SemanticsPropertiesKt.setContentDescription(semantics, str4 + ", " + str5);
                                }
                            };
                            composer3.updateRememberedValue(rememberedValue4);
                        }
                        composer3.endReplaceableGroup();
                        TextKt.m1562Text4IGK_g(str3, SemanticsModifierKt.semantics$default(companion, false, (Function1) rememberedValue4, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer3, 0, 0, 131068);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            });
            ComposableLambda composableLambda4 = ComposableLambdaKt.composableLambda(composer2, 518729951, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$5
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i6) {
                    ComposerKt.sourceInformation(composer3, "C89@3856L59:DateRangeInput.kt#uh7d8r");
                    if ((i6 & 11) == 2 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(518729951, i6, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:89)");
                    }
                    TextKt.m1562Text4IGK_g(upperCase, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$5.1
                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(SemanticsPropertyReceiver clearAndSetSemantics) {
                            Intrinsics.checkNotNullParameter(clearAndSetSemantics, "$this$clearAndSetSemantics");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                            invoke2(semanticsPropertyReceiver);
                            return Unit.INSTANCE;
                        }
                    }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer3, 0, 0, 131068);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            });
            CalendarDate value2 = stateData.getSelectedEndDate().getValue();
            composer2.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(composer2, str2);
            boolean changed4 = composer2.changed(stateData);
            Object rememberedValue4 = composer2.rememberedValue();
            if (changed4 || rememberedValue4 == Composer.INSTANCE.getEmpty()) {
                rememberedValue4 = (Function1) new Function1<CalendarDate, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$1$6$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(CalendarDate calendarDate) {
                        invoke2(calendarDate);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(CalendarDate calendarDate) {
                        StateData.this.getSelectedEndDate().setValue(calendarDate);
                    }
                };
                composer2.updateRememberedValue(rememberedValue4);
            }
            composer2.endReplaceableGroup();
            DateInputKt.m1142DateInputTextFieldzm97o8M(weight$default2, composableLambda3, composableLambda4, stateData, value2, (Function1) rememberedValue4, InputIdentifier.INSTANCE.m1261getEndDateInputJ2x2o4M(), dateInputValidator2, dateInputFormat, locale, composer2, i5);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2
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

            public final void invoke(Composer composer3, int i6) {
                DateRangeInputKt.DateRangeInputContent(StateData.this, dateFormatter, dateValidator, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }
}
