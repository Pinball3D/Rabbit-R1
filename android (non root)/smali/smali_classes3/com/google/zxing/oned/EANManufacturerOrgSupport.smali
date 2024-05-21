.class final Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.super Ljava/lang/Object;
.source "EANManufacturerOrgSupport.java"


# instance fields
.field private final countryIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    return-void
.end method

.method private add([ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    .line 56
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized initIfNeeded()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 61
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x13

    :try_start_1
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "US/CA"

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1e

    const/16 v1, 0x27

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "US"

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x3c

    const/16 v1, 0x8b

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "US/CA"

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x12c

    const/16 v1, 0x17b

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "FR"

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x17c

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BG"

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x17f

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SI"

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x181

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "HR"

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x183

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BA"

    .line 70
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x190

    const/16 v1, 0x1b8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "DE"

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1c2

    const/16 v1, 0x1cb

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "JP"

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1cc

    const/16 v1, 0x1d5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "RU"

    .line 73
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1d7

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "TW"

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1da

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "EE"

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1db

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LV"

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1dc

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "AZ"

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1dd

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LT"

    .line 78
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1de

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "UZ"

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1df

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LK"

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1e0

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PH"

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1e1

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BY"

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1e2

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "UA"

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1e4

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MD"

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1e5

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "AM"

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1e6

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "GE"

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1e7

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KZ"

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1e9

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "HK"

    .line 88
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1ea

    const/16 v1, 0x1f3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "JP"

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x1f4

    const/16 v1, 0x1fd

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "GB"

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x208

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "GR"

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x210

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LB"

    .line 92
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x211

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CY"

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x213

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MK"

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x217

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MT"

    .line 95
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x21b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IE"

    .line 96
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x21c

    const/16 v1, 0x225

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "BE/LU"

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x230

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PT"

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x239

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IS"

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x23a

    const/16 v1, 0x243

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "DK"

    .line 100
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x24e

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PL"

    .line 101
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x252

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "RO"

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x257

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "HU"

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x258

    const/16 v1, 0x259

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "ZA"

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x25b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "GH"

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x260

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BH"

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x261

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MU"

    .line 107
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x263

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MA"

    .line 108
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x265

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "DZ"

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x268

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KE"

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x26a

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CI"

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x26b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "TN"

    .line 112
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x26d

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SY"

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x26e

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "EG"

    .line 114
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x270

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LY"

    .line 115
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x271

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "JO"

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x272

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IR"

    .line 117
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x273

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KW"

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x274

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SA"

    .line 119
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x275

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "AE"

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x280

    const/16 v1, 0x289

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "FI"

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2b2

    const/16 v1, 0x2b7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "CN"

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2bc

    const/16 v1, 0x2c5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "NO"

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2d9

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IL"

    .line 124
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2da

    const/16 v1, 0x2e3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "SE"

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2e4

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "GT"

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2e5

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SV"

    .line 127
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2e6

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "HN"

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2e7

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "NI"

    .line 129
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2e8

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CR"

    .line 130
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2e9

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PA"

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2ea

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "DO"

    .line 132
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2ee

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MX"

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2f2

    const/16 v1, 0x2f3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "CA"

    .line 134
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2f7

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "VE"

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x2f8

    const/16 v1, 0x301

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "CH"

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x302

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CO"

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x305

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "UY"

    .line 138
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x307

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PE"

    .line 139
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x309

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BO"

    .line 140
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x30b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "AR"

    .line 141
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x30c

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CL"

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x310

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PY"

    .line 143
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x311

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PE"

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x312

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "EC"

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x315

    const/16 v1, 0x316

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "BR"

    .line 146
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x320

    const/16 v1, 0x347

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "IT"

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x348

    const/16 v1, 0x351

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "ES"

    .line 148
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x352

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CU"

    .line 149
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x35a

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SK"

    .line 150
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x35b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CZ"

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x35c

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "YU"

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x361

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MN"

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x363

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KP"

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x364

    const/16 v1, 0x365

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "TR"

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x366

    const/16 v1, 0x36f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "NL"

    .line 156
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x370

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KR"

    .line 157
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x375

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "TH"

    .line 158
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x378

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SG"

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x37a

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IN"

    .line 160
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x37d

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "VN"

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x380

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PK"

    .line 162
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x383

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "ID"

    .line 163
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x384

    const/16 v1, 0x397

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "AT"

    .line 164
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x3a2

    const/16 v1, 0x3ab

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "AU"

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x3ac

    const/16 v1, 0x3b5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "AZ"

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x3bb

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MY"

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v0, 0x3be

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MO"

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->initIfNeeded()V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 41
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 42
    aget v5, v4, v1

    if-ge p1, v5, :cond_0

    return-object v3

    .line 46
    :cond_0
    array-length v3, v4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    aget v5, v4, v6

    :goto_1
    if-gt p1, v5, :cond_2

    iget-object p0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    .line 48
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method
