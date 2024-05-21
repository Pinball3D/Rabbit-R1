package androidx.compose.ui.semantics;

import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import java.util.Collection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SemanticsProperties.kt */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007R\u001d\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0007R\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0007R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0007R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0007R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0007R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0007R\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0007R\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0007R#\u0010\"\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020$0#0\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0007R\"\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00100\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010\u0002\u001a\u0004\b(\u0010\u0007R \u0010)\u001a\b\u0012\u0004\u0012\u00020\u00180\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b*\u0010\u0002\u001a\u0004\b+\u0010\u0007R\u0017\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u0007R\u0017\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u0007R\u0017\u00100\u001a\b\u0012\u0004\u0012\u00020\u00180\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u0007R\u001a\u00102\u001a\b\u0012\u0004\u0012\u0002030\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u0007R\u0017\u00105\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\u0007R\u0017\u00107\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u0010\u0007R\u0017\u00109\u001a\b\u0012\u0004\u0012\u00020:0\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010\u0007R\u001a\u0010<\u001a\b\u0012\u0004\u0012\u00020=0\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b>\u0010\u0007R\u0017\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010\u0007R\u0017\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00180\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010\u0007R\u0017\u0010C\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010\u0007R\u0017\u0010E\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010\u0007R\u001d\u0010G\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\f0\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u0010\u0007R\u001a\u0010I\u001a\b\u0012\u0004\u0012\u00020J0\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\bK\u0010\u0007R\u0017\u0010L\u001a\b\u0012\u0004\u0012\u00020M0\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u0010\u0007R\u0017\u0010O\u001a\b\u0012\u0004\u0012\u00020P0\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010\u0007R\u0017\u0010R\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006T"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsProperties;", "", "()V", "CollectionInfo", "Landroidx/compose/ui/semantics/SemanticsPropertyKey;", "Landroidx/compose/ui/semantics/CollectionInfo;", "getCollectionInfo", "()Landroidx/compose/ui/semantics/SemanticsPropertyKey;", "CollectionItemInfo", "Landroidx/compose/ui/semantics/CollectionItemInfo;", "getCollectionItemInfo", "ContentDescription", "", "", "getContentDescription", "Disabled", "", "getDisabled", "EditableText", "Landroidx/compose/ui/text/AnnotatedString;", "getEditableText", "Error", "getError", "Focused", "", "getFocused", "Heading", "getHeading", "HorizontalScrollAxisRange", "Landroidx/compose/ui/semantics/ScrollAxisRange;", "getHorizontalScrollAxisRange", "ImeAction", "Landroidx/compose/ui/text/input/ImeAction;", "getImeAction", "IndexForKey", "Lkotlin/Function1;", "", "getIndexForKey", "InvisibleToUser", "getInvisibleToUser$annotations", "getInvisibleToUser", "IsContainer", "getIsContainer$annotations", "getIsContainer", "IsDialog", "getIsDialog", "IsPopup", "getIsPopup", "IsTraversalGroup", "getIsTraversalGroup", "LiveRegion", "Landroidx/compose/ui/semantics/LiveRegionMode;", "getLiveRegion", "PaneTitle", "getPaneTitle", "Password", "getPassword", "ProgressBarRangeInfo", "Landroidx/compose/ui/semantics/ProgressBarRangeInfo;", "getProgressBarRangeInfo", "Role", "Landroidx/compose/ui/semantics/Role;", "getRole", "SelectableGroup", "getSelectableGroup", "Selected", "getSelected", "StateDescription", "getStateDescription", "TestTag", "getTestTag", "Text", "getText", "TextSelectionRange", "Landroidx/compose/ui/text/TextRange;", "getTextSelectionRange", "ToggleableState", "Landroidx/compose/ui/state/ToggleableState;", "getToggleableState", "TraversalIndex", "", "getTraversalIndex", "VerticalScrollAxisRange", "getVerticalScrollAxisRange", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SemanticsProperties {
    public static final int $stable = 0;
    public static final SemanticsProperties INSTANCE = new SemanticsProperties();
    private static final SemanticsPropertyKey<List<String>> ContentDescription = new SemanticsPropertyKey<>("ContentDescription", new Function2<List<? extends String>, List<? extends String>, List<? extends String>>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$ContentDescription$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ List<? extends String> invoke(List<? extends String> list, List<? extends String> list2) {
            return invoke2((List<String>) list, (List<String>) list2);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final List<String> invoke2(List<String> list, List<String> childValue) {
            List<String> mutableList;
            Intrinsics.checkNotNullParameter(childValue, "childValue");
            if (list == null || (mutableList = CollectionsKt.toMutableList((Collection) list)) == null) {
                return childValue;
            }
            mutableList.addAll(childValue);
            return mutableList;
        }
    });
    private static final SemanticsPropertyKey<String> StateDescription = new SemanticsPropertyKey<>("StateDescription", null, 2, null);
    private static final SemanticsPropertyKey<ProgressBarRangeInfo> ProgressBarRangeInfo = new SemanticsPropertyKey<>("ProgressBarRangeInfo", null, 2, null);
    private static final SemanticsPropertyKey<String> PaneTitle = new SemanticsPropertyKey<>("PaneTitle", new Function2<String, String, String>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$PaneTitle$1
        @Override // kotlin.jvm.functions.Function2
        public final String invoke(String str, String str2) {
            Intrinsics.checkNotNullParameter(str2, "<anonymous parameter 1>");
            throw new IllegalStateException("merge function called on unmergeable property PaneTitle.");
        }
    });
    private static final SemanticsPropertyKey<Unit> SelectableGroup = new SemanticsPropertyKey<>("SelectableGroup", null, 2, null);
    private static final SemanticsPropertyKey<CollectionInfo> CollectionInfo = new SemanticsPropertyKey<>("CollectionInfo", null, 2, null);
    private static final SemanticsPropertyKey<CollectionItemInfo> CollectionItemInfo = new SemanticsPropertyKey<>("CollectionItemInfo", null, 2, null);
    private static final SemanticsPropertyKey<Unit> Heading = new SemanticsPropertyKey<>("Heading", null, 2, null);
    private static final SemanticsPropertyKey<Unit> Disabled = new SemanticsPropertyKey<>("Disabled", null, 2, null);
    private static final SemanticsPropertyKey<LiveRegionMode> LiveRegion = new SemanticsPropertyKey<>("LiveRegion", null, 2, null);
    private static final SemanticsPropertyKey<Boolean> Focused = new SemanticsPropertyKey<>("Focused", null, 2, null);
    private static final SemanticsPropertyKey<Boolean> IsTraversalGroup = new SemanticsPropertyKey<>("IsTraversalGroup", null, 2, null);
    private static final SemanticsPropertyKey<Unit> InvisibleToUser = new SemanticsPropertyKey<>("InvisibleToUser", new Function2<Unit, Unit, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$InvisibleToUser$1
        @Override // kotlin.jvm.functions.Function2
        public final Unit invoke(Unit unit, Unit unit2) {
            Intrinsics.checkNotNullParameter(unit2, "<anonymous parameter 1>");
            return unit;
        }
    });
    private static final SemanticsPropertyKey<Float> TraversalIndex = new SemanticsPropertyKey<>("TraversalIndex", new Function2<Float, Float, Float>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$TraversalIndex$1
        public final Float invoke(Float f, float f2) {
            return f;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Float invoke(Float f, Float f2) {
            return invoke(f, f2.floatValue());
        }
    });
    private static final SemanticsPropertyKey<ScrollAxisRange> HorizontalScrollAxisRange = new SemanticsPropertyKey<>("HorizontalScrollAxisRange", null, 2, null);
    private static final SemanticsPropertyKey<ScrollAxisRange> VerticalScrollAxisRange = new SemanticsPropertyKey<>("VerticalScrollAxisRange", null, 2, null);
    private static final SemanticsPropertyKey<Unit> IsPopup = new SemanticsPropertyKey<>("IsPopup", new Function2<Unit, Unit, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$IsPopup$1
        @Override // kotlin.jvm.functions.Function2
        public final Unit invoke(Unit unit, Unit unit2) {
            Intrinsics.checkNotNullParameter(unit2, "<anonymous parameter 1>");
            throw new IllegalStateException("merge function called on unmergeable property IsPopup. A popup should not be a child of a clickable/focusable node.");
        }
    });
    private static final SemanticsPropertyKey<Unit> IsDialog = new SemanticsPropertyKey<>("IsDialog", new Function2<Unit, Unit, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$IsDialog$1
        @Override // kotlin.jvm.functions.Function2
        public final Unit invoke(Unit unit, Unit unit2) {
            Intrinsics.checkNotNullParameter(unit2, "<anonymous parameter 1>");
            throw new IllegalStateException("merge function called on unmergeable property IsDialog. A dialog should not be a child of a clickable/focusable node.");
        }
    });
    private static final SemanticsPropertyKey<Role> Role = new SemanticsPropertyKey<>("Role", new Function2<Role, Role, Role>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$Role$1
        /* renamed from: invoke-qtA-w6s, reason: not valid java name */
        public final Role m4267invokeqtAw6s(Role role, int i) {
            return role;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Role invoke(Role role, Role role2) {
            return m4267invokeqtAw6s(role, role2.getValue());
        }
    });
    private static final SemanticsPropertyKey<String> TestTag = new SemanticsPropertyKey<>("TestTag", new Function2<String, String, String>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$TestTag$1
        @Override // kotlin.jvm.functions.Function2
        public final String invoke(String str, String str2) {
            Intrinsics.checkNotNullParameter(str2, "<anonymous parameter 1>");
            return str;
        }
    });
    private static final SemanticsPropertyKey<List<AnnotatedString>> Text = new SemanticsPropertyKey<>("Text", new Function2<List<? extends AnnotatedString>, List<? extends AnnotatedString>, List<? extends AnnotatedString>>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$Text$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ List<? extends AnnotatedString> invoke(List<? extends AnnotatedString> list, List<? extends AnnotatedString> list2) {
            return invoke2((List<AnnotatedString>) list, (List<AnnotatedString>) list2);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final List<AnnotatedString> invoke2(List<AnnotatedString> list, List<AnnotatedString> childValue) {
            List<AnnotatedString> mutableList;
            Intrinsics.checkNotNullParameter(childValue, "childValue");
            if (list == null || (mutableList = CollectionsKt.toMutableList((Collection) list)) == null) {
                return childValue;
            }
            mutableList.addAll(childValue);
            return mutableList;
        }
    });
    private static final SemanticsPropertyKey<AnnotatedString> EditableText = new SemanticsPropertyKey<>("EditableText", null, 2, null);
    private static final SemanticsPropertyKey<TextRange> TextSelectionRange = new SemanticsPropertyKey<>("TextSelectionRange", null, 2, null);
    private static final SemanticsPropertyKey<ImeAction> ImeAction = new SemanticsPropertyKey<>("ImeAction", null, 2, null);
    private static final SemanticsPropertyKey<Boolean> Selected = new SemanticsPropertyKey<>("Selected", null, 2, null);
    private static final SemanticsPropertyKey<ToggleableState> ToggleableState = new SemanticsPropertyKey<>("ToggleableState", null, 2, null);
    private static final SemanticsPropertyKey<Unit> Password = new SemanticsPropertyKey<>("Password", null, 2, null);
    private static final SemanticsPropertyKey<String> Error = new SemanticsPropertyKey<>("Error", null, 2, null);
    private static final SemanticsPropertyKey<Function1<Object, Integer>> IndexForKey = new SemanticsPropertyKey<>("IndexForKey", null, 2, null);

    public static /* synthetic */ void getInvisibleToUser$annotations() {
    }

    @Deprecated(message = "Use `isTraversalGroup` instead.", replaceWith = @ReplaceWith(expression = "IsTraversalGroup", imports = {}))
    public static /* synthetic */ void getIsContainer$annotations() {
    }

    public final SemanticsPropertyKey<CollectionInfo> getCollectionInfo() {
        return CollectionInfo;
    }

    public final SemanticsPropertyKey<CollectionItemInfo> getCollectionItemInfo() {
        return CollectionItemInfo;
    }

    public final SemanticsPropertyKey<List<String>> getContentDescription() {
        return ContentDescription;
    }

    public final SemanticsPropertyKey<Unit> getDisabled() {
        return Disabled;
    }

    public final SemanticsPropertyKey<AnnotatedString> getEditableText() {
        return EditableText;
    }

    public final SemanticsPropertyKey<String> getError() {
        return Error;
    }

    public final SemanticsPropertyKey<Boolean> getFocused() {
        return Focused;
    }

    public final SemanticsPropertyKey<Unit> getHeading() {
        return Heading;
    }

    public final SemanticsPropertyKey<ScrollAxisRange> getHorizontalScrollAxisRange() {
        return HorizontalScrollAxisRange;
    }

    public final SemanticsPropertyKey<ImeAction> getImeAction() {
        return ImeAction;
    }

    public final SemanticsPropertyKey<Function1<Object, Integer>> getIndexForKey() {
        return IndexForKey;
    }

    public final SemanticsPropertyKey<Unit> getInvisibleToUser() {
        return InvisibleToUser;
    }

    public final SemanticsPropertyKey<Boolean> getIsContainer() {
        return IsTraversalGroup;
    }

    public final SemanticsPropertyKey<Unit> getIsDialog() {
        return IsDialog;
    }

    public final SemanticsPropertyKey<Unit> getIsPopup() {
        return IsPopup;
    }

    public final SemanticsPropertyKey<Boolean> getIsTraversalGroup() {
        return IsTraversalGroup;
    }

    public final SemanticsPropertyKey<LiveRegionMode> getLiveRegion() {
        return LiveRegion;
    }

    public final SemanticsPropertyKey<String> getPaneTitle() {
        return PaneTitle;
    }

    public final SemanticsPropertyKey<Unit> getPassword() {
        return Password;
    }

    public final SemanticsPropertyKey<ProgressBarRangeInfo> getProgressBarRangeInfo() {
        return ProgressBarRangeInfo;
    }

    public final SemanticsPropertyKey<Role> getRole() {
        return Role;
    }

    public final SemanticsPropertyKey<Unit> getSelectableGroup() {
        return SelectableGroup;
    }

    public final SemanticsPropertyKey<Boolean> getSelected() {
        return Selected;
    }

    public final SemanticsPropertyKey<String> getStateDescription() {
        return StateDescription;
    }

    public final SemanticsPropertyKey<String> getTestTag() {
        return TestTag;
    }

    public final SemanticsPropertyKey<List<AnnotatedString>> getText() {
        return Text;
    }

    public final SemanticsPropertyKey<TextRange> getTextSelectionRange() {
        return TextSelectionRange;
    }

    public final SemanticsPropertyKey<ToggleableState> getToggleableState() {
        return ToggleableState;
    }

    public final SemanticsPropertyKey<Float> getTraversalIndex() {
        return TraversalIndex;
    }

    public final SemanticsPropertyKey<ScrollAxisRange> getVerticalScrollAxisRange() {
        return VerticalScrollAxisRange;
    }

    private SemanticsProperties() {
    }
}
