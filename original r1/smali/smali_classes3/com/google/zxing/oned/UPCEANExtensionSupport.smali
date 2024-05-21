.class final Lcom/google/zxing/oned/UPCEANExtensionSupport;
.super Ljava/lang/Object;
.source "UPCEANExtensionSupport.java"


# static fields
.field private static final EXTENSION_START_PATTERN:[I


# instance fields
.field private final fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

.field private final twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/zxing/oned/UPCEANExtension2Support;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtension2Support;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;

    .line 29
    new-instance v0, Lcom/google/zxing/oned/UPCEANExtension5Support;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtension5Support;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

    return-void
.end method


# virtual methods
.method decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    .line 32
    invoke-static {p2, p3, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object p3

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method
