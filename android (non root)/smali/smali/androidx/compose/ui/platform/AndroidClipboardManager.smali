.class public final Landroidx/compose/ui/platform/AndroidClipboardManager;
.super Ljava/lang/Object;
.source "AndroidClipboardManager.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ClipboardManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AndroidClipboardManager;",
        "Landroidx/compose/ui/platform/ClipboardManager;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "clipboardManager",
        "Landroid/content/ClipboardManager;",
        "(Landroid/content/ClipboardManager;)V",
        "getText",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "hasText",
        "",
        "setText",
        "",
        "annotatedString",
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


# instance fields
.field private final clipboardManager:Landroid/content/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/ClipboardManager;)V
    .locals 1

    const-string v0, "clipboardManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidClipboardManager;->clipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipboard"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ClipboardManager;

    .line 53
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidClipboardManager;-><init>(Landroid/content/ClipboardManager;)V

    return-void
.end method


# virtual methods
.method public getText()Landroidx/compose/ui/text/AnnotatedString;
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidClipboardManager;->clipboardManager:Landroid/content/ClipboardManager;

    .line 67
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidClipboardManager_androidKt;->convertToAnnotatedString(Ljava/lang/CharSequence;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public hasText()Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidClipboardManager;->clipboardManager:Landroid/content/ClipboardManager;

    .line 78
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "text/*"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setText(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 1

    const-string v0, "annotatedString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidClipboardManager;->clipboardManager:Landroid/content/ClipboardManager;

    const-string v0, "plain text"

    .line 60
    check-cast v0, Ljava/lang/CharSequence;

    .line 61
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidClipboardManager_androidKt;->convertToCharSequence(Landroidx/compose/ui/text/AnnotatedString;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 59
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
