.class Landroidx/databinding/ViewStubProxy$1;
.super Ljava/lang/Object;
.source "ViewStubProxy.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewStubProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/databinding/ViewStubProxy;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewStubProxy;)V
    .locals 0

    iput-object p1, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 40
    invoke-static {v0, p2}, Landroidx/databinding/ViewStubProxy;->access$002(Landroidx/databinding/ViewStubProxy;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 41
    invoke-static {v0}, Landroidx/databinding/ViewStubProxy;->access$200(Landroidx/databinding/ViewStubProxy;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mBindingComponent:Landroidx/databinding/DataBindingComponent;

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewStub;->getLayoutResource()I

    move-result v2

    .line 41
    invoke-static {v1, p2, v2}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/databinding/ViewStubProxy;->access$102(Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewDataBinding;)Landroidx/databinding/ViewDataBinding;

    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    const/4 v1, 0x0

    .line 43
    invoke-static {v0, v1}, Landroidx/databinding/ViewStubProxy;->access$302(Landroidx/databinding/ViewStubProxy;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 45
    invoke-static {v0}, Landroidx/databinding/ViewStubProxy;->access$400(Landroidx/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 46
    invoke-static {v0}, Landroidx/databinding/ViewStubProxy;->access$400(Landroidx/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    iget-object p1, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 47
    invoke-static {p1, v1}, Landroidx/databinding/ViewStubProxy;->access$402(Landroidx/databinding/ViewStubProxy;Landroid/view/ViewStub$OnInflateListener;)Landroid/view/ViewStub$OnInflateListener;

    :cond_0
    iget-object p1, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 49
    invoke-static {p1}, Landroidx/databinding/ViewStubProxy;->access$200(Landroidx/databinding/ViewStubProxy;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    iget-object p0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 50
    invoke-static {p0}, Landroidx/databinding/ViewStubProxy;->access$200(Landroidx/databinding/ViewStubProxy;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->forceExecuteBindings()V

    return-void
.end method
