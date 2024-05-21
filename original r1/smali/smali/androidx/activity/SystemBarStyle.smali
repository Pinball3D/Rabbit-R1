.class public final Landroidx/activity/SystemBarStyle;
.super Ljava/lang/Object;
.source "EdgeToEdge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/SystemBarStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B3\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0010\nJ\u0015\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u0012J\u0015\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u0014R\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/activity/SystemBarStyle;",
        "",
        "lightScrim",
        "",
        "darkScrim",
        "nightMode",
        "detectDarkMode",
        "Lkotlin/Function1;",
        "Landroid/content/res/Resources;",
        "",
        "(IIILkotlin/jvm/functions/Function1;)V",
        "getDarkScrim$activity_release",
        "()I",
        "getDetectDarkMode$activity_release",
        "()Lkotlin/jvm/functions/Function1;",
        "getNightMode$activity_release",
        "getScrim",
        "isDark",
        "getScrim$activity_release",
        "getScrimWithEnforcedContrast",
        "getScrimWithEnforcedContrast$activity_release",
        "Companion",
        "activity_release"
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
.field public static final Companion:Landroidx/activity/SystemBarStyle$Companion;


# instance fields
.field private final darkScrim:I

.field private final detectDarkMode:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/res/Resources;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final lightScrim:I

.field private final nightMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/SystemBarStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/SystemBarStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    return-void
.end method

.method private constructor <init>(IIILkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/res/Resources;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/activity/SystemBarStyle;->lightScrim:I

    iput p2, p0, Landroidx/activity/SystemBarStyle;->darkScrim:I

    iput p3, p0, Landroidx/activity/SystemBarStyle;->nightMode:I

    iput-object p4, p0, Landroidx/activity/SystemBarStyle;->detectDarkMode:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/activity/SystemBarStyle;-><init>(IIILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final auto(II)Landroidx/activity/SystemBarStyle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/activity/SystemBarStyle$Companion;->auto(II)Landroidx/activity/SystemBarStyle;

    move-result-object p0

    return-object p0
.end method

.method public static final auto(IILkotlin/jvm/functions/Function1;)Landroidx/activity/SystemBarStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/res/Resources;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/activity/SystemBarStyle;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/activity/SystemBarStyle$Companion;->auto(IILkotlin/jvm/functions/Function1;)Landroidx/activity/SystemBarStyle;

    move-result-object p0

    return-object p0
.end method

.method public static final dark(I)Landroidx/activity/SystemBarStyle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v0, p0}, Landroidx/activity/SystemBarStyle$Companion;->dark(I)Landroidx/activity/SystemBarStyle;

    move-result-object p0

    return-object p0
.end method

.method public static final light(II)Landroidx/activity/SystemBarStyle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/activity/SystemBarStyle$Companion;->light(II)Landroidx/activity/SystemBarStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDarkScrim$activity_release()I
    .locals 0

    iget p0, p0, Landroidx/activity/SystemBarStyle;->darkScrim:I

    return p0
.end method

.method public final getDetectDarkMode$activity_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/res/Resources;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/SystemBarStyle;->detectDarkMode:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getNightMode$activity_release()I
    .locals 0

    iget p0, p0, Landroidx/activity/SystemBarStyle;->nightMode:I

    return p0
.end method

.method public final getScrim$activity_release(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Landroidx/activity/SystemBarStyle;->darkScrim:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/activity/SystemBarStyle;->lightScrim:I

    :goto_0
    return p0
.end method

.method public final getScrimWithEnforcedContrast$activity_release(Z)I
    .locals 1

    iget v0, p0, Landroidx/activity/SystemBarStyle;->nightMode:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget p0, p0, Landroidx/activity/SystemBarStyle;->darkScrim:I

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/activity/SystemBarStyle;->lightScrim:I

    :goto_0
    return p0
.end method
