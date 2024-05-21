.class public final Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;
.super Ljava/lang/Object;
.source "LocalSoftwareKeyboardController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalSoftwareKeyboardController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalSoftwareKeyboardController.kt\nandroidx/compose/ui/platform/LocalSoftwareKeyboardController\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,76:1\n76#2:77\n76#2:78\n36#3:79\n1097#4,6:80\n*S KotlinDebug\n*F\n+ 1 LocalSoftwareKeyboardController.kt\nandroidx/compose/ui/platform/LocalSoftwareKeyboardController\n*L\n42#1:77\n47#1:78\n48#1:79\n48#1:80,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0003\u00a2\u0006\u0002\u0010\tJ\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0086\u0004R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00058GX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;",
        "",
        "()V",
        "LocalSoftwareKeyboardController",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
        "current",
        "getCurrent$annotations",
        "getCurrent",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/platform/SoftwareKeyboardController;",
        "delegatingController",
        "provides",
        "Landroidx/compose/runtime/ProvidedValue;",
        "softwareKeyboardController",
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
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;

.field private static final LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;

    invoke-direct {v0}, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->INSTANCE:Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;

    .line 30
    sget-object v0, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController$LocalSoftwareKeyboardController$1;->INSTANCE:Landroidx/compose/ui/platform/LocalSoftwareKeyboardController$LocalSoftwareKeyboardController$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final delegatingController(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .locals 2

    const p0, 0x6d68c1b8

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C(delegatingController)46@1769L7,47@1807L105:LocalSoftwareKeyboardController.kt#itgzvw"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.ui.platform.LocalSoftwareKeyboardController.delegatingController (LocalSoftwareKeyboardController.kt:45)"

    .line 46
    invoke-static {p0, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 47
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextInputService()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/CompositionLocal;

    const p2, 0x789c5f52

    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    .line 78
    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 47
    check-cast p0, Landroidx/compose/ui/text/input/TextInputService;

    if-nez p0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget p2, Landroidx/compose/ui/text/input/TextInputService;->$stable:I

    const p2, 0x44faf204

    .line 48
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 79
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    .line 80
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_3

    .line 81
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_4

    .line 49
    :cond_3
    new-instance v0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;-><init>(Landroidx/compose/ui/text/input/TextInputService;)V

    .line 83
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 79
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 48
    check-cast v0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    return-object v0
.end method

.method public static synthetic getCurrent$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .locals 3

    const v0, -0x3f2652d9

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C41@1585L7,41@1596L22:LocalSoftwareKeyboardController.kt#itgzvw"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.ui.platform.LocalSoftwareKeyboardController.<get-current> (LocalSoftwareKeyboardController.kt:40)"

    .line 41
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 42
    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v1, 0x789c5f52

    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    .line 77
    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 42
    check-cast v0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    if-nez v0, :cond_1

    and-int/lit8 p2, p2, 0xe

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->delegatingController(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object v0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public final provides(Landroidx/compose/ui/platform/SoftwareKeyboardController;)Landroidx/compose/runtime/ProvidedValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
            ")",
            "Landroidx/compose/runtime/ProvidedValue<",
            "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "softwareKeyboardController"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 59
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p0

    return-object p0
.end method
