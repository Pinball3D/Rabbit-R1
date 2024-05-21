.class public interface abstract Landroidx/compose/ui/platform/WindowRecomposerFactory;
.super Ljava/lang/Object;
.source "WindowRecomposer.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e7\u0080\u0001\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0007\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/platform/WindowRecomposerFactory;",
        "",
        "createRecomposer",
        "Landroidx/compose/runtime/Recomposer;",
        "windowRootView",
        "Landroid/view/View;",
        "Companion",
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
.field public static final Companion:Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;->$$INSTANCE:Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;

    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposerFactory;->Companion:Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;

    return-void
.end method


# virtual methods
.method public abstract createRecomposer(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
.end method
