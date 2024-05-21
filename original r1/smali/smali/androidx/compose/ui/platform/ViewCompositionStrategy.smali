.class public interface abstract Landroidx/compose/ui/platform/ViewCompositionStrategy;
.super Ljava/lang/Object;
.source "ViewCompositionStrategy.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;,
        Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow;,
        Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;,
        Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnLifecycleDestroyed;,
        Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u00072\u00020\u0001:\u0005\u0007\u0008\t\n\u000bJ\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000c\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ViewCompositionStrategy;",
        "",
        "installFor",
        "Lkotlin/Function0;",
        "",
        "view",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "Companion",
        "DisposeOnDetachedFromWindow",
        "DisposeOnDetachedFromWindowOrReleasedFromPool",
        "DisposeOnLifecycleDestroyed",
        "DisposeOnViewTreeLifecycleDestroyed",
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
.field public static final Companion:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;->$$INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;

    sput-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy;->Companion:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;

    return-void
.end method


# virtual methods
.method public abstract installFor(Landroidx/compose/ui/platform/AbstractComposeView;)Lkotlin/jvm/functions/Function0;
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
.end method
