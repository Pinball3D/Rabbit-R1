.class public final Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;
.super Landroid/view/View;
.source "FactoryModeVerifyView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$Companion;,
        Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFactoryModeVerifyView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FactoryModeVerifyView.kt\ntech/rabbit/r1launcher/widget/FactoryModeVerifyView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Handler.kt\nandroidx/core/os/HandlerKt\n*L\n1#1,109:1\n1774#2,4:110\n33#3,12:114\n*S KotlinDebug\n*F\n+ 1 FactoryModeVerifyView.kt\ntech/rabbit/r1launcher/widget/FactoryModeVerifyView\n*L\n76#1:110,4\n90#1:114,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0017J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u001cR\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "clickedLocations",
        "",
        "Landroid/graphics/PointF;",
        "fixedLocations",
        "",
        "Landroid/graphics/RectF;",
        "getFixedLocations",
        "()Ljava/util/List;",
        "fixedLocations$delegate",
        "Lkotlin/Lazy;",
        "handler",
        "Landroid/os/Handler;",
        "listener",
        "Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;",
        "onTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "setOnVerifySucceed",
        "",
        "startChecker",
        "stopChecker",
        "Companion",
        "OnVerifySucceedListener",
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

.field public static final Companion:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$Companion;

.field private static final areaSize:F


# instance fields
.field private final clickedLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final fixedLocations$delegate:Lkotlin/Lazy;

.field private final handler:Landroid/os/Handler;

.field private listener:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->Companion:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->$stable:I

    const/high16 v0, 0x42a00000    # 80.0f

    .line 21
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(F)F

    move-result v0

    sput v0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->areaSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->handler:Landroid/os/Handler;

    .line 28
    new-instance p1, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;-><init>(Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->fixedLocations$delegate:Lkotlin/Lazy;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->clickedLocations:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getAreaSize$cp()F
    .locals 1

    sget v0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->areaSize:F

    return v0
.end method

.method public static final synthetic access$getClickedLocations$p(Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->clickedLocations:Ljava/util/List;

    return-object p0
.end method

.method private final getFixedLocations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->fixedLocations$delegate:Lkotlin/Lazy;

    .line 28
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Ltech/rabbit/r1launcher/BuildConfig;->FACTORY_MODE_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->clickedLocations:Ljava/util/List;

    .line 73
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v3, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->clickedLocations:Ljava/util/List;

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getFixedLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    iget-object p1, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->clickedLocations:Ljava/util/List;

    .line 76
    check-cast p1, Ljava/lang/Iterable;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getFixedLocations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 110
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 112
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 77
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_4

    .line 112
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->clickedLocations:Ljava/util/List;

    .line 79
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 80
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getFixedLocations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->listener:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;

    if-eqz p0, :cond_7

    .line 82
    invoke-interface {p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;->onVerifySucceed()V

    :cond_7
    return v2
.end method

.method public final setOnVerifySucceed(Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->listener:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;

    return-void
.end method

.method public final startChecker()V
    .locals 4

    .line 88
    sget-object v0, Ltech/rabbit/r1launcher/BuildConfig;->FACTORY_MODE_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->handler:Landroid/os/Handler;

    .line 119
    new-instance v1, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$startChecker$$inlined$postDelayed$default$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$startChecker$$inlined$postDelayed$default$1;-><init>(Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final stopChecker()V
    .locals 1

    .line 97
    sget-object v0, Ltech/rabbit/r1launcher/BuildConfig;->FACTORY_MODE_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
