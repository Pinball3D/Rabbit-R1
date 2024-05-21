.class final Landroidx/compose/ui/platform/InspectionModeKt$LocalInspectionMode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InspectionMode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/InspectionModeKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/InspectionModeKt$LocalInspectionMode$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/InspectionModeKt$LocalInspectionMode$1;

    invoke-direct {v0}, Landroidx/compose/ui/platform/InspectionModeKt$LocalInspectionMode$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/InspectionModeKt$LocalInspectionMode$1;->INSTANCE:Landroidx/compose/ui/platform/InspectionModeKt$LocalInspectionMode$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    .line 25
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/platform/InspectionModeKt$LocalInspectionMode$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
