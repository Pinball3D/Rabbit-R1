.class public final Landroidx/compose/foundation/text/selection/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManager\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,914:1\n81#2:915\n107#2,2:916\n81#2:918\n107#2,2:919\n81#2:921\n107#2,2:922\n81#2:924\n107#2,2:925\n81#2:927\n107#2,2:928\n81#2:930\n107#2,2:931\n81#2:933\n107#2,2:934\n1#3:936\n59#4,3:937\n62#4,2:944\n64#4:947\n59#4,3:948\n62#4,2:955\n64#4:958\n33#5,4:940\n38#5:946\n33#5,4:951\n38#5:957\n*S KotlinDebug\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManager\n*L\n112#1:915\n112#1:916,2\n161#1:918\n161#1:919,2\n168#1:921\n168#1:922,2\n177#1:924\n177#1:925,2\n186#1:927\n186#1:928,2\n193#1:930\n193#1:931,2\n200#1:933\n200#1:934,2\n368#1:937,3\n368#1:944,2\n368#1:947\n752#1:948,3\n752#1:955,2\n752#1:958\n368#1:940,4\n368#1:946\n752#1:951,4\n752#1:957\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001b\u0010f\u001a\u00020L2\u0006\u0010g\u001a\u00020\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008h\u0010\"J\'\u0010i\u001a\u0004\u0018\u00010\u00162\u0006\u0010j\u001a\u00020\u000f2\u0006\u0010k\u001a\u00020\u0016H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008l\u0010mJ\r\u0010n\u001a\u00020LH\u0000\u00a2\u0006\u0002\u0008oJ\u0017\u0010p\u001a\u0004\u0018\u00010q2\u0006\u0010r\u001a\u00020sH\u0000\u00a2\u0006\u0002\u0008tJ\u0008\u0010u\u001a\u00020vH\u0002J\u000f\u0010w\u001a\u0004\u0018\u00010xH\u0000\u00a2\u0006\u0002\u0008yJ\u000e\u0010z\u001a\u00020{2\u0006\u0010|\u001a\u00020?J\r\u0010}\u001a\u00020LH\u0000\u00a2\u0006\u0002\u0008~J\u0006\u0010\u007f\u001a\u00020LJ\u000f\u0010\u0080\u0001\u001a\u00020\u000fH\u0000\u00a2\u0006\u0003\u0008\u0081\u0001JA\u0010\u0082\u0001\u001a\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0012\u0012\u0010\u0012\u0005\u0012\u00030\u0085\u0001\u0012\u0004\u0012\u00020\u00070\u0084\u00010\u0083\u00012\u0008\u0010\u0086\u0001\u001a\u00030\u0085\u00012\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0007H\u0000\u00a2\u0006\u0003\u0008\u0088\u0001J\u000f\u0010\u0089\u0001\u001a\u00020LH\u0000\u00a2\u0006\u0003\u0008\u008a\u0001J2\u0010\u008b\u0001\u001a\u00020L2\u0006\u0010g\u001a\u00020\u00162\u0006\u0010|\u001a\u00020?2\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008e\u0001\u0010\u008f\u0001J\t\u0010\u0090\u0001\u001a\u00020LH\u0002JE\u0010\u0091\u0001\u001a\u00020?2\u0006\u0010Y\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00162\t\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u00162\u0006\u0010|\u001a\u00020?2\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0000\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u0094\u0001J<\u0010\u0091\u0001\u001a\u00020?2\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u00162\u0008\u0010Q\u001a\u0004\u0018\u00010\u00162\u0006\u0010|\u001a\u00020?2\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0000\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0003\u0008\u0096\u0001J\t\u0010\u0097\u0001\u001a\u00020LH\u0002J0\u0010\u0098\u0001\u001a\u00020L*\u00030\u0099\u00012\u0013\u0010\u009a\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020L0KH\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u009b\u0001J\u001d\u0010\u009c\u0001\u001a\u00020G*\u00020G2\u000e\u0010\u009d\u0001\u001a\t\u0012\u0004\u0012\u00020L0\u009e\u0001H\u0002R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR(\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R8\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00168F@BX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR4\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00168@@BX\u0080\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u001d\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R4\u0010$\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00168@@BX\u0080\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u001d\u001a\u0004\u0008%\u0010 \"\u0004\u0008&\u0010\"R/\u0010)\u001a\u0004\u0018\u00010(2\u0008\u0010\u0015\u001a\u0004\u0018\u00010(8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u001d\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R8\u0010/\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00168F@BX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u00082\u0010\u001d\u001a\u0004\u00080\u0010\u0019\"\u0004\u00081\u0010\u001bR\u001a\u00103\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R+\u0010@\u001a\u00020?2\u0006\u0010\u0015\u001a\u00020?8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008E\u0010\u001d\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u0011\u0010F\u001a\u00020G8F\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR(\u0010J\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020L0KX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u0019\u0010Q\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\n\u0000R(\u0010R\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010W\u001a\u00020?8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010BR8\u0010Y\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00168F@BX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008\\\u0010\u001d\u001a\u0004\u0008Z\u0010\u0019\"\u0004\u0008[\u0010\u001bR\u001c\u0010]\u001a\u0004\u0018\u00010^X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u0010bR\u001a\u0010c\u001a\u00020?X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010B\"\u0004\u0008e\u0010D\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u009f\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/SelectionManager;",
        "",
        "selectionRegistrar",
        "Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;",
        "(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V",
        "_selection",
        "Landroidx/compose/runtime/MutableState;",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "clipboardManager",
        "Landroidx/compose/ui/platform/ClipboardManager;",
        "getClipboardManager",
        "()Landroidx/compose/ui/platform/ClipboardManager;",
        "setClipboardManager",
        "(Landroidx/compose/ui/platform/ClipboardManager;)V",
        "value",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "containerLayoutCoordinates",
        "getContainerLayoutCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "setContainerLayoutCoordinates",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "<set-?>",
        "Landroidx/compose/ui/geometry/Offset;",
        "currentDragPosition",
        "getCurrentDragPosition-_m7T9-E",
        "()Landroidx/compose/ui/geometry/Offset;",
        "setCurrentDragPosition-_kEHs6E",
        "(Landroidx/compose/ui/geometry/Offset;)V",
        "currentDragPosition$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "dragBeginPosition",
        "getDragBeginPosition-F1C5BW0$foundation_release",
        "()J",
        "setDragBeginPosition-k-4lQ0M",
        "(J)V",
        "dragBeginPosition$delegate",
        "dragTotalDistance",
        "getDragTotalDistance-F1C5BW0$foundation_release",
        "setDragTotalDistance-k-4lQ0M",
        "dragTotalDistance$delegate",
        "Landroidx/compose/foundation/text/Handle;",
        "draggingHandle",
        "getDraggingHandle",
        "()Landroidx/compose/foundation/text/Handle;",
        "setDraggingHandle",
        "(Landroidx/compose/foundation/text/Handle;)V",
        "draggingHandle$delegate",
        "endHandlePosition",
        "getEndHandlePosition-_m7T9-E",
        "setEndHandlePosition-_kEHs6E",
        "endHandlePosition$delegate",
        "focusRequester",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "getFocusRequester",
        "()Landroidx/compose/ui/focus/FocusRequester;",
        "setFocusRequester",
        "(Landroidx/compose/ui/focus/FocusRequester;)V",
        "hapticFeedBack",
        "Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "getHapticFeedBack",
        "()Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "setHapticFeedBack",
        "(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V",
        "",
        "hasFocus",
        "getHasFocus",
        "()Z",
        "setHasFocus",
        "(Z)V",
        "hasFocus$delegate",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "onSelectionChange",
        "Lkotlin/Function1;",
        "",
        "getOnSelectionChange",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSelectionChange",
        "(Lkotlin/jvm/functions/Function1;)V",
        "previousPosition",
        "selection",
        "getSelection",
        "()Landroidx/compose/foundation/text/selection/Selection;",
        "setSelection",
        "(Landroidx/compose/foundation/text/selection/Selection;)V",
        "shouldShowMagnifier",
        "getShouldShowMagnifier",
        "startHandlePosition",
        "getStartHandlePosition-_m7T9-E",
        "setStartHandlePosition-_kEHs6E",
        "startHandlePosition$delegate",
        "textToolbar",
        "Landroidx/compose/ui/platform/TextToolbar;",
        "getTextToolbar",
        "()Landroidx/compose/ui/platform/TextToolbar;",
        "setTextToolbar",
        "(Landroidx/compose/ui/platform/TextToolbar;)V",
        "touchMode",
        "getTouchMode",
        "setTouchMode",
        "contextMenuOpenAdjustment",
        "position",
        "contextMenuOpenAdjustment-k-4lQ0M",
        "convertToContainerCoordinates",
        "layoutCoordinates",
        "offset",
        "convertToContainerCoordinates-Q7Q5hAU",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;",
        "copy",
        "copy$foundation_release",
        "getAnchorSelectable",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "anchor",
        "Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;",
        "getAnchorSelectable$foundation_release",
        "getContentRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "getSelectedText",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "getSelectedText$foundation_release",
        "handleDragObserver",
        "Landroidx/compose/foundation/text/TextDragObserver;",
        "isStartHandle",
        "hideSelectionToolbar",
        "hideSelectionToolbar$foundation_release",
        "onRelease",
        "requireContainerCoordinates",
        "requireContainerCoordinates$foundation_release",
        "selectAll",
        "Lkotlin/Pair;",
        "",
        "",
        "selectableId",
        "previousSelection",
        "selectAll$foundation_release",
        "showSelectionToolbar",
        "showSelectionToolbar$foundation_release",
        "startSelection",
        "adjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "startSelection-9KIMszo",
        "(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V",
        "updateHandleOffsets",
        "updateSelection",
        "previousHandlePosition",
        "updateSelection-3R_-tFg$foundation_release",
        "(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z",
        "newPosition",
        "updateSelection-RHHTvR4$foundation_release",
        "updateSelectionToolbarPosition",
        "detectNonConsumingTap",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "onTap",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onClearSelectionRequested",
        "block",
        "Lkotlin/Function0;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _selection:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;"
        }
    .end annotation
