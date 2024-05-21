.class abstract Landroidx/media3/extractor/mp4/Atom;
.super Ljava/lang/Object;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Atom$ContainerAtom;,
        Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    }
.end annotation


# static fields
.field public static final DEFINES_LARGE_SIZE:I = 0x1

.field public static final EXTENDS_TO_END_SIZE:I = 0x0

.field public static final FULL_HEADER_SIZE:I = 0xc

.field public static final HEADER_SIZE:I = 0x8

.field public static final LONG_HEADER_SIZE:I = 0x10

.field public static final TYPE_H263:I = 0x48323633

.field public static final TYPE_Opus:I = 0x4f707573

.field public static final TYPE_TTML:I = 0x54544d4c

.field public static final TYPE__mp2:I = 0x2e6d7032

.field public static final TYPE__mp3:I = 0x2e6d7033

.field public static final TYPE_ac_3:I = 0x61632d33

.field public static final TYPE_ac_4:I = 0x61632d34

.field public static final TYPE_alac:I = 0x616c6163

.field public static final TYPE_alaw:I = 0x616c6177

.field public static final TYPE_av01:I = 0x61763031

.field public static final TYPE_av1C:I = 0x61763143

.field public static final TYPE_avc1:I = 0x61766331

.field public static final TYPE_avc3:I = 0x61766333

.field public static final TYPE_avcC:I = 0x61766343

.field public static final TYPE_c608:I = 0x63363038

.field public static final TYPE_camm:I = 0x63616d6d

.field public static final TYPE_clli:I = 0x636c6c69

.field public static final TYPE_co64:I = 0x636f3634

.field public static final TYPE_colr:I = 0x636f6c72

.field public static final TYPE_ctts:I = 0x63747473

.field public static final TYPE_d263:I = 0x64323633

.field public static final TYPE_dOps:I = 0x644f7073

.field public static final TYPE_dac3:I = 0x64616333

.field public static final TYPE_dac4:I = 0x64616334

.field public static final TYPE_data:I = 0x64617461

.field public static final TYPE_ddts:I = 0x64647473

.field public static final TYPE_dec3:I = 0x64656333

.field public static final TYPE_dfLa:I = 0x64664c61

.field public static final TYPE_dmlp:I = 0x646d6c70

.field public static final TYPE_dtsc:I = 0x64747363

.field public static final TYPE_dtse:I = 0x64747365

.field public static final TYPE_dtsh:I = 0x64747368

.field public static final TYPE_dtsl:I = 0x6474736c

.field public static final TYPE_dtsx:I = 0x64747378

.field public static final TYPE_dva1:I = 0x64766131

.field public static final TYPE_dvav:I = 0x64766176

.field public static final TYPE_dvcC:I = 0x64766343

.field public static final TYPE_dvh1:I = 0x64766831

.field public static final TYPE_dvhe:I = 0x64766865

.field public static final TYPE_dvvC:I = 0x64767643

.field public static final TYPE_ec_3:I = 0x65632d33

.field public static final TYPE_edts:I = 0x65647473

.field public static final TYPE_elst:I = 0x656c7374

.field public static final TYPE_emsg:I = 0x656d7367

.field public static final TYPE_enca:I = 0x656e6361

.field public static final TYPE_encv:I = 0x656e6376

.field public static final TYPE_esds:I = 0x65736473

.field public static final TYPE_fLaC:I = 0x664c6143

.field public static final TYPE_frma:I = 0x66726d61

.field public static final TYPE_ftyp:I = 0x66747970

.field public static final TYPE_hdlr:I = 0x68646c72

.field public static final TYPE_hev1:I = 0x68657631

.field public static final TYPE_hvc1:I = 0x68766331

.field public static final TYPE_hvcC:I = 0x68766343

.field public static final TYPE_ilst:I = 0x696c7374

.field public static final TYPE_keys:I = 0x6b657973

.field public static final TYPE_lpcm:I = 0x6c70636d

.field public static final TYPE_m1v_:I = 0x6d317620

.field public static final TYPE_mdat:I = 0x6d646174

.field public static final TYPE_mdcv:I = 0x6d646376

.field public static final TYPE_mdhd:I = 0x6d646864

.field public static final TYPE_mdia:I = 0x6d646961

