.class public final Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;
.super Ljava/lang/Object;
.source "FragmentVerifyPasscodeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flContinueContainer:Landroid/widget/FrameLayout;

.field public final llBackContainer:Landroid/widget/LinearLayout;

.field public final llTipContainer:Landroid/widget/LinearLayout;

.field public final npvPicker:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvBackTitle:Landroid/widget/TextView;

.field public final tvConfirmPasscode:Landroid/widget/TextView;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvRetry:Landroid/widget/TextView;

.field public final tvTip:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvToFinish:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->flContinueContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->llBackContainer:Landroid/widget/LinearLayout;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->llTipContainer:Landroid/widget/LinearLayout;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->npvPicker:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    iput-object p6, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->tvBackTitle:Landroid/widget/TextView;

    iput-object p7, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->tvConfirmPasscode:Landroid/widget/TextView;

    iput-object p8, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->tvContinue:Landroid/widget/TextView;

    iput-object p9, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->tvRetry:Landroid/widget/TextView;

    iput-object p10, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->tvTip:Landroid/widget/TextView;

    iput-object p11, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p12, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->tvToFinish:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;
    .locals 15

    .line 104
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_continue_container:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 110
    sget v0, Ltech/rabbit/r1launcher/R$id;->ll_back_container:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 116
    sget v0, Ltech/rabbit/r1launcher/R$id;->ll_tip_container:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 122
    sget v0, Ltech/rabbit/r1launcher/R$id;->npv_picker:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-eqz v7, :cond_0

    .line 128
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_back_title:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 134
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_confirm_passcode:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 140
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 146
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_retry:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 152
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 158
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_title:I

    .line 159
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 164
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_to_finish:I

    .line 165
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 170
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;
    .locals 2

    .line 91
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_verify_passcode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentVerifyPasscodeBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
