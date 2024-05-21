.class public Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;
.super Ljava/lang/Object;
.source "AutofillIdCompat.java"


# instance fields
.field private final mWrappedObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->mWrappedObj:Ljava/lang/Object;

    return-void
.end method

.method public static toAutofillIdCompat(Landroid/view/autofill/AutofillId;)Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;
    .locals 1

    .line 50
    new-instance v0, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;-><init>(Landroid/view/autofill/AutofillId;)V

    return-object v0
.end method


# virtual methods
.method public toAutofillId()Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->mWrappedObj:Ljava/lang/Object;

    .line 65
    check-cast p0, Landroid/view/autofill/AutofillId;

    return-object p0
.end method
