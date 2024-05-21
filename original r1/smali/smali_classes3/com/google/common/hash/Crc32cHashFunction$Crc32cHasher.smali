.class final Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;
.super Lcom/google/common/hash/AbstractStreamingHasher;
.source "Crc32cHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Crc32cHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Crc32cHasher"
.end annotation


# static fields
.field static final BYTE_TABLE:[I

.field private static final EMPTY:Ljava/nio/ByteBuffer;

.field static final INVERSE_COMPUTE_FOR_WORD_OF_ALL_1S:I = -0x111c2233

.field static final STRIDE_TABLE:[[I


# instance fields
.field private crc0:I

.field private crc1:I

.field private crc2:I

.field private crc3:I

.field private finished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->BYTE_TABLE:[I

    const/4 v1, 0x4

    new-array v1, v1, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->STRIDE_TABLE:[[I

    .line 372
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->EMPTY:Ljava/nio/ByteBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0xd947cfd
        -0x1ec48f09
        0x1350f3f4
        -0x386568e1
        0x35f1141c
        0x26a1e7e8
        -0x2b359b15
        -0x7526a731
        0x78b2dbcc
        0x6be22838
        -0x667654c5
        0x4d43cfd0    # 2.0532352E8f
        -0x40d7b32d
        -0x538740d9
        0x5e133c24
        0x105ec76f
        -0x1dcabb94
        -0xe9a4868
        0x30e349b
        -0x283baf90
        0x25afd373
        0x36ff2087
        -0x3b6b5c7c
        -0x65786060
        0x68ec1ca3
        0x7bbcef57
        -0x762893ac
        0x5d1d08bf
        -0x50897444
        -0x43d987b8
        0x4e4dfb4b    # 8.639495E8f
        0x20bd8ede
        -0x2d29f223
        -0x3e7901d7
        0x33ed7d2a
        -0x18d8e63f
        0x154c9ac2
        0x61c6936
        -0xb8815cb
        -0x559b29ef
        0x580f5512
        0x4b5fa6e6    # 1.4657254E7f
        -0x46cbda1b
        0x6dfe410e
        -0x606a3df3
        -0x733ace07
        0x7eaeb2fa
        0x30e349b1
        -0x3d77354e
        -0x2e27c6ba
        0x23b3ba45
        -0x8862152
        0x5125dad
        0x1642ae59
        -0x1bd6d2a6
        -0x45c5ee82
        0x4851927d
        0x5b016189
        -0x56951d76
        0x7da08661
        -0x7034fa9e
        -0x6364096a
        0x6ef07595
        0x417b1dbc
        -0x4cef6141
        -0x5fbf92b5
        0x522bee48
        -0x791e755d
        0x748a09a0
        0x67dafa54
        -0x6a4e86a9
        -0x345dba8d    # -2.1269222E7f
        0x39c9c670
        0x2a993584
        -0x270d4979
        0xc38d26c
        -0x1acae91
        -0x12fc5d65
        0x1f682198
        0x5125dad3
        -0x5cb1a630
        -0x4fe155dc
        0x42752927
        -0x6940b234
        0x64d4cecf
        0x77843d3b
        -0x7a1041c8
        -0x24037de4
        0x2997011f
        0x3ac7f2eb
        -0x37538e18    # -353167.25f
        0x1c661503
        -0x11f26a00
        -0x2a29a0c
        0xf36e6f7
        0x61c69362
        -0x6c52ef9f
        -0x7f021c6b
        0x72966096
        -0x59a3fb83
        0x5437877e
        0x4767748a
        -0x4af30877
        -0x14e03453
        0x197448ae
        0xa24bb5a
        -0x7b0c7a7
        0x2c855cb2
        -0x2111204f
        -0x3241d3bb
        0x3fd5af46
        0x7198540d
        -0x7c0c28f2
        -0x6f5cdb06
        0x62c8a7f9
        -0x49fd3cee
        0x44694011
        0x5739b3e5
        -0x5aadcf1a
        -0x4bef33e
        0x92a8fc1
        0x1a7a7c35
        -0x17ee00ca
        0x3cdb9bdd
        -0x314fe722
        -0x221f14d6
        0x2f8b6829
        -0x7d09c488
        0x709db87b
        0x63cd4b8f
        -0x6e593774
        0x456cac67
        -0x48f8d09c
        -0x5ba82370
        0x563c5f93
        0x82f63b7
        -0x5bb1f4c
        -0x16ebecc0
        0x1b7f9043
        -0x304a0b58
        0x3dde77ab
        0x2e8e845f
        -0x231af8a4
        -0x6d5703e9
        0x60c37f14
        0x73938ce0
        -0x7e07f01d
        0x55326b08
        -0x58a617f5
        -0x4bf6e401
        0x466298fc
        0x1871a4d8
        -0x15e5d825
        -0x6b52bd1
        0xb21572c
        -0x2014cc39
        0x2d80b0c4
        0x3ed04330    # 0.4067626f
        -0x33443fcd    # -9.843548E7f
        -0x5db44a5a
        0x502036a5
        0x4370c551
        -0x4ee4b9ae
        0x65d122b9
        -0x68455e46
        -0x7b15adb2
        0x7681d14d
        0x2892ed69
        -0x25069196
        -0x36566262
        0x3bc21e9d
        -0x10f7858a
        0x1d63f975
        0xe330a81
        -0x3a7767e
        -0x4dea8d37
        0x407ef1ca
        0x532e023e
        -0x5eba7ec3
        0x758fe5d6
        -0x781b992b
        -0x6b4b6adf
        0x66df1622
        0x38cc2a06
        -0x355856fb    # -5493890.5f
        -0x2608a50f
        0x2b9cd9f2
        -0xa942e7
        0xd3d3e1a
        0x1e6dcdee
        -0x13f9b113
        -0x3c72d93c
        0x31e6a5c7
        0x22b65633
        -0x2f222ad0
        0x417b1db
        -0x983cd28
        -0x1ad33ed4
        0x1747422f
        0x49547e0b
        -0x44c002f8
        -0x5790f104
        0x5a048dff
        -0x713116ec
        0x7ca56a17
        0x6ff599e3
        -0x6261e520
        -0x2c2c1e55
        0x21b862a8
        0x32e8915c
        -0x3f7ceda1
        0x144976b4
        -0x19dd0a49
        -0xa8df9bd
        0x7198540
        0x590ab964
        -0x549ec599
        -0x47ce366d
        0x4a5a4a90    # 3576484.0f
        -0x616fd185
        0x6cfbad78
        0x7fab5e8c
        -0x723f2271
        -0x1ccf57e6
        0x115b2b19
        0x20bd8ed
        -0xf9fa412
        0x24aa3f05
        -0x293e43fa
        -0x3a6eb00e    # -4649.993f
        0x37faccf1
        0x69e9f0d5
        -0x647d8c2a
        -0x772d7fde
        0x7ab90321
        -0x518c9836
        0x5c18e4c9
        0x4f48173d
        -0x42dc6bc2
        -0xc91908b
        0x105ec76
        0x12551f82
        -0x1fc1637f
        0x34f4f86a
        -0x39608497
        -0x2a307763
        0x27a40b9e
        0x79b737ba
        -0x74234b47
        -0x6773b8b3
        0x6ae7c44e
        -0x41d25f5b
        0x4c4623a6    # 5.1941016E7f
        0x5f16d052
        -0x5282acaf
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x30d23865
        0x61a470ca
        0x517648af
        -0x3cb71e6c
        -0xc65260f
        -0x5d136ea2
        -0x6dc156c5
        -0x7c824a27
        -0x4c507244
        -0x1d263aed
        -0x2df4028a
        0x4035544d
        0x70e76c28
        0x21912487
        0x11431ce2
        0x3171d43
        0x33c52526
        0x62b36d89
        0x526155ec
        -0x3fa00329
        -0xf723b4e
        -0x5e0473e3
        -0x6ed64b88
        -0x7f955766
        -0x4f476f01
        -0x1e3127b0
        -0x2ee31fcb
        0x4322490e
        0x73f0716b
        0x228639c4
        0x125401a1
        0x62e3a86
        0x36fc02e3
        0x678a4a4c
        0x57587229
        -0x3a9924ee
        -0xa4b1c89
        -0x5b3d5428
        -0x6bef6c43
        -0x7aac70a1
        -0x4a7e48c6
        -0x1b08006b
        -0x2bda3810
        0x461b6ecb
        0x76c956ae
        0x27bf1e01
        0x176d2664
        0x53927c5
        0x35eb1fa0
        0x649d570f
        0x544f6f6a
        -0x398e39af
        -0x95c01cc
        -0x582a4965
        -0x68f87102
        -0x79bb6de4
        -0x49695587
        -0x181f1d2a
        -0x28cd254d
        0x450c7388
        0x75de4bed
        0x24a80342
        0x147a3b27
        0xc5c750c
        0x3c8e4d69
        0x6df805c6
        0x5d2a3da3
        -0x30eb6b68
        -0x395303
        -0x514f1bae
        -0x619d23c9
        -0x70de3f2b
        -0x400c0750
        -0x117a4fe1
        -0x21a87786
        0x4c692141    # 6.1113604E7f
        0x7cbb1924    # 7.7717554E36f
        0x2dcd518b
        0x1d1f69ee
        0xf4b684f
        0x3f99502a
        0x6eef1885
        0x5e3d20e0
        -0x33fc7625    # -3.4482028E7f
        -0x32e4e42
        -0x525806ef
        -0x628a3e8c
        -0x73c9226a
        -0x431b1a0d
        -0x126d52a4
        -0x22bf6ac7
        0x4f7e3c02
        0x7fac0467
        0x2eda4cc8
        0x1e0874ad
        0xa724f8a
        0x3aa077ef
        0x6bd63f40
        0x5b040725
        -0x36c551e2
        -0x6176985
        -0x5761212c
        -0x67b3194f
        -0x76f005ad
        -0x46223dca
        -0x17547567
        -0x27864d04
        0x4a471bc7    # 3262193.8f
        0x7a9523a2
        0x2be36b0d
        0x1b315368
        0x96552c9
        0x39b76aac
        0x68c12203
        0x58131a66
        -0x35d24ca3
        -0x50074c8
        -0x54763c69
        -0x64a4040e
        -0x75e718f0
        -0x4535208b
        -0x14436826
        -0x24915041
        0x49500684    # 852072.25f
        0x79823ee1
        0x28f4764e
        0x18264e2b
        0x18b8ea18
        0x286ad27d
        0x791c9ad2
        0x49cea2b7
        -0x240ff474
        -0x14ddcc17
        -0x45ab84ba
        -0x7579bcdd
        -0x643aa03f
        -0x54e8985c
        -0x59ed0f5
        -0x354ce892    # -5868471.0f
        0x588dbe55
        0x685f8630
        0x3929ce9f
        0x9fbf6fa
        0x1baff75b
        0x2b7dcf3e
        0x7a0b8791
        0x4ad9bff4    # 7135226.0f
        -0x2718e931
        -0x17cad156
        -0x46bc99fb
        -0x766ea1a0
        -0x672dbd7e
        -0x57ff8519
        -0x689cdb8
        -0x365bf5d3
        0x5b9aa316
        0x6b489b73
        0x3a3ed3dc
        0xaecebb9
        0x1e96d09e
        0x2e44e8fb
        0x7f32a054
        0x4fe09831    # 7.536141E9f
        -0x2221cef6
        -0x12f3f691
        -0x4385be40
        -0x7357865b
        -0x62149ab9
        -0x52c6a2de
        -0x3b0ea73
        -0x3362d218    # -8.240723E7f
        0x5ea384d3
        0x6e71bcb6
        0x3f07f419
        0xfd5cc7c
        0x1d81cddd
        0x2d53f5b8
        0x7c25bd17
        0x4cf78572
        -0x2136d3b7
        -0x11e4ebd4
        -0x4092a37d
        -0x70409b1a
        -0x610387fc
        -0x51d1bf9f
        -0xa7f732
        -0x3075cf55
        0x5db49990
        0x6d66a1f5
        0x3c10e95a
        0xcc2d13f
        0x14e49f14
        0x2436a771
        0x7540efde
        0x4592d7bb
        -0x28538180
        -0x1881b91b
        -0x49f7f1b6
        -0x7925c9d1
        -0x6866d533
        -0x58b4ed58
        -0x9c2a5f9
        -0x39109d9e
        0x54d1cb59
        0x6403f33c
        0x3575bb93
        0x5a783f6
        0x17f38257
        0x2721ba32
        0x7657f29d
        0x4685caf8
        -0x2b449c3d
        -0x1b96a45a
        -0x4ae0ecf7
        -0x7a32d494
        -0x6b71c872
        -0x5ba3f015
        -0xad5b8bc
        -0x3a0780df
        0x57c6d61a
        0x6714ee7f
        0x3662a6d0
        0x6b09eb5
        0x12caa592
        0x22189df7
        0x736ed558
        0x43bced3d
        -0x2e7dbbfa
        -0x1eaf839d
        -0x4fd9cb34
        -0x7f0bf357
        -0x6e48efb5
        -0x5e9ad7d2
        -0xfec9f7f
        -0x3f3ea71c
        0x52fff1df
        0x622dc9ba
        0x335b8115
        0x389b970
        0x11ddb8d1
        0x210f80b4
        0x7079c81b
        0x40abf07e
        -0x2d6aa6bb
        -0x1db89ee0
        -0x4cced671
        -0x7c1cee16
        -0x6d5ff2f8
        -0x5d8dca93
        -0xcfb823e
        -0x3c29ba59
        0x51e8ec9c
        0x613ad4f9
        0x304c9c56
        0x9ea433
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x54075546
        -0x57f15574
        -0x3f60036
        0x55f123e9
        0x1f676af
        -0x200769b
        -0x560723dd    # -1.10516E-13f
        -0x541db82e    # -1.60782E-12f
        -0x1aed6c
        0x3eced5e
        0x57ebb818
        -0x1ec9bc5
        -0x55ebce83
        0x561dceb7
        0x21a9bf1
        0x5228f955
        0x62fac13
        -0x5d9ac27
        -0x51def961
        0x7d9dabc
        0x53de8ffa
        -0x50288fd0
        -0x42fda8a
        -0x6354179
        -0x5232143f
        0x51c4140b
        0x5c3414d
        -0x53c46292
        -0x7c337d8
        0x43537e2
        0x503262a4
        -0x5bae0d56
        -0xfa95814
        0xc5f5826
        0x58580d60
        -0xe5f2ebd
        -0x5a587bfb
        0x59ae7bcf
        0xda92e89
        0xfb3b578
        0x5bb4e03e
        -0x5842e00c
        -0xc45b54e
        0x5a429691
        0xe45c3d7
        -0xdb3c3e3
        -0x59b496a5
        -0x986f401
        -0x5d81a147
        0x5e77a173
        0xa70f435
        -0x5c77d7ea
        -0x87082b0
        0xb86829a
        0x5f81d7dc
        0x5d9b4c2d
        0x99c196b
        -0xa6a195f
        -0x5e6d4c19
        0x86a6fc4
        0x5c6d3a82
        -0x5f9b3ab8
        -0xb9c6ff2
        0x4d4f93a5    # 2.1765998E8f
        0x1948c6e3
        -0x1abec6d7
        -0x4eb99391
        0x18beb04c
        0x4cb9e50a    # 9.746235E7f
        -0x4f4fe540
        -0x1b48b07a
        -0x19522b89
        -0x4d557ecf
        0x4ea37efb    # 1.371504E9f
        0x1aa42bbd
        -0x4ca30862
        -0x18a45d28
        0x1b525d12
        0x4f550854    # 3.5740928E9f
        0x1f676af0
        0x4b603fb6    # 1.4696374E7f
        -0x48963f84
        -0x1c916ac6
        0x4a964919    # 4924556.5f
        0x1e911c5f
        -0x1d671c6b
        -0x4960492d    # -4.759853E-6f
        -0x4b7ad2de
        -0x1f7d879c
        0x1c8b87ae
        0x488cd2e8    # 288407.25f
        -0x1e8bf135
        -0x4a8ca473
        0x497aa447
        0x1d7df101
        -0x16e19ef1
        -0x42e6cbb7
        0x4110cb83
        0x15179ec5
        -0x4310bd1a
        -0x1717e860
        0x14e1e86a
        0x40e6bd2c
        0x42fc26dd
        0x16fb739b
        -0x150d73af
        -0x410a26e9
        0x170d0534
        0x430a5072
        -0x40fc5048    # -0.5144f
        -0x14fb0502
        -0x44c967a6
        -0x10ce32e4
        0x133832d6
        0x473f6790    # 48999.562f
        -0x1138444d
        -0x453f110b
        0x46c9113f
        0x12ce4479
        0x10d4df88
        0x44d38ace
        -0x47258afc
        -0x1322dfbe
        0x4525fc61
        0x1122a927
        -0x12d4a913
        -0x46d3fc55
        -0x6560d8b6
        -0x31678df4
        0x32918dc6
        0x6696d880
        -0x3091fb5d
        -0x6496ae1b
        0x6760ae2f
        0x3367fb69
        0x317d6098
        0x657a35de
        -0x668c35ec
        -0x328b60ae    # -2.5650512E8f
        0x648c4371
        0x308b1637
        -0x337d1603    # -6.863665E7f
        -0x677a4345
        -0x374821e1
        -0x634f74a7
        0x60b97493
        0x34be21d5
        -0x62b9020a
        -0x36be5750    # -793227.0f
        0x3548577a
        0x614f023c
        0x635599cd
        0x3752cc8b
        -0x34a4ccbf    # -1.4365505E7f
        -0x60a399f9
        0x36a4ba24
        0x62a3ef62
        -0x6155ef58
        -0x3552ba12    # -5677815.0f
        0x3eced5e0
        0x6ac980a6
        -0x693f8094
        -0x3d38d5d6
        0x6b3ff609
        0x3f38a34f
        -0x3ccea37b
        -0x68c9f63d
        -0x6ad36dce
        -0x3ed4388c
        0x3d2238be
        0x69256df8
        -0x3f224e25
        -0x6b251b63
        0x68d31b57
        0x3cd44e11
        0x6ce62cb5
        0x38e179f3
        -0x3b1779c7
        -0x6f102c81
        0x39170f5c
        0x6d105a1a
        -0x6ee65a30
        -0x3ae10f6a
        -0x38fb9499
        -0x6cfcc1df
        0x6f0ac1eb
        0x3b0d94ad
        -0x6d0ab772
        -0x390de238
        0x3afbe202
        0x6efcb744
        -0x282f4b11
        -0x7c281e57
        0x7fde1e63
        0x2bd94b25
        -0x7dde68fa
        -0x29d93dc0
        0x2a2f3d8a
        0x7e2868cc
        0x7c32f33d
        0x2835a67b
        -0x2bc3a64f
        -0x7fc4f309
        0x29c3d0d4
        0x7dc48592
        -0x7e3285a8
        -0x2a35d0e2
        -0x7a07b246
        -0x2e00e704
        0x2df6e736
        0x79f1b270
        -0x2ff691ad    # -9.222835E9f
        -0x7bf1c4eb
        0x7807c4df
        0x2c009199
        0x2e1a0a68
        0x7a1d5f2e
        -0x79eb5f1c    # -2.795391E-35f
        -0x2dec0a5e
        0x7beb2981
        0x2fec7cc7
        -0x2c1a7cf3
        -0x781d29b5
        0x73814645
        0x27861303
        -0x24701337
        -0x70774671
        0x267065ac
        0x727730ea
        -0x718130e0
        -0x2586659a
        -0x279cfe69
        -0x739bab2f    # -1.7590005E-31f
        0x706dab1b
        0x246afe5d
        -0x726ddd82
        -0x266a88c8
        0x259c88f2
        0x719bddb4
        0x21a9bf10
        0x75aeea56
        -0x7658ea64
        -0x225fbf26
        0x74589cf9
        0x205fc9bf
        -0x23a9c98b
        -0x77ae9ccd
        -0x75b4073e
        -0x21b3527c
        0x2245524e
        0x76420708
        -0x204524d5
        -0x74427193
        0x77b471a7
        0x23b324e1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x678efd01
        -0x30e205fe
        -0x576cf8fd
        -0x64287d0b
        -0x3a6800c
        0x54ca78f7
        0x334485f6
        0x3243731b
        0x55cd8e1a
        -0x2a176e7
        -0x652f8be8
        -0x566b0e12
        -0x31e5f311    # -6.461347E8f
        0x66890bec
        0x107f6ed
        0x6486e636
        0x3081b37    # 3.999805E-37f
        -0x5464e3cc
        -0x33ea1ecb    # -3.9290068E7f
        -0xae9b3d
        -0x6720663e
        0x304c9ec1
        0x57c263c0
        0x56c5952d
        0x314b682c
        -0x662790d1
        -0x1a96dd2
        -0x32ede828    # -1.5318976E8f
        -0x55631527
        0x20fedda
        0x658110db
        -0x36f23394
        -0x517cce93
        0x610366e
        0x619ecb6f
        0x52da4e99
        0x3554b398
        -0x62384b65
        -0x5b6b666
        -0x4b14089
        -0x633fbd8a
        0x34534575
        0x53ddb874
        0x60993d82
        0x717c083
        -0x507b3880
        -0x37f5c57f
        -0x5274d5a6
        -0x35fa28a5
        0x6296d058
        0x5182d59
        0x365ca8af
        0x51d255ae
        -0x6bead53
        -0x61305054
        -0x6037a6bf
        -0x7b95bc0
        0x50d5a343
        0x375b5e42
        0x41fdbb4
        0x639126b5
        -0x34fdde4a    # -8528310.0f
        -0x53732349
        -0x680811d7
        -0xf86ecd8
        0x58ea142b
        0x3f64e92a
        0xc206cdc
        0x6bae91dd
        -0x3cc26922
        -0x5b4c9421
        -0x5a4b62ce
        -0x3dc59fcd
        0x6aa96730
        0xd279a31
        0x3e631fc7
        0x59ede2c6
        -0xe811a3b
        -0x690fe73c
        -0xc8ef7e1
        -0x6b000ae2
        0x3c6cf21d
        0x5be20f1c
        0x68a68aea
        0xf2877eb
        -0x58448f18
        -0x3fca7217
        -0x3ecd84fc
        -0x594379fb
        0xe2f8106
        0x69a17c07
        0x5ae5f9f1
        0x3d6b04f0
        -0x6a07fc0d
        -0xd89010e
        0x5efa2245
        0x3974df44
        -0x6e1827b9
        -0x996daba
        -0x3ad25f50
        -0x5d5ca24f
        0xa305ab2
        0x6dbea7b3
        0x6cb9515e
        0xb37ac5f
        -0x5c5b54a4
        -0x3bd5a9a3
        -0x8912c55
        -0x6f1fd156
        0x387329a9
        0x5ffdd4a8
        0x3a7cc473
        0x5df23972
        -0xa9ec18f
        -0x6d103c90
        -0x5e54b97a
        -0x39da4479
        0x6eb6bc84
        0x9384185
        0x83fb768
        0x6fb14a69
        -0x38ddb296
        -0x5f534f95
        -0x6c17ca63
        -0xb993764
        0x5cf5cf9f
        0x3b7b329e
        0x2a03aaa3
        0x4d8d57a2    # 2.9641632E8f
        -0x1ae1af5f
        -0x7d6f5260
        -0x4e2bd7aa
        -0x29a52aa9
        0x7ec9d254
        0x19472f55
        0x1840d9b8
        0x7fce24b9
        -0x28a2dc46
        -0x4f2c2145
        -0x7c68a4b3
        -0x1be659b4
        0x4c8aa14f    # 7.2682104E7f
        0x2b045c4e
        0x4e854c95
        0x290bb194
        -0x7e674969
        -0x19e9b46a
        -0x2aad31a0
        -0x4d23cc9f
        0x1a4f3462
        0x7dc1c963
        0x7cc63f8e
        0x1b48c28f
        -0x4c243a74
        -0x2baac773
        -0x18ee4285
        -0x7f60bf86
        0x280c4779
        0x4f82ba78
        -0x1cf19931
        -0x7b7f6432
        0x2c139ccd
        0x4b9d61cc    # 2.0628376E7f
        0x78d9e43a
        0x1f57193b
        -0x483be1c8
        -0x2fb51cc7
        -0x2eb2ea2c
        -0x493c172b
        0x1e50efd6
        0x79de12d7
        0x4a9a9721    # 5065616.5f
        0x2d146a20
        -0x7a7892dd
        -0x1df66fde
        -0x78777f07
        -0x1ff98208
        0x48957afb
        0x2f1b87fa
        0x1c5f020c
        0x7bd1ff0d
        -0x2cbd07f2
        -0x4b33faf1
        -0x4a340c1e
        -0x2dbaf11d
        0x7ad609e0
        0x1d58f4e1
        0x2e1c7117
        0x49928c16    # 1200514.8f
        -0x1efe74eb
        -0x797089ec
        -0x420bbb76
        -0x25854675
        0x72e9be88
        0x15674389
        0x2623c67f
        0x41ad3b7e
        -0x16c1c383
        -0x714f3e84
        -0x7048c86f
        -0x17c63570
        0x40aacd93
        0x27243092
        0x1460b564
        0x73ee4865
        -0x2482b09a
        -0x430c4d99
        -0x268d5d44
        -0x4103a043
        0x166f58be
        0x71e1a5bf
        0x42a52049
        0x252bdd48
        -0x724725b5
        -0x15c9d8b6
        -0x14ce2e59
        -0x7340d35a
        0x242c2ba5
        0x43a2d6a4
        0x70e65352
        0x1768ae53
        -0x400456b0
        -0x278aabaf
        0x74f988e6
        0x137775e7
        -0x441b8d1c
        -0x2395701b
        -0x10d1f5ed
        -0x775f08ee
        0x2033f011
        0x47bd0d10    # 96794.125f
        0x46bafbfd
        0x213406fc
        -0x7658fe01
        -0x11d60302
        -0x229286f8
        -0x451c7bf7
        0x1270830a
        0x75fe7e0b
        0x107f6ed0
        0x77f193d1
        -0x209d6b2e
        -0x4713962d
        -0x745713db
        -0x13d9eedc
        0x44b51627
        0x233beb26
        0x223c1dcb
        0x45b2e0ca
        -0x12de1837
        -0x7550e538
        -0x461460c2
        -0x219a9dc1
        0x76f6653c
        0x1178983d
    .end array-data

    :array_4
    .array-data 4
        0x0
        -0xdf3f202
        -0x1e0b92f3
        0x13f860f3
        -0x39fb5315
        0x3408a115
        0x27f0c1e6
        -0x2a0333e8
        -0x761ad0d9
        0x7be922d9
        0x6811422a
        -0x65e2b02c
        0x4fe183cc    # 7.567022E9f
        -0x421271ce
        -0x51ea113f
        0x5c19e33f
        0x162628bf
        -0x1bd5dabf
        -0x82dba4e
        0x5de484c
        -0x2fdd7bac
        0x222e89aa
        0x31d6e959
        -0x3c251b59
        -0x603cf868
        0x6dcf0a66
        0x7e376a95
        -0x73c49895
        0x59c7ab73
        -0x54345973
        -0x47cc3982
        0x4a3fcb80    # 3142368.0f
        0x2c4c517e
        -0x21bfa380
        -0x3247c38d
        0x3fb4318d
        -0x15b7026b
        0x1844f06b
        0xbbc9098
        -0x64f629a
        -0x5a5681a7
        0x57a573a7
        0x445d1354
        -0x49aee156
        0x63add2b2
        -0x6e5e20b4
        -0x7da64041
        0x7055b241
        0x3a6a79c1
        -0x37998bc1
        -0x2461eb34
        0x29921932
        -0x3912ad6
        0xe62d8d4
        0x1d9ab827
        -0x10694a27
        -0x4c70a91a
        0x41835b18
        0x527b3beb
        -0x5f88c9eb
        0x758bfa0d
        -0x7878080d
        -0x6b806900
        0x66739afe
        0x5898a2fc
        -0x556b50fe
        -0x4693300f
        0x4b60c20f    # 1.4729743E7f
        -0x6163f1e9
        0x6c9003e9
        0x7f68631a
        -0x729b911c
        -0x2e827225
        0x23718025
        0x3089e0d6
        -0x3d7a12d8
        0x17792130
        -0x1a8ad332
        -0x972b3c3
        0x48141c3
        0x4ebe8a43    # 1.5983661E9f
        -0x434d7843
        -0x50b518b2
        0x5d46eab0
        -0x7745d958
        0x7ab62b56
        0x694e4ba5
        -0x64bdb9a5
        -0x38a45a9c
        0x3557a89a
        0x26afc869
        -0x2b5c3a69
        0x15f098f
        -0xcacfb8f
        -0x1f549b7e
        0x12a7697c
        0x74d4f382
        -0x79270184
        -0x6adf6171
        0x672c9371
        -0x4d2fa097
        0x40dc5297
        0x53243264
        -0x5ed7c066
        -0x2ce235b
        0xf3dd15b
        0x1cc5b1a8
        -0x113643aa
        0x3b35704e
        -0x36c68250    # -759771.0f
        -0x253ee2bd
        0x28cd10bd
        0x62f2db3d
        -0x6f01293d
        -0x7cf949d0
        0x710abbce
        -0x5b09882a
        0x56fa7a28
        0x45021adb
        -0x48f1e8db
        -0x14e80be6
        0x191bf9e4
        0xae39917
        -0x7106b17
        0x2d1358f1
        -0x20e0aaf1
        -0x3318ca04
        0x3eeb3802
        -0x4eceba08
        0x433d4806
        0x50c528f5
        -0x5d36daf5
        0x7735e913
        -0x7ac61b13
        -0x693e7be2
        0x64cd89e0
        0x38d46adf
        -0x352798df    # -7091088.5f
        -0x26dff82e
        0x2b2c0a2c
        -0x12f39cc
        0xcdccbca
        0x1f24ab39
        -0x12d75939
        -0x58e892b9
        0x551b60b9
        0x46e3004a
        -0x4b10f24c
        0x6113c1ac
        -0x6ce033ae
        -0x7f18535f
        0x72eba15f
        0x2ef24260
        -0x2301b062
        -0x30f9d093
        0x3d0a2293
        -0x17091175
        0x1afae375
        0x9028386
        -0x4f17188
        -0x6282eb7a
        0x6f711978
        0x7c89798b
        -0x717a8b8b
        0x5b79b86d
        -0x568a4a6d
        -0x45722aa0
        0x4881d89e
        0x14983ba1
        -0x196bc9a1
        -0xa93a954
        0x7605b52
        -0x2d6368b6
        0x20909ab4
        0x3368fa47
        -0x3e9b0847
        -0x74a4c3c7
        0x795731c7
        0x6aaf5134
        -0x675ca336
        0x4d5f90d2    # 2.3442563E8f
        -0x40ac62d4
        -0x53540221
        0x5ea7f021
        0x2be131e
        -0xf4de120
        -0x1cb581ed
        0x114673ed
        -0x3b45400b
        0x36b6b20b
        0x254ed2f8
        -0x28bd20fa
        -0x165618fc
        0x1ba5eafa
        0x85d8a09
        -0x5ae7809
        0x2fad4bef
        -0x225eb9ef
        -0x31a6d91e
        0x3c552b1c
        0x604cc823
        -0x6dbf3a23
        -0x7e475ad2
        0x73b4a8d0
        -0x59b79b38
        0x54446936
        0x47bc09c5
        -0x4a4ffbc5
        -0x703045
        0xd83c245
        0x1e7ba2b6
        -0x138850b8
        0x398b6350
        -0x34789152    # -1.7751388E7f
        -0x2780f1a3
        0x2a7303a3
        0x766ae09c
        -0x7b99129e
        -0x6861726f
        0x6592806f
        -0x4f91b389
        0x42624189    # 56.564f
        0x519a217a
        -0x5c69d37c
        -0x3a1a4986
        0x37e9bb84
        0x2411db77
        -0x29e22977
        0x3e11a91
        -0xe12e891
        -0x1dea8864
        0x10197a62
        0x4c00995d    # 3.3711476E7f
        -0x41f36b5d
        -0x520b0bb0
        0x5ff8f9ae
        -0x75fbca4a
        0x78083848
        0x6bf058bb
        -0x6603aabb
        -0x2c3c613b
        0x21cf933b
        0x3237f3c8
        -0x3fc401ca
        0x15c7322e
        -0x1834c030
        -0xbcca0dd
        0x63f52dd
        0x5a26b1e2
        -0x57d543e4
        -0x442d2311
        0x49ded111
        -0x63dde2f7
        0x6e2e10f7
        0x7dd67004
        -0x70258206
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    .line 60
    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->finished:Z

    const v1, -0x111c2233

    iput v1, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc1:I

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc2:I

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc3:I

    return-void
.end method

.method static combine(II)I
    .locals 2

    xor-int/2addr p0, p1

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    ushr-int/lit8 v0, p0, 0x8

    sget-object v1, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->BYTE_TABLE:[I

    and-int/lit16 p0, p0, 0xff

    .line 367
    aget p0, v1, p0

    xor-int/2addr p0, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method static computeForWord(I)I
    .locals 4

    sget-object v0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->STRIDE_TABLE:[[I

    const/4 v1, 0x3

    .line 358
    aget-object v1, v0, v1

    and-int/lit16 v2, p0, 0xff

    aget v1, v1, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    ushr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int/2addr v1, v2

    const/4 v2, 0x1

    aget-object v2, v0, v2

    ushr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aget-object v0, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    aget p0, v0, p0

    xor-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method protected makeHash()Lcom/google/common/hash/HashCode;
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->finished:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->EMPTY:Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->processRemaining(Ljava/nio/ByteBuffer;)V

    :cond_0
    iget p0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    not-int p0, p0

    .line 122
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method protected process(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->finished:Z

    if-nez v0, :cond_1

    .line 88
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    .line 89
    invoke-static {v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->computeForWord(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc1:I

    .line 90
    invoke-static {v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->computeForWord(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc1:I

    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc2:I

    .line 91
    invoke-static {v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->computeForWord(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc2:I

    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc3:I

    .line 92
    invoke-static {v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->computeForWord(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc3:I

    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    .line 93
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc1:I

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc1:I

    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc2:I

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc2:I

    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc3:I

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc3:I

    goto :goto_0

    :cond_0
    return-void

    .line 85
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The behavior of calling any method after calling hash() is undefined."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    .line 105
    invoke-static {v0, v1}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->combine(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    iget v1, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc1:I

    .line 106
    invoke-static {v0, v1}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->combine(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    iget v1, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc2:I

    .line 107
    invoke-static {v0, v1}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->combine(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    iget v1, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc3:I

    .line 108
    invoke-static {v0, v1}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->combine(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    .line 109
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    ushr-int/lit8 v0, v0, 0x8

    sget-object v1, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->BYTE_TABLE:[I

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget v3, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc0:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->finished:Z

    return-void
.end method
