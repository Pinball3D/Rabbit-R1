.class Landroidx/core/location/LocationCompat$Api28Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static removeBearingAccuracy(Landroid/location/Location;)V
    .locals 24

    move-object/from16 v0, p0

    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 815
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 817
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 818
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 819
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 820
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 822
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 823
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 824
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    move/from16 v16, v15

    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v15

    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    move/from16 v18, v15

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 828
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v19

    move/from16 v20, v15

    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    .line 830
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v21

    move/from16 v22, v15

    .line 831
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v15

    move/from16 v23, v15

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 834
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->reset()V

    .line 835
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 837
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 838
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 839
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    if-eqz v10, :cond_1

    .line 841
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    :cond_1
    if-eqz v13, :cond_2

    .line 844
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    :cond_2
    if-eqz v16, :cond_3

    move/from16 v1, v18

    .line 847
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    :cond_3
    if-eqz v17, :cond_4

    move/from16 v1, v20

    .line 850
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    :cond_4
    if-eqz v19, :cond_5

    move/from16 v1, v22

    .line 853
    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    :cond_5
    if-eqz v21, :cond_6

    move/from16 v1, v23

    .line 856
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :cond_6
    if-eqz v15, :cond_7

    .line 859
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method static removeSpeedAccuracy(Landroid/location/Location;)V
    .locals 24

    move-object/from16 v0, p0

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 758
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 761
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 763
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 764
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 766
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    move/from16 v16, v15

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v15

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    move/from16 v18, v15

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 771
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v19

    move/from16 v20, v15

    .line 772
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v21

    move/from16 v22, v15

    .line 774
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v15

    move/from16 v23, v15

    .line 775
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 777
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->reset()V

    .line 778
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 780
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 781
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 782
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    if-eqz v10, :cond_1

    .line 784
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    :cond_1
    if-eqz v13, :cond_2

    .line 787
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    :cond_2
    if-eqz v16, :cond_3

    move/from16 v1, v18

    .line 790
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    :cond_3
    if-eqz v17, :cond_4

    move/from16 v1, v20

    .line 793
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    :cond_4
    if-eqz v19, :cond_5

    move/from16 v1, v22

    .line 796
    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    :cond_5
    if-eqz v21, :cond_6

    move/from16 v1, v23

    .line 799
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :cond_6
    if-eqz v15, :cond_7

    .line 802
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method static removeVerticalAccuracy(Landroid/location/Location;)V
    .locals 24

    move-object/from16 v0, p0

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 701
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 704
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 706
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 707
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 708
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 710
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    move/from16 v16, v15

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v15

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    move/from16 v18, v15

    .line 713
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v19

    move/from16 v20, v15

    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v15

    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v21

    move/from16 v22, v15

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v15

    move/from16 v23, v15

    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->reset()V

    .line 721
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 723
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 724
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 725
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    if-eqz v10, :cond_1

    .line 727
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    :cond_1
    if-eqz v13, :cond_2

    .line 730
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    :cond_2
    if-eqz v16, :cond_3

    move/from16 v1, v18

    .line 733
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    :cond_3
    if-eqz v17, :cond_4

    move/from16 v1, v20

    .line 736
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    :cond_4
    if-eqz v19, :cond_5

    move/from16 v1, v22

    .line 739
    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    :cond_5
    if-eqz v21, :cond_6

    move/from16 v1, v23

    .line 742
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :cond_6
    if-eqz v15, :cond_7

    .line 745
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method