.end field

.field private clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

.field private containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private final currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

.field private final dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

.field private final dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

.field private final draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

.field private final endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

.field private focusRequester:Landroidx/compose/ui/focus/FocusRequester;

.field private hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field private final hasFocus$delegate:Landroidx/compose/runtime/MutableState;

.field private onSelectionChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private previousPosition:Landroidx/compose/ui/geometry/Offset;

.field private final selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

.field private final startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

.field private textToolbar:Landroidx/compose/ui/platform/TextToolbar;

.field private touchMode:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V
    .locals 4

    const-string/jumbo v0, "selectionRegistrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 63
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->touchMode:Z

    .line 87
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionManager$onSelectionChange$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionManager$onSelectionChange$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 107
    new-instance v2, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v2}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    const/4 v2, 0x0

    .line 112
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 161
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 168
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 177
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 186
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 193
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 200
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 206
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnPositionChangeCallback$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 216
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateStartCallback$foundation_release(Lkotlin/jvm/functions/Function3;)V

    .line 235
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$3;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateSelectAll$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 250
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$4;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$4;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function5;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateCallback$foundation_release(Lkotlin/jvm/functions/Function5;)V

    .line 265
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$5;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$5;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateEndCallback$foundation_release(Lkotlin/jvm/functions/Function0;)V

    .line 273
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$6;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$6;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectableChangeCallback$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 281
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$7;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$7;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setAfterSelectableUnsubscribe$foundation_release(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$convertToContainerCoordinates-Q7Q5hAU(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->convertToContainerCoordinates-Q7Q5hAU(Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$detectNonConsumingTap(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->detectNonConsumingTap(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    return-object p0
.end method

.method public static final synthetic access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    return-void
.end method

.method public static final synthetic access$setDragBeginPosition-k-4lQ0M(Landroidx/compose/foundation/text/selection/SelectionManager;J)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDragBeginPosition-k-4lQ0M(J)V

    return-void
.end method

.method public static final synthetic access$setDragTotalDistance-k-4lQ0M(Landroidx/compose/foundation/text/selection/SelectionManager;J)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDragTotalDistance-k-4lQ0M(J)V

    return-void
.end method

.method public static final synthetic access$setDraggingHandle(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/text/Handle;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    return-void
.end method

.method public static final synthetic access$setEndHandlePosition-_kEHs6E(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    return-void
.end method

.method public static final synthetic access$setStartHandlePosition-_kEHs6E(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    return-void
.end method

.method public static final synthetic access$startSelection-9KIMszo(Landroidx/compose/foundation/text/selection/SelectionManager;JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/SelectionManager;->startSelection-9KIMszo(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    return-void
.end method

.method public static final synthetic access$updateHandleOffsets(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    return-void
.end method

.method public static final synthetic access$updateSelectionToolbarPosition(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbarPosition()V

    return-void
.end method

.method private final convertToContainerCoordinates-Q7Q5hAU(Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_1

    .line 642
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final detectNonConsumingTap(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 626
    new-instance p0, Landroidx/compose/foundation/text/selection/SelectionManager$detectNonConsumingTap$2;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/compose/foundation/text/selection/SelectionManager$detectNonConsumingTap$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p0, p3}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getContentRect()Landroidx/compose/ui/geometry/Rect;
    .locals 14

    .line 450
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    .line 451
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v1

    .line 452
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v2

    if-eqz v1, :cond_5

    .line 453
    invoke-interface {v1}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_4

    .line 454
    invoke-interface {v2}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz p0, :cond_3

    .line 457
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 460
    invoke-interface {v1, v0, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    move-result-wide v5

    .line 458
    invoke-interface {p0, v3, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v5

    const/4 v7, 0x0

    .line 467
    invoke-interface {v2, v0, v7}, Landroidx/compose/foundation/text/selection/Selectable;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    move-result-wide v7

    .line 465
    invoke-interface {p0, v4, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v7

    .line 473
    invoke-interface {p0, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v5

    .line 474
    invoke-interface {p0, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v7

    .line 476
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 477
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v10

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 483
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v11

    invoke-interface {v1, v11}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    const/4 v11, 0x0

    .line 481
    invoke-static {v11, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v12

    .line 479
    invoke-interface {p0, v3, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v12

    .line 491
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v0

    invoke-interface {v2, v0}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    .line 489
    invoke-static {v11, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    .line 487
    invoke-interface {p0, v4, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    .line 495
    invoke-interface {p0, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v2

    .line 496
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    .line 498
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 499
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->getHandleHeight()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    .line 501
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v1, v9, p0, v10, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v1

    .line 508
    :cond_3
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    .line 454
    :cond_4
    :goto_0
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    .line 453
    :cond_5
    :goto_1
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final getShouldShowMagnifier()Z
    .locals 0

    .line 203
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final onClearSelectionRequested(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 634
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$onClearSelectionRequested$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/compose/foundation/text/selection/SelectionManager$onClearSelectionRequested$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 934
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setDragBeginPosition-k-4lQ0M(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 161
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    .line 919
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setDragTotalDistance-k-4lQ0M(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 168
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    .line 922
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 931
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 928
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 925
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final startSelection-9KIMszo(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v6, p3

    move-object v7, p4

    .line 662
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelection-3R_-tFg$foundation_release(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    return-void
.end method

.method private final updateHandleOffsets()V
    .locals 9

    .line 303
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 307
    invoke-interface {v3}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eqz v4, :cond_3

    .line 308
    invoke-interface {v4}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v2

    :goto_3
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 312
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    if-nez v6, :cond_4

    goto :goto_5

    :cond_4
    const/4 v7, 0x1

    .line 323
    invoke-interface {v3, v0, v7}, Landroidx/compose/foundation/text/selection/Selectable;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    move-result-wide v7

    .line 321
    invoke-interface {v1, v5, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v7

    const/4 v3, 0x0

    .line 330
    invoke-interface {v4, v0, v3}, Landroidx/compose/foundation/text/selection/Selectable;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    move-result-wide v3

    .line 328
    invoke-interface {v1, v6, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v3

    .line 336
    invoke-static {v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 342
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 343
    invoke-static {v0, v7, v8}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v5

    if-nez v5, :cond_6

    .line 344
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    if-ne v5, v6, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v2

    .line 342
    :cond_6
    :goto_4
    invoke-direct {p0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 346
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 347
    invoke-static {v0, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 348
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    if-ne v0, v3, :cond_8

    :cond_7
    move-object v2, v1

    .line 346
    :cond_8
    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    return-void

    .line 316
    :cond_9
    :goto_5
    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 317
    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    return-void
.end method

.method private final updateSelectionToolbarPosition()V
    .locals 2

    .line 439
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    if-ne v0, v1, :cond_1

    .line 440
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->showSelectionToolbar$foundation_release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final contextMenuOpenAdjustment-k-4lQ0M(J)V
    .locals 2

    .line 778
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->toTextRange-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    :cond_0
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v0

    const/4 v1, 0x1

    .line 782
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->startSelection-9KIMszo(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    :cond_1
    return-void
.end method

.method public final copy$foundation_release()V
    .locals 1

    .line 409
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelectedText$foundation_release()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    if-eqz p0, :cond_0

    .line 410
    invoke-interface {p0, v0}, Landroidx/compose/ui/platform/ClipboardManager;->setText(Landroidx/compose/ui/text/AnnotatedString;)V

    :cond_0
    return-void
.end method

.method public final getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;
    .locals 2

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 299
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSelectableMap$foundation_release()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/Selectable;

    return-object p0
.end method

.method public final getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    return-object p0
.end method

.method public final getContainerLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public final getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 200
    check-cast p0, Landroidx/compose/runtime/State;

    .line 933
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    return-object p0
.end method

.method public final getDragBeginPosition-F1C5BW0$foundation_release()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 161
    check-cast p0, Landroidx/compose/runtime/State;

    .line 918
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDragTotalDistance-F1C5BW0$foundation_release()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 168
    check-cast p0, Landroidx/compose/runtime/State;

    .line 921
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDraggingHandle()Landroidx/compose/foundation/text/Handle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 193
    check-cast p0, Landroidx/compose/runtime/State;

    .line 930
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/Handle;

    return-object p0
.end method

.method public final getEndHandlePosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 186
    check-cast p0, Landroidx/compose/runtime/State;

    .line 927
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    return-object p0
.end method

.method public final getFocusRequester()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public final getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-object p0
.end method

.method public final getHasFocus()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 112
    check-cast p0, Landroidx/compose/runtime/State;

    .line 915
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 4

    .line 118
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 119
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->onClearSelectionRequested(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 120
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$2;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 121
    invoke-static {v0, v1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 122
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 128
    invoke-static {v0, v3, v1, v2, v1}, Landroidx/compose/foundation/FocusableKt;->focusable$default(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 129
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$4;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$4;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 137
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getShouldShowMagnifier()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-static {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt;->selectionMagnifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    :goto_0
    invoke-interface {v0, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public final getOnSelectionChange()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSelectedText$foundation_release()Landroidx/compose/ui/text/AnnotatedString;
    .locals 10

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 381
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    .line 385
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 386
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/selection/Selectable;

    .line 388
    invoke-interface {v4}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 389
    invoke-interface {v4}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    goto :goto_2

    .line 393
    :cond_0
    invoke-static {v4, p0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->getCurrentSelectedText(Landroidx/compose/foundation/text/selection/Selectable;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v5

    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/AnnotatedString;->plus(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 400
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v6

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    :cond_3
    invoke-interface {v4}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v6

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object v1, v5

    goto :goto_3

    :cond_5
    move-object v1, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-object v1
.end method

.method public final getSelection()Landroidx/compose/foundation/text/selection/Selection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    .line 69
    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/Selection;

    return-object p0
.end method

.method public final getStartHandlePosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 177
    check-cast p0, Landroidx/compose/runtime/State;

    .line 924
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    return-object p0
.end method

.method public final getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    return-object p0
.end method

.method public final getTouchMode()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->touchMode:Z

    return p0
.end method

.method public final handleDragObserver(Z)Landroidx/compose/foundation/text/TextDragObserver;
    .locals 1

    .line 521
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Z)V

    check-cast v0, Landroidx/compose/foundation/text/TextDragObserver;

    return-object v0
.end method

.method public final hideSelectionToolbar$foundation_release()V
    .locals 2

    .line 433
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    if-eqz p0, :cond_1

    .line 434
    invoke-interface {p0}, Landroidx/compose/ui/platform/TextToolbar;->hide()V

    :cond_1
    return-void
.end method

.method public final onRelease()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 513
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setSubselections(Ljava/util/Map;)V

    .line 514
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->hideSelectionToolbar$foundation_release()V

    .line 515
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    .line 516
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz p0, :cond_0

    .line 517
    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    :cond_0
    return-void
.end method

.method public final requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    const-string v0, "Failed requirement."

    if-eqz p0, :cond_1

    .line 358
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 357
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final selectAll$foundation_release(JLandroidx/compose/foundation/text/selection/Selection;)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ")",
            "Lkotlin/Pair<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;>;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 367
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v1

    .line 941
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 942
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 944
    check-cast v6, Landroidx/compose/foundation/text/selection/Selectable;

    .line 369
    invoke-interface {v6}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v7

    cmp-long v7, v7, p1

    if-nez v7, :cond_0

    .line 370
    invoke-interface {v6}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectAllSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v3

    :goto_1
    if-eqz v7, :cond_1

    .line 371
    invoke-interface {v6}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_1
    invoke-static {v5, v7}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->merge(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 374
    :cond_2
    invoke-static {v5, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz p0, :cond_3

    .line 375
    sget-object p1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 377
    :cond_3
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setClipboardManager(Landroidx/compose/ui/platform/ClipboardManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    return-void
.end method

.method public final setContainerLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 2

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 147
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 148
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousPosition:Landroidx/compose/ui/geometry/Offset;

    .line 149
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousPosition:Landroidx/compose/ui/geometry/Offset;

    .line 151
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    .line 152
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbarPosition()V

    :cond_1
    return-void
.end method

.method public final setFocusRequester(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method

.method public final setHapticFeedBack(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-void
.end method

.method public final setHasFocus(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 112
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 916
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnSelectionChange(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSelection(Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    .line 71
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 73
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    :cond_0
    return-void
.end method

.method public final setTextToolbar(Landroidx/compose/ui/platform/TextToolbar;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    return-void
.end method

.method public final setTouchMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->touchMode:Z

    return-void
.end method

.method public final showSelectionToolbar$foundation_release()V
    .locals 9

    .line 419
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    if-eqz v1, :cond_0

    .line 422
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContentRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 421
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$showSelectionToolbar$1$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$showSelectionToolbar$1$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/platform/TextToolbar;->showMenu$default(Landroidx/compose/ui/platform/TextToolbar;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final updateSelection-3R_-tFg$foundation_release(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "adjustment"

    move-object/from16 v11, p7

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 747
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    :goto_0
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    if-eqz p6, :cond_1

    .line 748
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    :goto_1
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 749
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v12, v1

    check-cast v12, Ljava/util/Map;

    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v13

    .line 952
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v1, 0x0

    move-object v10, v1

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v9, v14, :cond_5

    .line 953
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 955
    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/foundation/text/selection/Selectable;

    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 754
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Ljava/util/Map;

    move-result-object v1

    invoke-interface/range {v17 .. v17}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroidx/compose/foundation/text/selection/Selection;

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v8

    move-object/from16 v1, v17

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v19, v9

    move-object/from16 v9, p7

    move-object v15, v10

    move-object/from16 v10, v18

    .line 755
    invoke-interface/range {v1 .. v10}, Landroidx/compose/foundation/text/selection/Selectable;->updateSelection-qCDeeow(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/selection/Selection;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v16, :cond_3

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v1, 0x1

    move/from16 v16, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 766
    invoke-interface/range {v17 .. v17}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_4
    invoke-static {v15, v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->merge(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v10

    add-int/lit8 v9, v19, 0x1

    goto :goto_2

    :cond_5
    move-object v15, v10

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v1, :cond_6

    .line 770
    sget-object v2, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    :cond_6
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 771
    invoke-virtual {v1, v12}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setSubselections(Ljava/util/Map;)V

    iget-object v0, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 772
    invoke-interface {v0, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return v16
.end method

.method public final updateSelection-RHHTvR4$foundation_release(Landroidx/compose/ui/geometry/Offset;Landroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 8

    const-string v1, "adjustment"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 691
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz p3, :cond_1

    .line 693
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    goto :goto_0

    .line 695
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    :goto_0
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 698
    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSelectableMap$foundation_release()Ljava/util/Map;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/text/selection/Selectable;

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 700
    :cond_2
    invoke-interface {v3}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    xor-int/lit8 v5, p3, 0x1

    .line 702
    invoke-interface {v3, v2, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    move-result-wide v2

    .line 701
    invoke-static {v2, v3}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->getAdjustedCoordinates-k-4lQ0M(J)J

    move-result-wide v2

    .line 699
    invoke-direct {p0, v4, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->convertToContainerCoordinates-Q7Q5hAU(Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    .line 691
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    if-eqz p3, :cond_3

    .line 707
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v3

    goto :goto_2

    :cond_3
    move-wide v3, v1

    :goto_2
    if-eqz p3, :cond_4

    goto :goto_3

    .line 708
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    :goto_3
    move-wide v5, v1

    move-object v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 710
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelection-3R_-tFg$foundation_release(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result v0

    return v0

    :cond_5
    return v1
.end method
