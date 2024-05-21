.class public Landroidx/core/view/autofill/AutofillIdCompat;
.super Ljava/lang/Object;
.source "AutofillIdCompat.java"


# instance fields
.field private final mWrappedObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/autofill/AutofillIdCompat;->mWrappedObj:Ljava/lang/Object;

    return-void
.end method

.method public static toAutofillIdCompat(Landroid/view/autofill/AutofillId;)Landroidx/core/view/autofill/AutofillIdCompat;
    .locals 1

    .line 48
    new-instance v0, Landroidx/core/view/autofill/AutofillIdCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/autofill/AutofillIdCompat;-><init>(Landroid/view/autofill/AutofillId;)V

    return-object v0
.end method


# virtual methods
.method public toAutofillId()Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/autofill/AutofillIdCompat;->mWrappedObj:Ljava/lang/Object;

    .line 63
    check-cast p0, Landroid/view/autofill/AutofillId;

    return-object p0
.end method
