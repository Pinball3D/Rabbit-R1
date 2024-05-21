package tech.rabbit.r1launcher;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import tech.rabbit.r1launcher.ui.theme.ThemeKt;

/* compiled from: HWTestActivity.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a\r\u0010\u0007\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Greeting", "", "name", "", "modifier", "Landroidx/compose/ui/Modifier;", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "GreetingPreview", "(Landroidx/compose/runtime/Composer;I)V", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class HWTestActivityKt {
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Greeting(final java.lang.String r30, androidx.compose.ui.Modifier r31, androidx.compose.runtime.Composer r32, final int r33, final int r34) {
        /*
            r0 = r30
            r1 = r33
            r2 = r34
            java.lang.String r3 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r3)
            r3 = 2094966038(0x7cdea516, float:9.248306E36)
            r4 = r32
            androidx.compose.runtime.Composer r5 = r4.startRestartGroup(r3)
            r4 = r2 & 1
            if (r4 == 0) goto L1b
            r4 = r1 | 6
            goto L2b
        L1b:
            r4 = r1 & 14
            if (r4 != 0) goto L2a
            boolean r4 = r5.changed(r0)
            if (r4 == 0) goto L27
            r4 = 4
            goto L28
        L27:
            r4 = 2
        L28:
            r4 = r4 | r1
            goto L2b
        L2a:
            r4 = r1
        L2b:
            r6 = r2 & 2
            if (r6 == 0) goto L32
            r4 = r4 | 48
            goto L45
        L32:
            r7 = r1 & 112(0x70, float:1.57E-43)
            if (r7 != 0) goto L45
            r7 = r31
            boolean r8 = r5.changed(r7)
            if (r8 == 0) goto L41
            r8 = 32
            goto L43
        L41:
            r8 = 16
        L43:
            r4 = r4 | r8
            goto L47
        L45:
            r7 = r31
        L47:
            r15 = r4
            r4 = r15 & 91
            r8 = 18
            if (r4 != r8) goto L5a
            boolean r4 = r5.getSkipping()
            if (r4 != 0) goto L55
            goto L5a
        L55:
            r5.skipToGroupEnd()
            r3 = r5
            goto Lbd
        L5a:
            if (r6 == 0) goto L63
            androidx.compose.ui.Modifier$Companion r4 = androidx.compose.ui.Modifier.INSTANCE
            androidx.compose.ui.Modifier r4 = (androidx.compose.ui.Modifier) r4
            r29 = r4
            goto L65
        L63:
            r29 = r7
        L65:
            boolean r4 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r4 == 0) goto L71
            r4 = -1
            java.lang.String r6 = "tech.rabbit.r1launcher.Greeting (HWTestActivity.kt:66)"
            androidx.compose.runtime.ComposerKt.traceEventStart(r3, r15, r4, r6)
        L71:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Hello "
            r3.<init>(r4)
            java.lang.StringBuilder r3 = r3.append(r0)
            r4 = 33
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = r3.toString()
            r6 = 0
            r8 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r3 = 0
            r25 = r15
            r15 = r3
            r16 = 0
            r17 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 0
            r24 = 0
            r26 = r25 & 112(0x70, float:1.57E-43)
            r27 = 0
            r28 = 131068(0x1fffc, float:1.83665E-40)
            r3 = r5
            r5 = r29
            r25 = r3
            androidx.compose.material3.TextKt.m1562Text4IGK_g(r4, r5, r6, r8, r10, r11, r12, r13, r15, r16, r17, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28)
            boolean r4 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r4 == 0) goto Lbb
            androidx.compose.runtime.ComposerKt.traceEventEnd()
        Lbb:
            r7 = r29
        Lbd:
            androidx.compose.runtime.ScopeUpdateScope r3 = r3.endRestartGroup()
            if (r3 == 0) goto Lcd
            tech.rabbit.r1launcher.HWTestActivityKt$Greeting$1 r4 = new tech.rabbit.r1launcher.HWTestActivityKt$Greeting$1
            r4.<init>()
            kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4
            r3.updateScope(r4)
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.HWTestActivityKt.Greeting(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void GreetingPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(739869888);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(739869888, i, -1, "tech.rabbit.r1launcher.GreetingPreview (HWTestActivity.kt:75)");
            }
            ThemeKt.R1LauncherTheme(false, false, ComposableSingletons$HWTestActivityKt.INSTANCE.m7458getLambda1$app_productionEnvRelease(), startRestartGroup, 384, 3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: tech.rabbit.r1launcher.HWTestActivityKt$GreetingPreview$1
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

                public final void invoke(Composer composer2, int i2) {
                    HWTestActivityKt.GreetingPreview(composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }
}
