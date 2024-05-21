.class public final Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;
.super Ljava/lang/Object;
.source "ViewCompositionStrategy.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewCompositionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;",
        "",
        "()V",
        "Default",
        "Landroidx/compose/ui/platform/ViewCompositionStrategy;",
        "getDefault",
        "()Landroidx/compose/ui/platform/ViewCompositionStrategy;",
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
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;->$$INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault()Landroidx/compose/ui/platform/ViewCompositionStrategy;
    .locals 0

    .line 70
    sget-object p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;->INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;

    check-cast p0, Landroidx/compose/ui/platform/ViewCompositionStrategy;

    return-object p0
.end method