.field public static final TYPE_mean:I = 0x6d65616e

.field public static final TYPE_mehd:I = 0x6d656864

.field public static final TYPE_meta:I = 0x6d657461

.field public static final TYPE_mett:I = 0x6d657474

.field public static final TYPE_mha1:I = 0x6d686131

.field public static final TYPE_mhaC:I = 0x6d686143

.field public static final TYPE_mhm1:I = 0x6d686d31

.field public static final TYPE_minf:I = 0x6d696e66

.field public static final TYPE_mlpa:I = 0x6d6c7061

.field public static final TYPE_moof:I = 0x6d6f6f66

.field public static final TYPE_moov:I = 0x6d6f6f76

.field public static final TYPE_mp4a:I = 0x6d703461

.field public static final TYPE_mp4v:I = 0x6d703476

.field public static final TYPE_mpvd:I = 0x6d707664

.field public static final TYPE_mvex:I = 0x6d766578

.field public static final TYPE_mvhd:I = 0x6d766864

.field public static final TYPE_name:I = 0x6e616d65

.field public static final TYPE_pasp:I = 0x70617370

.field public static final TYPE_proj:I = 0x70726f6a

.field public static final TYPE_pssh:I = 0x70737368

.field public static final TYPE_s263:I = 0x73323633

.field public static final TYPE_saio:I = 0x7361696f

.field public static final TYPE_saiz:I = 0x7361697a

.field public static final TYPE_samr:I = 0x73616d72

.field public static final TYPE_saut:I = 0x73617574

.field public static final TYPE_sawb:I = 0x73617762

.field public static final TYPE_sbgp:I = 0x73626770

.field public static final TYPE_schi:I = 0x73636869

.field public static final TYPE_schm:I = 0x7363686d

.field public static final TYPE_senc:I = 0x73656e63

.field public static final TYPE_sgpd:I = 0x73677064

.field public static final TYPE_sidx:I = 0x73696478

.field public static final TYPE_sinf:I = 0x73696e66

.field public static final TYPE_smta:I = 0x736d7461

.field public static final TYPE_sowt:I = 0x736f7774

.field public static final TYPE_st3d:I = 0x73743364

.field public static final TYPE_stbl:I = 0x7374626c

.field public static final TYPE_stco:I = 0x7374636f

.field public static final TYPE_stpp:I = 0x73747070

.field public static final TYPE_stsc:I = 0x73747363

.field public static final TYPE_stsd:I = 0x73747364

.field public static final TYPE_stss:I = 0x73747373

.field public static final TYPE_stsz:I = 0x7374737a

.field public static final TYPE_stts:I = 0x73747473

.field public static final TYPE_stz2:I = 0x73747a32

.field public static final TYPE_sv3d:I = 0x73763364

.field public static final TYPE_tenc:I = 0x74656e63

.field public static final TYPE_tfdt:I = 0x74666474

.field public static final TYPE_tfhd:I = 0x74666864

.field public static final TYPE_tkhd:I = 0x746b6864

.field public static final TYPE_traf:I = 0x74726166

.field public static final TYPE_trak:I = 0x7472616b

.field public static final TYPE_trex:I = 0x74726578

.field public static final TYPE_trun:I = 0x7472756e

.field public static final TYPE_twos:I = 0x74776f73

.field public static final TYPE_tx3g:I = 0x74783367

.field public static final TYPE_udta:I = 0x75647461

.field public static final TYPE_udts:I = 0x75647473

.field public static final TYPE_ulaw:I = 0x756c6177

.field public static final TYPE_uuid:I = 0x75756964

.field public static final TYPE_vp08:I = 0x76703038

.field public static final TYPE_vp09:I = 0x76703039

.field public static final TYPE_vpcC:I = 0x76706343

.field public static final TYPE_wave:I = 0x77617665

.field public static final TYPE_wvtt:I = 0x77767474

.field public static final TYPE_xyz:I = -0x56878686


# instance fields
.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/mp4/Atom;->type:I

    return-void
.end method

.method public static getAtomTypeString(I)Ljava/lang/String;
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseFullAtomFlags(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static parseFullAtomVersion(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/mp4/Atom;->type:I

    .line 433
    invoke-static {p0}, Landroidx/media3/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
