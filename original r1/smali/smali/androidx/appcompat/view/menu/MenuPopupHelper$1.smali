.class Landroidx/appcompat/view/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuPopupHelper;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuPopupHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper$1;->this$0:Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper$1;->this$0:Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 346
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
