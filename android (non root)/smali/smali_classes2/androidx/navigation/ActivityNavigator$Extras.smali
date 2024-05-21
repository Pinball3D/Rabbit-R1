.class public final Landroidx/navigation/ActivityNavigator$Extras;
.super Ljava/lang/Object;
.source "ActivityNavigator.kt"

# interfaces
.implements Landroidx/navigation/Navigator$Extras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/ActivityNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/ActivityNavigator$Extras$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/navigation/ActivityNavigator$Extras;",
        "Landroidx/navigation/Navigator$Extras;",
        "flags",
        "",
        "activityOptions",
        "Landroidx/core/app/ActivityOptionsCompat;",
        "(ILandroidx/core/app/ActivityOptionsCompat;)V",
        "getActivityOptions",
        "()Landroidx/core/app/ActivityOptionsCompat;",
        "getFlags",
        "()I",
        "Builder",
        "navigation-runtime_release"
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
.field private final activityOptions:Landroidx/core/app/ActivityOptionsCompat;

.field private final flags:I


# direct methods
.method public constructor <init>(ILandroidx/core/app/ActivityOptionsCompat;)V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/navigation/ActivityNavigator$Extras;->flags:I

    iput-object p2, p0, Landroidx/navigation/ActivityNavigator$Extras;->activityOptions:Landroidx/core/app/ActivityOptionsCompat;

    return-void
.end method


# virtual methods
.method public final getActivityOptions()Landroidx/core/app/ActivityOptionsCompat;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigator$Extras;->activityOptions:Landroidx/core/app/ActivityOptionsCompat;

    return-object p0
.end method

.method public final getFlags()I
    .locals 0

    iget p0, p0, Landroidx/navigation/ActivityNavigator$Extras;->flags:I

    return p0
.end method
