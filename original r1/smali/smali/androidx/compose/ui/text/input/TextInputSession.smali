.class public final Landroidx/compose/ui/text/input/TextInputSession;
.super Ljava/lang/Object;
.source "TextInputService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextInputService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInputService.kt\nandroidx/compose/ui/text/input/TextInputSession\n*L\n1#1,289:1\n153#1,5:290\n153#1,5:295\n153#1,5:300\n153#1,5:305\n*S KotlinDebug\n*F\n+ 1 TextInputService.kt\nandroidx/compose/ui/text/input/TextInputSession\n*L\n172#1:290,5\n194#1:295,5\n212#1:300,5\n227#1:305,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u0017\u0010\u000c\u001a\u00020\u00082\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eH\u0082\u0008J\u0006\u0010\u000f\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0008J\u0018\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0016R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/TextInputSession;",
        "",
        "textInputService",
        "Landroidx/compose/ui/text/input/TextInputService;",
        "platformTextInputService",
        "Landroidx/compose/ui/text/input/PlatformTextInputService;",
        "(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V",
        "isOpen",
        "",
        "()Z",
        "dispose",
        "",
        "ensureOpenSession",
        "block",
        "Lkotlin/Function0;",
        "hideSoftwareKeyboard",
        "notifyFocusedRect",
        "rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "showSoftwareKeyboard",
        "updateState",
        "oldValue",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "newValue",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

.field private final textInputService:Landroidx/compose/ui/text/input/TextInputService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V
    .locals 1

    const-string/jumbo v0, "textInputService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformTextInputService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    iput-object p2, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    return-void
.end method

.method private final ensureOpenSession(Lkotlin/jvm/functions/Function0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 155
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return p0
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 140
    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/input/TextInputService;->stopInput(Landroidx/compose/ui/text/input/TextInputSession;)V

    return-void
.end method

.method public final hideSoftwareKeyboard()Z
    .locals 1

    .line 305
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 228
    invoke-interface {p0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->hideSoftwareKeyboard()V

    :cond_0
    return v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 129
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextInputService;->getCurrentInputSession$ui_text_release()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)Z
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 173
    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/PlatformTextInputService;->notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V

    :cond_0
    return v0
.end method

.method public final showSoftwareKeyboard()Z
    .locals 1

    .line 300
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 213
    invoke-interface {p0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->showSoftwareKeyboard()V

    :cond_0
    return v0
.end method

.method public final updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)Z
    .locals 1

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 195
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/text/input/PlatformTextInputService;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_0
    return v0
.end method
