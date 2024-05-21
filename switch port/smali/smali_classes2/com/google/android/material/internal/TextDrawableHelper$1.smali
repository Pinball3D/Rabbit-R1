.class Lcom/google/android/material/internal/TextDrawableHelper$1;
.super Lcom/google/android/material/resources/TextAppearanceFontCallback;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/TextDrawableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/TextDrawableHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 44
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    .line 59
    invoke-static {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->access$002(Lcom/google/android/material/internal/TextDrawableHelper;Z)Z

    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 61
    invoke-static {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->access$100(Lcom/google/android/material/internal/TextDrawableHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz p0, :cond_0

    .line 63
    invoke-interface {p0}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    :cond_0
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 p2, 0x1

    .line 50
    invoke-static {p1, p2}, Lcom/google/android/material/internal/TextDrawableHelper;->access$002(Lcom/google/android/material/internal/TextDrawableHelper;Z)Z

    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 51
    invoke-static {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->access$100(Lcom/google/android/material/internal/TextDrawableHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz p0, :cond_1

    .line 53
    invoke-interface {p0}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    :cond_1
    return-void
.end method
