.class public final Landroidx/compose/ui/text/platform/EmojiCompatStatus;
.super Ljava/lang/Object;
.source "EmojiCompatStatus.kt"

# interfaces
.implements Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0001\u00a2\u0006\u0002\u0008\u000cR\u000e\u0010\u0003\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/EmojiCompatStatus;",
        "Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;",
        "()V",
        "delegate",
        "fontLoaded",
        "Landroidx/compose/runtime/State;",
        "",
        "getFontLoaded",
        "()Landroidx/compose/runtime/State;",
        "setDelegateForTesting",
        "",
        "newDelegate",
        "setDelegateForTesting$ui_text_release",
        "ui-text_release"
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
.field public static final INSTANCE:Landroidx/compose/ui/text/platform/EmojiCompatStatus;

.field private static delegate:Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/EmojiCompatStatus;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->INSTANCE:Landroidx/compose/ui/text/platform/EmojiCompatStatus;

    .line 35
    new-instance v0, Landroidx/compose/ui/text/platform/DefaultImpl;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/DefaultImpl;-><init>()V

    check-cast v0, Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;

    sput-object v0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFontLoaded()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;

    .line 43
    invoke-interface {p0}, Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;->getFontLoaded()Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public final setDelegateForTesting$ui_text_release(Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;)V
    .locals 0

    if-nez p1, :cond_0

    .line 52
    new-instance p0, Landroidx/compose/ui/text/platform/DefaultImpl;

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/DefaultImpl;-><init>()V

    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;

    :cond_0
    sput-object p1, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;

    return-void
.end method
