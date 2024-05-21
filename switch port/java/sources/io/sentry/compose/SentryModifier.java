package io.sentry.compose;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SentryModifier.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u00020\b*\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lio/sentry/compose/SentryModifier;", "", "()V", SentryModifier.TAG, "Landroidx/compose/ui/semantics/SemanticsPropertyKey;", "", "TAG", "sentryTag", "Landroidx/compose/ui/Modifier;", ViewHierarchyNode.JsonKeys.TAG, "sentry-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryModifier {
    public static final SentryModifier INSTANCE = new SentryModifier();
    public static final String TAG = "SentryTag";
    private static final SemanticsPropertyKey<String> SentryTag = new SemanticsPropertyKey<>(TAG, new Function2<String, String, String>() { // from class: io.sentry.compose.SentryModifier$SentryTag$1
        @Override // kotlin.jvm.functions.Function2
        public final String invoke(String str, String str2) {
            Intrinsics.checkNotNullParameter(str2, "<anonymous parameter 1>");
            return str;
        }
    });
    public static final int $stable = SemanticsPropertyKey.$stable;

    private SentryModifier() {
    }

    @JvmStatic
    public static final Modifier sentryTag(Modifier modifier, final String tag) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        return SemanticsModifierKt.semantics$default(modifier, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: io.sentry.compose.SentryModifier$sentryTag$2
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
                SemanticsPropertyKey semanticsPropertyKey;
                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                semanticsPropertyKey = SentryModifier.SentryTag;
                semantics.set(semanticsPropertyKey, tag);
            }
        }, 1, null);
    }
}
