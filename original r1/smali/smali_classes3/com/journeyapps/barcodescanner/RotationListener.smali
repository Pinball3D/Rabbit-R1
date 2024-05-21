.class public Lcom/journeyapps/barcodescanner/RotationListener;
.super Ljava/lang/Object;
.source "RotationListener.java"


# instance fields
.field private callback:Lcom/journeyapps/barcodescanner/RotationCallback;

.field private lastRotation:I

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/RotationListener;)Lcom/journeyapps/barcodescanner/RotationCallback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->callback:Lcom/journeyapps/barcodescanner/RotationCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/journeyapps/barcodescanner/RotationListener;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->lastRotation:I

    return p0
.end method

.method static synthetic access$202(Lcom/journeyapps/barcodescanner/RotationListener;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->lastRotation:I

    return p1
.end method


# virtual methods
.method public listen(Landroid/content/Context;Lcom/journeyapps/barcodescanner/RotationCallback;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/RotationListener;->stop()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/RotationListener;->callback:Lcom/journeyapps/barcodescanner/RotationCallback;

    const-string p2, "window"

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    .line 38
    new-instance p2, Lcom/journeyapps/barcodescanner/RotationListener$1;

    const/4 v0, 0x3

    invoke-direct {p2, p0, p1, v0}, Lcom/journeyapps/barcodescanner/RotationListener$1;-><init>(Lcom/journeyapps/barcodescanner/RotationListener;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 52
    invoke-virtual {p2}, Landroid/view/OrientationEventListener;->enable()V

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    .line 54
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->lastRotation:I

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->callback:Lcom/journeyapps/barcodescanner/RotationCallback;

    return-void
.end method
