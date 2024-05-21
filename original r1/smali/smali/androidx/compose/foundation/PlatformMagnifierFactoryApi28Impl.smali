.class public final Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;
.super Ljava/lang/Object;
.source "PlatformMagnifier.kt"

# interfaces
.implements Landroidx/compose/foundation/PlatformMagnifierFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;",
        "Landroidx/compose/foundation/PlatformMagnifierFactory;",
        "()V",
        "canUpdateZoom",
        "",
        "getCanUpdateZoom",
        "()Z",
        "create",
        "Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;",
        "style",
        "Landroidx/compose/foundation/MagnifierStyle;",
        "view",
        "Landroid/view/View;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "initialZoom",
        "",
        "PlatformMagnifierImpl",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;

.field private static final canUpdateZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;

    invoke-direct {v0}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;-><init>()V

    sput-object v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;->INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifier;
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;->create(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/PlatformMagnifier;

    return-object p0
.end method

.method public create(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;
    .locals 0

    const-string/jumbo p0, "style"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "density"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance p0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;

    new-instance p1, Landroid/widget/Magnifier;

    invoke-direct {p1, p2}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;-><init>(Landroid/widget/Magnifier;)V

    return-object p0
.end method

.method public getCanUpdateZoom()Z
    .locals 0

    sget-boolean p0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;->canUpdateZoom:Z

    return p0
.end method
