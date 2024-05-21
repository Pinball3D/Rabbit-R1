.class Landroidx/appcompat/app/AppCompatDelegateImpl$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 277
    iget v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 278
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->doInvalidatePanelMenu(I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 280
    iget v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/16 v2, 0x6c

    .line 281
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->doInvalidatePanelMenu(I)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 283
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 284
    iput v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    return-void
.end method
