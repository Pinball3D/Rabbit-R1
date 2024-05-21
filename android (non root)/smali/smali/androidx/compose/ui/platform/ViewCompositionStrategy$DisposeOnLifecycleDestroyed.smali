.class public final Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnLifecycleDestroyed;
.super Ljava/lang/Object;
.source "ViewCompositionStrategy.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewCompositionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewCompositionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisposeOnLifecycleDestroyed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnLifecycleDestroyed;",
        "Landroidx/compose/ui/platform/ViewCompositionStrategy;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "(Landroidx/lifecycle/Lifecycle;)V",
        "installFor",
        "Lkotlin/Function0;",
        "",
        "view",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnLifecycleDestroyed;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnLifecycleDestroyed;-><init>(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public installFor(Landroidx/compose/ui/platform/AbstractComposeView;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AbstractComposeView;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnLifecycleDestroyed;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 141
    invoke-static {p1, p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt;->access$installForLifecycle(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/lifecycle/Lifecycle;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method
