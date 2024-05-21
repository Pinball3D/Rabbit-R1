.class public interface abstract Landroidx/compose/ui/node/Owner;
.super Ljava/lang/Object;
.source "Owner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/Owner$Companion;,
        Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008`\u0018\u0000 \u009d\u00012\u00020\u0001:\u0004\u009d\u0001\u009e\u0001J\u001d\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020oH&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008q\u0010rJ\u001d\u0010s\u001a\u00020o2\u0006\u0010t\u001a\u00020oH&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008u\u0010rJ*\u0010v\u001a\u00020w2\u0012\u0010x\u001a\u000e\u0012\u0004\u0012\u00020z\u0012\u0004\u0012\u00020{0y2\u000c\u0010|\u001a\u0008\u0012\u0004\u0012\u00020{0}H&J\u001b\u0010~\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020H2\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020TH&J%\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u00012\u0008\u0010\u0083\u0001\u001a\u00030\u0084\u0001H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u0008\u0085\u0001\u0010\u0086\u0001J*\u0010\u0087\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020H2\u0008\u0010\u0088\u0001\u001a\u00030\u0089\u0001H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u0008\u008a\u0001\u0010\u008b\u0001J\u0014\u0010\u0087\u0001\u001a\u00020{2\t\u0008\u0002\u0010\u008c\u0001\u001a\u00020TH&J\u0012\u0010\u008d\u0001\u001a\u00020{2\u0007\u0010\u008e\u0001\u001a\u00020HH&J\u0012\u0010\u008f\u0001\u001a\u00020{2\u0007\u0010\u008e\u0001\u001a\u00020HH&J\t\u0010\u0090\u0001\u001a\u00020{H&J\u0011\u0010\u0091\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020HH&J2\u0010\u0092\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020H2\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020T2\t\u0008\u0002\u0010\u0093\u0001\u001a\u00020T2\t\u0008\u0002\u0010\u0094\u0001\u001a\u00020TH&J\'\u0010\u0095\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020H2\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020T2\t\u0008\u0002\u0010\u0093\u0001\u001a\u00020TH&J\t\u0010\u0096\u0001\u001a\u00020{H&J\u0018\u0010\u0097\u0001\u001a\u00020{2\r\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u00020{0}H&J\u0013\u0010\u0099\u0001\u001a\u00020{2\u0008\u0010\u0098\u0001\u001a\u00030\u009a\u0001H&J\t\u0010\u009b\u0001\u001a\u00020TH&J\u0011\u0010\u009c\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020HH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00078gX\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\r8gX\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u0012X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0012\u0010\u0015\u001a\u00020\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0012\u0010\u0019\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0012\u0010\u001d\u001a\u00020\u001eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0012\u0010!\u001a\u00020\"X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\'\u0010\t\u001a\u0004\u0008(\u0010)R\u0012\u0010*\u001a\u00020+X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0012\u0010.\u001a\u00020/X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0012\u00102\u001a\u000203X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0012\u00106\u001a\u000207X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u0012\u0010:\u001a\u00020;X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R\u0018\u0010>\u001a\u00020?X\u00a6\u0004\u00a2\u0006\u000c\u0012\u0004\u0008@\u0010\t\u001a\u0004\u0008A\u0010BR\u0012\u0010C\u001a\u00020DX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR\u0012\u0010G\u001a\u00020HX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010JR\u0012\u0010K\u001a\u00020LX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010NR\u0012\u0010O\u001a\u00020PX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010RR\"\u0010U\u001a\u00020T2\u0006\u0010S\u001a\u00020T@gX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\u0012\u0010Z\u001a\u00020[X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010]R\u0012\u0010^\u001a\u00020_X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010aR\u0012\u0010b\u001a\u00020cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010eR\u0012\u0010f\u001a\u00020gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010iR\u0012\u0010j\u001a\u00020kX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010m\u00f8\u0001\u0002\u0082\u0002\u0011\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006\u009f\u0001\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/node/Owner;",
        "",
        "accessibilityManager",
        "Landroidx/compose/ui/platform/AccessibilityManager;",
        "getAccessibilityManager",
        "()Landroidx/compose/ui/platform/AccessibilityManager;",
        "autofill",
        "Landroidx/compose/ui/autofill/Autofill;",
        "getAutofill$annotations",
        "()V",
        "getAutofill",
        "()Landroidx/compose/ui/autofill/Autofill;",
        "autofillTree",
        "Landroidx/compose/ui/autofill/AutofillTree;",
        "getAutofillTree$annotations",
        "getAutofillTree",
        "()Landroidx/compose/ui/autofill/AutofillTree;",
        "clipboardManager",
        "Landroidx/compose/ui/platform/ClipboardManager;",
        "getClipboardManager",
        "()Landroidx/compose/ui/platform/ClipboardManager;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getDensity",
        "()Landroidx/compose/ui/unit/Density;",
        "focusOwner",
        "Landroidx/compose/ui/focus/FocusOwner;",
        "getFocusOwner",
        "()Landroidx/compose/ui/focus/FocusOwner;",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "getFontFamilyResolver",
        "()Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "fontLoader",
        "Landroidx/compose/ui/text/font/Font$ResourceLoader;",
        "getFontLoader$annotations",
        "getFontLoader",
        "()Landroidx/compose/ui/text/font/Font$ResourceLoader;",
        "hapticFeedBack",
        "Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "getHapticFeedBack",
        "()Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "inputModeManager",
        "Landroidx/compose/ui/input/InputModeManager;",
        "getInputModeManager",
        "()Landroidx/compose/ui/input/InputModeManager;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "measureIteration",
        "",
        "getMeasureIteration",
        "()J",
        "modifierLocalManager",
        "Landroidx/compose/ui/modifier/ModifierLocalManager;",
        "getModifierLocalManager",
        "()Landroidx/compose/ui/modifier/ModifierLocalManager;",
        "platformTextInputPluginRegistry",
        "Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistry;",
        "getPlatformTextInputPluginRegistry$annotations",
        "getPlatformTextInputPluginRegistry",
        "()Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistry;",
        "pointerIconService",
        "Landroidx/compose/ui/input/pointer/PointerIconService;",
        "getPointerIconService",
        "()Landroidx/compose/ui/input/pointer/PointerIconService;",
        "root",
        "Landroidx/compose/ui/node/LayoutNode;",
        "getRoot",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "rootForTest",
        "Landroidx/compose/ui/node/RootForTest;",
        "getRootForTest",
        "()Landroidx/compose/ui/node/RootForTest;",
        "sharedDrawScope",
        "Landroidx/compose/ui/node/LayoutNodeDrawScope;",
        "getSharedDrawScope",
        "()Landroidx/compose/ui/node/LayoutNodeDrawScope;",
        "<set-?>",
        "",
        "showLayoutBounds",
        "getShowLayoutBounds",
        "()Z",
        "setShowLayoutBounds",
        "(Z)V",
        "snapshotObserver",
        "Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "getSnapshotObserver",
        "()Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "textInputService",
        "Landroidx/compose/ui/text/input/TextInputService;",
        "getTextInputService",
        "()Landroidx/compose/ui/text/input/TextInputService;",
        "textToolbar",
        "Landroidx/compose/ui/platform/TextToolbar;",
        "getTextToolbar",
        "()Landroidx/compose/ui/platform/TextToolbar;",
        "viewConfiguration",
        "Landroidx/compose/ui/platform/ViewConfiguration;",
        "getViewConfiguration",
        "()Landroidx/compose/ui/platform/ViewConfiguration;",
        "windowInfo",
        "Landroidx/compose/ui/platform/WindowInfo;",
        "getWindowInfo",
        "()Landroidx/compose/ui/platform/WindowInfo;",
        "calculateLocalPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "positionInWindow",
        "calculateLocalPosition-MK-Hz9U",
        "(J)J",
        "calculatePositionInWindow",
        "localPosition",
        "calculatePositionInWindow-MK-Hz9U",
        "createLayer",
        "Landroidx/compose/ui/node/OwnedLayer;",
        "drawBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/Canvas;",
        "",
        "invalidateParentLayer",
        "Lkotlin/Function0;",
        "forceMeasureTheSubtree",
        "layoutNode",
        "affectsLookahead",
        "getFocusDirection",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "keyEvent",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "getFocusDirection-P8AzH3I",
        "(Landroid/view/KeyEvent;)Landroidx/compose/ui/focus/FocusDirection;",
        "measureAndLayout",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measureAndLayout-0kLqBqw",
        "(Landroidx/compose/ui/node/LayoutNode;J)V",
        "sendPointerUpdate",
        "onAttach",
        "node",
        "onDetach",
        "onEndApplyChanges",
        "onLayoutChange",
        "onRequestMeasure",
        "forceRequest",
        "scheduleMeasureAndLayout",
        "onRequestRelayout",
        "onSemanticsChange",
        "registerOnEndApplyChangesListener",
        "listener",
        "registerOnLayoutCompletedListener",
        "Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;",
        "requestFocus",
        "requestOnPositionedCallback",
        "Companion",
        "OnLayoutCompletedListener",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/Owner$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/Owner$Companion;->$$INSTANCE:Landroidx/compose/ui/node/Owner$Companion;

    sput-object v0, Landroidx/compose/ui/node/Owner;->Companion:Landroidx/compose/ui/node/Owner$Companion;

    return-void
.end method

.method public static synthetic forceMeasureTheSubtree$default(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 234
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/node/Owner;->forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: forceMeasureTheSubtree"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getAutofill$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getAutofillTree$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFontLoader$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "fontLoader is deprecated, use fontFamilyResolver"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "fontFamilyResolver"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic getPlatformTextInputPluginRegistry$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic measureAndLayout$default(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 223
    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/node/Owner;->measureAndLayout(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: measureAndLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic onRequestMeasure$default(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 156
    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/Owner;->onRequestMeasure(Landroidx/compose/ui/node/LayoutNode;ZZZ)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onRequestMeasure"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic onRequestRelayout$default(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/node/LayoutNode;ZZILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 171
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/node/Owner;->onRequestRelayout(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onRequestRelayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract calculateLocalPosition-MK-Hz9U(J)J
.end method

.method public abstract calculatePositionInWindow-MK-Hz9U(J)J
.end method

.method public abstract createLayer(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/OwnedLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/node/OwnedLayer;"
        }
    .end annotation
.end method

.method public abstract forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;Z)V
.end method

.method public abstract getAccessibilityManager()Landroidx/compose/ui/platform/AccessibilityManager;
.end method

.method public abstract getAutofill()Landroidx/compose/ui/autofill/Autofill;
.end method

.method public abstract getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;
.end method

.method public abstract getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;
.end method

.method public abstract getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
.end method

.method public abstract getDensity()Landroidx/compose/ui/unit/Density;
.end method

.method public abstract getFocusDirection-P8AzH3I(Landroid/view/KeyEvent;)Landroidx/compose/ui/focus/FocusDirection;
.end method

.method public abstract getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;
.end method

.method public abstract getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;
.end method

.method public abstract getFontLoader()Landroidx/compose/ui/text/font/Font$ResourceLoader;
.end method

.method public abstract getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;
.end method

.method public abstract getInputModeManager()Landroidx/compose/ui/input/InputModeManager;
.end method

.method public abstract getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
.end method

.method public abstract getMeasureIteration()J
.end method

.method public abstract getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;
.end method

.method public abstract getPlatformTextInputPluginRegistry()Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistry;
.end method

.method public abstract getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;
.end method

.method public abstract getRoot()Landroidx/compose/ui/node/LayoutNode;
.end method

.method public abstract getRootForTest()Landroidx/compose/ui/node/RootForTest;
.end method

.method public abstract getSharedDrawScope()Landroidx/compose/ui/node/LayoutNodeDrawScope;
.end method

.method public abstract getShowLayoutBounds()Z
.end method

.method public abstract getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
.end method

.method public abstract getTextInputService()Landroidx/compose/ui/text/input/TextInputService;
.end method

.method public abstract getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;
.end method

.method public abstract getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
.end method

.method public abstract getWindowInfo()Landroidx/compose/ui/platform/WindowInfo;
.end method

.method public abstract measureAndLayout(Z)V
.end method

.method public abstract measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V
.end method

.method public abstract onAttach(Landroidx/compose/ui/node/LayoutNode;)V
.end method

.method public abstract onDetach(Landroidx/compose/ui/node/LayoutNode;)V
.end method

.method public abstract onEndApplyChanges()V
.end method

.method public abstract onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V
.end method

.method public abstract onRequestMeasure(Landroidx/compose/ui/node/LayoutNode;ZZZ)V
.end method

.method public abstract onRequestRelayout(Landroidx/compose/ui/node/LayoutNode;ZZ)V
.end method

.method public abstract onSemanticsChange()V
.end method

.method public abstract registerOnEndApplyChangesListener(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerOnLayoutCompletedListener(Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;)V
.end method

.method public abstract requestFocus()Z
.end method

.method public abstract requestOnPositionedCallback(Landroidx/compose/ui/node/LayoutNode;)V
.end method

.method public abstract setShowLayoutBounds(Z)V
.end method
