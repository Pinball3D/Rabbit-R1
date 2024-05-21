package androidx.compose.material3;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import io.sentry.protocol.Device;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: DateInput.kt */
@Metadata(d1 = {"\u0000h\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a1\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eH\u0001¢\u0006\u0002\u0010\u0011\u001a\u008f\u0001\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00142\u0013\u0010\u0015\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\u0016¢\u0006\u0002\b\u00172\u0013\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\u0016¢\u0006\u0002\b\u00172\u0006\u0010\t\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0014\u0010\u001b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0012\u0004\u0012\u00020\b0\u000e2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b$\u0010%\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0013\u0010\u0004\u001a\u00020\u0005X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0006\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006&"}, d2 = {"InputTextFieldPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "getInputTextFieldPadding", "()Landroidx/compose/foundation/layout/PaddingValues;", "InputTextNonErroneousBottomPadding", "Landroidx/compose/ui/unit/Dp;", "F", "DateInputContent", "", "stateData", "Landroidx/compose/material3/StateData;", "dateFormatter", "Landroidx/compose/material3/DatePickerFormatter;", "dateValidator", "Lkotlin/Function1;", "", "", "(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "DateInputTextField", "modifier", "Landroidx/compose/ui/Modifier;", "label", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "placeholder", "initialDate", "Landroidx/compose/material3/CalendarDate;", "onDateChanged", "inputIdentifier", "Landroidx/compose/material3/InputIdentifier;", "dateInputValidator", "Landroidx/compose/material3/DateInputValidator;", "dateInputFormat", "Landroidx/compose/material3/DateInputFormat;", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "DateInputTextField-zm97o8M", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarDate;Lkotlin/jvm/functions/Function1;ILandroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/DateInputFormat;Ljava/util/Locale;Landroidx/compose/runtime/Composer;I)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DateInputKt {
    private static final PaddingValues InputTextFieldPadding;
    private static final float InputTextNonErroneousBottomPadding = Dp.m4883constructorimpl(16);

    public static final PaddingValues getInputTextFieldPadding() {
        return InputTextFieldPadding;
    }

    public static final void DateInputContent(final StateData stateData, final DatePickerFormatter dateFormatter, final Function1<? super Long, Boolean> dateValidator, Composer composer, final int i) {
        int i2;
        int i3;
        DateInputFormat dateInputFormat;
        String str;
        Composer composer2;
        Intrinsics.checkNotNullParameter(stateData, "stateData");
        Intrinsics.checkNotNullParameter(dateFormatter, "dateFormatter");
        Intrinsics.checkNotNullParameter(dateValidator, "dateValidator");
        Composer startRestartGroup = composer.startRestartGroup(814303288);
        ComposerKt.sourceInformation(startRestartGroup, "C(DateInputContent)P(2)54@2202L15,55@2244L97,58@2369L45,59@2449L44,60@2527L45,61@2602L503,74@3194L42,87@3730L52,75@3241L730:DateInput.kt#uh7d8r");
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
                ComposerKt.traceEventStart(814303288, i4, -1, "androidx.compose.material3.DateInputContent (DateInput.kt:48)");
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
            startRestartGroup.startReplaceableGroup(511388516);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2):Composables.kt#9igjgp");
            boolean changed2 = startRestartGroup.changed(dateInputFormat2) | startRestartGroup.changed(dateFormatter);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                i3 = 6;
                dateInputFormat = dateInputFormat2;
                str = "CC(remember)P(1):Composables.kt#9igjgp";
                Object dateInputValidator = new DateInputValidator(stateData, dateInputFormat2, dateFormatter, dateValidator, m1475getStringNWtq28, m1475getStringNWtq282, m1475getStringNWtq283, "");
                startRestartGroup.updateRememberedValue(dateInputValidator);
                rememberedValue2 = dateInputValidator;
            } else {
                i3 = 6;
                dateInputFormat = dateInputFormat2;
                str = "CC(remember)P(1):Composables.kt#9igjgp";
            }
            startRestartGroup.endReplaceableGroup();
            DateInputValidator dateInputValidator2 = (DateInputValidator) rememberedValue2;
            final String upperCase = dateInputFormat.getPatternWithDelimiters().toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            final String m1475getStringNWtq284 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1424getDateInputLabeladMyvUU(), startRestartGroup, i3);
            Modifier padding = PaddingKt.padding(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), InputTextFieldPadding);
            ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(startRestartGroup, -438341159, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputContent$1
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
                    ComposerKt.sourceInformation(composer3, "C82@3471L47,80@3392L127:DateInput.kt#uh7d8r");
                    if ((i5 & 11) == 2 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-438341159, i5, -1, "androidx.compose.material3.DateInputContent.<anonymous> (DateInput.kt:79)");
                    }
                    String str2 = m1475getStringNWtq284;
                    Modifier.Companion companion = Modifier.INSTANCE;
                    final String str3 = m1475getStringNWtq284;
                    final String str4 = upperCase;
                    composer3.startReplaceableGroup(511388516);
                    ComposerKt.sourceInformation(composer3, "CC(remember)P(1,2):Composables.kt#9igjgp");
                    boolean changed3 = composer3.changed(str3) | composer3.changed(str4);
                    Object rememberedValue3 = composer3.rememberedValue();
                    if (changed3 || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                        rememberedValue3 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputContent$1$1$1
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
                    }
                }
            });
            ComposableLambda composableLambda2 = ComposableLambdaKt.composableLambda(startRestartGroup, 1914447672, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputContent$2
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
                    ComposerKt.sourceInformation(composer3, "C84@3555L59:DateInput.kt#uh7d8r");
                    if ((i5 & 11) == 2 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1914447672, i5, -1, "androidx.compose.material3.DateInputContent.<anonymous> (DateInput.kt:84)");
                    }
                    TextKt.m1562Text4IGK_g(upperCase, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputContent$2.1
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
            ComposerKt.sourceInformation(startRestartGroup, str);
            boolean changed3 = startRestartGroup.changed(stateData);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed3 || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                rememberedValue3 = (Function1) new Function1<CalendarDate, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputContent$3$1
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
            composer2 = startRestartGroup;
            m1142DateInputTextFieldzm97o8M(padding, composableLambda, composableLambda2, stateData, value, (Function1) rememberedValue3, InputIdentifier.INSTANCE.m1262getSingleDateInputJ2x2o4M(), dateInputValidator2, dateInputFormat, defaultLocale, startRestartGroup, ((i4 << 9) & 7168) | 1075315126);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputContent$4
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

            public final void invoke(Composer composer3, int i5) {
                DateInputKt.DateInputContent(StateData.this, dateFormatter, dateValidator, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* renamed from: DateInputTextField-zm97o8M, reason: not valid java name */
    public static final void m1142DateInputTextFieldzm97o8M(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final StateData stateData, final CalendarDate calendarDate, final Function1<? super CalendarDate, Unit> onDateChanged, final int i, final DateInputValidator dateInputValidator, final DateInputFormat dateInputFormat, final Locale locale, Composer composer, final int i2) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(stateData, "stateData");
        Intrinsics.checkNotNullParameter(onDateChanged, "onDateChanged");
        Intrinsics.checkNotNullParameter(dateInputValidator, "dateInputValidator");
        Intrinsics.checkNotNullParameter(dateInputFormat, "dateInputFormat");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Composer startRestartGroup = composer.startRestartGroup(626552973);
        ComposerKt.sourceInformation(startRestartGroup, "C(DateInputTextField)P(6,4,8,9,2,7,3:c#material3.InputIdentifier,1)109@4431L39,110@4487L528,166@6737L88,127@5021L2277:DateInput.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(626552973, i2, -1, "androidx.compose.material3.DateInputTextField (DateInput.kt:97)");
        }
        final MutableState mutableState = (MutableState) RememberSaveableKt.m2286rememberSaveable(new Object[0], (Saver) null, (String) null, (Function0) new Function0<MutableState<String>>() { // from class: androidx.compose.material3.DateInputKt$DateInputTextField$errorText$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MutableState<String> invoke() {
                MutableState<String> mutableStateOf$default;
                mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);
                return mutableStateOf$default;
            }
        }, startRestartGroup, 3080, 6);
        final MutableState rememberSaveable = RememberSaveableKt.rememberSaveable(new Object[0], (Saver) TextFieldValue.INSTANCE.getSaver(), (String) null, (Function0) new Function0<MutableState<TextFieldValue>>() { // from class: androidx.compose.material3.DateInputKt$DateInputTextField$text$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MutableState<TextFieldValue> invoke() {
                String str;
                MutableState<TextFieldValue> mutableStateOf$default;
                StateData stateData2 = StateData.this;
                CalendarDate calendarDate2 = calendarDate;
                DateInputFormat dateInputFormat2 = dateInputFormat;
                Locale locale2 = locale;
                if (calendarDate2 == null || (str = stateData2.getCalendarModel().formatWithPattern(calendarDate2.getUtcTimeMillis(), dateInputFormat2.getPatternWithoutDelimiters(), locale2)) == null) {
                    str = "";
                }
                mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TextFieldValue(str, TextRangeKt.TextRange(0, 0), (TextRange) null, 4, (DefaultConstructorMarker) null), null, 2, null);
                return mutableStateOf$default;
            }
        }, startRestartGroup, 72, 4);
        TextFieldValue DateInputTextField_zm97o8M$lambda$3 = DateInputTextField_zm97o8M$lambda$3(rememberSaveable);
        Function1<TextFieldValue, Unit> function1 = new Function1<TextFieldValue, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputTextField$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextFieldValue textFieldValue) {
                invoke2(textFieldValue);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(TextFieldValue input) {
                Intrinsics.checkNotNullParameter(input, "input");
                if (input.getText().length() <= DateInputFormat.this.getPatternWithoutDelimiters().length()) {
                    String text = input.getText();
                    for (int i3 = 0; i3 < text.length(); i3++) {
                        if (!Character.isDigit(text.charAt(i3))) {
                            return;
                        }
                    }
                    rememberSaveable.setValue(input);
                    String obj = StringsKt.trim((CharSequence) input.getText()).toString();
                    if (obj.length() == 0 || obj.length() < DateInputFormat.this.getPatternWithoutDelimiters().length()) {
                        mutableState.setValue("");
                        onDateChanged.invoke(null);
                    } else {
                        CalendarDate parse = stateData.getCalendarModel().parse(obj, DateInputFormat.this.getPatternWithoutDelimiters());
                        mutableState.setValue(dateInputValidator.m1143validateXivgLIo(parse, i, locale));
                        onDateChanged.invoke(mutableState.getValue().length() == 0 ? parse : null);
                    }
                }
            }
        };
        Modifier m494paddingqDBjuR0$default = PaddingKt.m494paddingqDBjuR0$default(modifier, 0.0f, 0.0f, 0.0f, StringsKt.isBlank((CharSequence) mutableState.getValue()) ^ true ? Dp.m4883constructorimpl(0) : InputTextNonErroneousBottomPadding, 7, null);
        startRestartGroup.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = startRestartGroup.changed(mutableState);
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputTextField$2$1
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
                    if (!StringsKt.isBlank(mutableState.getValue())) {
                        SemanticsPropertiesKt.error(semantics, mutableState.getValue());
                    }
                }
            };
            startRestartGroup.updateRememberedValue(rememberedValue);
        }
        startRestartGroup.endReplaceableGroup();
        int i3 = i2 << 15;
        OutlinedTextFieldKt.OutlinedTextField(DateInputTextField_zm97o8M$lambda$3, (Function1<? super TextFieldValue, Unit>) function1, SemanticsModifierKt.semantics$default(m494paddingqDBjuR0$default, false, (Function1) rememberedValue, 1, null), false, false, (TextStyle) null, function2, function22, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.composableLambda(startRestartGroup, 785795078, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputTextField$3
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

            public final void invoke(Composer composer2, int i4) {
                ComposerKt.sourceInformation(composer2, "C171@6946L21:DateInput.kt#uh7d8r");
                if ((i4 & 11) == 2 && composer2.getSkipping()) {
                    composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(785795078, i4, -1, "androidx.compose.material3.DateInputTextField.<anonymous> (DateInput.kt:171)");
                }
                if (!StringsKt.isBlank(mutableState.getValue())) {
                    TextKt.m1562Text4IGK_g(mutableState.getValue(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 0, 0, 131070);
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }), !StringsKt.isBlank((CharSequence) mutableState.getValue()), (VisualTransformation) new DateVisualTransformation(dateInputFormat), new KeyboardOptions(0, false, KeyboardType.INSTANCE.m4622getNumberPjHm6EE(), ImeAction.INSTANCE.m4574getDoneeUduSuo(), 1, null), (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, startRestartGroup, (3670016 & i3) | (i3 & 29360128), 12779904, 0, 8195896);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputTextField$4
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

            public final void invoke(Composer composer2, int i4) {
                DateInputKt.m1142DateInputTextFieldzm97o8M(Modifier.this, function2, function22, stateData, calendarDate, onDateChanged, i, dateInputValidator, dateInputFormat, locale, composer2, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
            }
        });
    }

    private static final TextFieldValue DateInputTextField_zm97o8M$lambda$3(MutableState<TextFieldValue> mutableState) {
        return mutableState.getValue();
    }

    static {
        float f = 24;
        InputTextFieldPadding = PaddingKt.m487PaddingValuesa9UjIt4$default(Dp.m4883constructorimpl(f), Dp.m4883constructorimpl(10), Dp.m4883constructorimpl(f), 0.0f, 8, null);
    }
}
