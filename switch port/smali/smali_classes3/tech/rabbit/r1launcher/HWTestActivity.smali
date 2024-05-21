.class public final Ltech/rabbit/r1launcher/HWTestActivity;
.super Landroidx/activity/ComponentActivity;
.source "HWTestActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWTestActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWTestActivity.kt\ntech/rabbit/r1launcher/HWTestActivity\n+ 2 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,80:1\n75#2:81\n108#2,2:82\n81#3:84\n107#3,2:85\n*S KotlinDebug\n*F\n+ 1 HWTestActivity.kt\ntech/rabbit/r1launcher/HWTestActivity\n*L\n27#1:81\n27#1:82,2\n28#1:84\n28#1:85,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/HWTestActivity;",
        "Landroidx/activity/ComponentActivity;",
        "()V",
        "<set-?>",
        "",
        "keyCode",
        "getKeyCode",
        "()I",
        "setKeyCode",
        "(I)V",
        "keyCode$delegate",
        "Landroidx/compose/runtime/MutableIntState;",
        "",
        "keyUpDown",
        "getKeyUpDown",
        "()Ljava/lang/String;",
        "setKeyUpDown",
        "(Ljava/lang/String;)V",
        "keyUpDown$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final keyCode$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final keyUpDown$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/HWTestActivity;->keyCode$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, ""

    .line 28
    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/HWTestActivity;->keyUpDown$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public static final synthetic access$getKeyCode(Ltech/rabbit/r1launcher/HWTestActivity;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Ltech/rabbit/r1launcher/HWTestActivity;->getKeyCode()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getKeyUpDown(Ltech/rabbit/r1launcher/HWTestActivity;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0}, Ltech/rabbit/r1launcher/HWTestActivity;->getKeyUpDown()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getKeyCode()I
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/HWTestActivity;->keyCode$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 27
    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method private final getKeyUpDown()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/HWTestActivity;->keyUpDown$delegate:Landroidx/compose/runtime/MutableState;

    .line 28
    check-cast p0, Landroidx/compose/runtime/State;

    .line 84
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final setKeyCode(I)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/HWTestActivity;->keyCode$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 82
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method private final setKeyUpDown(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/HWTestActivity;->keyUpDown$delegate:Landroidx/compose/runtime/MutableState;

    .line 85
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/HWTestActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 33
    move-object p1, p0

    check-cast p1, Landroidx/activity/ComponentActivity;

    new-instance v0, Ltech/rabbit/r1launcher/HWTestActivity$onCreate$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/HWTestActivity$onCreate$1;-><init>(Ltech/rabbit/r1launcher/HWTestActivity;)V

    const p0, 0x56ade227

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v1, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 52
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/HWTestActivity;->setKeyCode(I)V

    const-string v0, "Down"

    .line 53
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/HWTestActivity;->setKeyUpDown(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/HWTestActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyDown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 59
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/HWTestActivity;->setKeyCode(I)V

    const-string v0, "Up"

    .line 60
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/HWTestActivity;->setKeyUpDown(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/HWTestActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyUp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
