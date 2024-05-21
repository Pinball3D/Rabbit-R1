.class public final Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt$hideKeyboard$$inlined$postDelayed$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->hideKeyboard(Landroid/view/View;J)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n+ 2 UiExtensions.kt\ntech/rabbit/r1launcher/initstep/utils/UiExtensionsKt\n*L\n1#1,432:1\n54#2,4:433\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_hideKeyboard$inlined:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt$hideKeyboard$$inlined$postDelayed$1;->$this_hideKeyboard$inlined:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt$hideKeyboard$$inlined$postDelayed$1;->$this_hideKeyboard$inlined:Landroid/view/View;

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt$hideKeyboard$$inlined$postDelayed$1;->$this_hideKeyboard$inlined:Landroid/view/View;

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt$hideKeyboard$$inlined$postDelayed$1;->$this_hideKeyboard$inlined:Landroid/view/View;

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
