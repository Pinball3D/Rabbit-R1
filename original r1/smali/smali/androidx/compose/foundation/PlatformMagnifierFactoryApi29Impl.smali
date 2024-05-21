.class public final Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;
.super Ljava/lang/Object;
.source "PlatformMagnifier.kt"

# interfaces
.implements Landroidx/compose/foundation/PlatformMagnifierFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlatformMagnifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformMagnifier.kt\nandroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl\n+ 2 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n*L\n1#1,184:1\n152#2:185\n*S KotlinDebug\n*F\n+ 1 PlatformMagnifier.kt\nandroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl\n*L\n152#1:185\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;",
        "Landroidx/compose/foundation/PlatformMagnifierFactory;",
        "()V",
        "canUpdateZoom",
        "",
        "getCanUpdateZoom",
        "()Z",
        "create",
        "Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;",
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
.field public static final INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

.field private static final canUpdateZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

    invoke-direct {v0}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;-><init>()V

    sput-object v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->canUpdateZoom:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifier;
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->create(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/PlatformMagnifier;

    return-object p0
.end method

.method public create(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;
    .locals 5

    const-string/jumbo p0, "style"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "density"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object p0, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierStyle$Companion;->getTextDefault()Landroidx/compose/foundation/MagnifierStyle;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 142
    new-instance p0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;

    new-instance p1, Landroid/widget/Magnifier;

    invoke-direct {p1, p2}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;-><init>(Landroid/widget/Magnifier;)V

    return-object p0

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->getSize-MYxV2XQ$foundation_release()J

    move-result-wide v0

    invoke-interface {p3, v0, v1}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide v0

    .line 146
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->getCornerRadius-D9Ej5fM$foundation_release()F

    move-result p0

    invoke-interface {p3, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    .line 147
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->getElevation-D9Ej5fM$foundation_release()F

    move-result v2

    invoke-interface {p3, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p3

    .line 151
    new-instance v2, Landroid/widget/Magnifier$Builder;

    invoke-direct {v2, p2}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    .line 185
    sget-object p2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v3

    cmp-long p2, v0, v3

    if-eqz p2, :cond_1

    .line 152
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroid/widget/Magnifier$Builder;->setSize(II)Landroid/widget/Magnifier$Builder;

    .line 153
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v2, p0}, Landroid/widget/Magnifier$Builder;->setCornerRadius(F)Landroid/widget/Magnifier$Builder;

    .line 154
    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v2, p3}, Landroid/widget/Magnifier$Builder;->setElevation(F)Landroid/widget/Magnifier$Builder;

    .line 155
    :cond_3
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v2, p4}, Landroid/widget/Magnifier$Builder;->setInitialZoom(F)Landroid/widget/Magnifier$Builder;

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->getClippingEnabled$foundation_release()Z

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/Magnifier$Builder;->setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;

    .line 158
    invoke-virtual {v2}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    move-result-object p0

    const-string p1, "Builder(view).run {\n    \u2026    build()\n            }"

    .line 151
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance p1, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;-><init>(Landroid/widget/Magnifier;)V

    return-object p1
.end method

.method public getCanUpdateZoom()Z
    .locals 0

    sget-boolean p0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->canUpdateZoom:Z

    return p0
.end method
