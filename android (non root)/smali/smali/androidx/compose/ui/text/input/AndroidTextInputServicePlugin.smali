.class public final Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;
.super Ljava/lang/Object;
.source "AndroidTextInputServicePlugin.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/PlatformTextInputPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/input/PlatformTextInputPlugin<",
        "Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;",
        "Landroidx/compose/ui/text/input/PlatformTextInputPlugin;",
        "Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;",
        "()V",
        "createAdapter",
        "platformTextInput",
        "Landroidx/compose/ui/text/input/PlatformTextInput;",
        "view",
        "Landroid/view/View;",
        "Adapter",
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
.field public static final INSTANCE:Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;->INSTANCE:Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdapter(Landroidx/compose/ui/text/input/PlatformTextInput;Landroid/view/View;)Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;
    .locals 1

    const-string p0, "platformTextInput"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    invoke-direct {p0, p2, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;-><init>(Landroid/view/View;Landroidx/compose/ui/text/input/PlatformTextInput;)V

    .line 45
    new-instance p1, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;

    new-instance p2, Landroidx/compose/ui/text/input/TextInputService;

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-direct {p2, v0}, Landroidx/compose/ui/text/input/TextInputService;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    invoke-direct {p1, p2, p0}, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextInputServiceAndroid;)V

    return-object p1
.end method

.method public bridge synthetic createAdapter(Landroidx/compose/ui/text/input/PlatformTextInput;Landroid/view/View;)Landroidx/compose/ui/text/input/PlatformTextInputAdapter;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;->createAdapter(Landroidx/compose/ui/text/input/PlatformTextInput;Landroid/view/View;)Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/input/PlatformTextInputAdapter;

    return-object p0
.end method
