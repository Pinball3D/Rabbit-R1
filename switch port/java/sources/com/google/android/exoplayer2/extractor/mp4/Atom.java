package com.google.android.exoplayer2.extractor.mp4;

import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
abstract class Atom {
    public static final int DEFINES_LARGE_SIZE = 1;
    public static final int EXTENDS_TO_END_SIZE = 0;
    public static final int FULL_HEADER_SIZE = 12;
    public static final int HEADER_SIZE = 8;
    public static final int LONG_HEADER_SIZE = 16;
    public static final int TYPE_H263 = 1211250227;
    public static final int TYPE_Opus = 1332770163;
    public static final int TYPE_TTML = 1414810956;
    public static final int TYPE__mp2 = 778924082;
    public static final int TYPE__mp3 = 778924083;
    public static final int TYPE_ac_3 = 1633889587;
    public static final int TYPE_ac_4 = 1633889588;
    public static final int TYPE_alac = 1634492771;
    public static final int TYPE_alaw = 1634492791;
    public static final int TYPE_av01 = 1635135537;
    public static final int TYPE_av1C = 1635135811;
    public static final int TYPE_avc1 = 1635148593;
    public static final int TYPE_avc3 = 1635148595;
    public static final int TYPE_avcC = 1635148611;
    public static final int TYPE_c608 = 1664495672;
    public static final int TYPE_camm = 1667329389;
    public static final int TYPE_clli = 1668050025;
    public static final int TYPE_co64 = 1668232756;
    public static final int TYPE_colr = 1668246642;
    public static final int TYPE_ctts = 1668576371;
    public static final int TYPE_d263 = 1681012275;
    public static final int TYPE_dOps = 1682927731;
    public static final int TYPE_dac3 = 1684103987;
    public static final int TYPE_dac4 = 1684103988;
    public static final int TYPE_data = 1684108385;
    public static final int TYPE_ddts = 1684305011;
    public static final int TYPE_dec3 = 1684366131;
    public static final int TYPE_dfLa = 1684425825;
    public static final int TYPE_dmlp = 1684892784;
    public static final int TYPE_dtsc = 1685353315;
    public static final int TYPE_dtse = 1685353317;
    public static final int TYPE_dtsh = 1685353320;
    public static final int TYPE_dtsl = 1685353324;
    public static final int TYPE_dtsx = 1685353336;
    public static final int TYPE_dva1 = 1685479729;
    public static final int TYPE_dvav = 1685479798;
    public static final int TYPE_dvcC = 1685480259;
    public static final int TYPE_dvh1 = 1685481521;
    public static final int TYPE_dvhe = 1685481573;
    public static final int TYPE_dvvC = 1685485123;
    public static final int TYPE_ec_3 = 1700998451;
    public static final int TYPE_edts = 1701082227;
    public static final int TYPE_elst = 1701606260;
    public static final int TYPE_emsg = 1701671783;
    public static final int TYPE_enca = 1701733217;
    public static final int TYPE_encv = 1701733238;
    public static final int TYPE_esds = 1702061171;
    public static final int TYPE_fLaC = 1716281667;
    public static final int TYPE_frma = 1718775137;
    public static final int TYPE_ftyp = 1718909296;
    public static final int TYPE_hdlr = 1751411826;
    public static final int TYPE_hev1 = 1751479857;
    public static final int TYPE_hvc1 = 1752589105;
    public static final int TYPE_hvcC = 1752589123;
    public static final int TYPE_ilst = 1768715124;
    public static final int TYPE_keys = 1801812339;
    public static final int TYPE_lpcm = 1819304813;
    public static final int TYPE_m1v_ = 1831958048;
    public static final int TYPE_mdat = 1835295092;
    public static final int TYPE_mdcv = 1835295606;
    public static final int TYPE_mdhd = 1835296868;
    public static final int TYPE_mdia = 1835297121;
    public static final int TYPE_mean = 1835360622;
    public static final int TYPE_mehd = 1835362404;
    public static final int TYPE_meta = 1835365473;
    public static final int TYPE_mett = 1835365492;
    public static final int TYPE_mha1 = 1835557169;
    public static final int TYPE_mhaC = 1835557187;
    public static final int TYPE_mhm1 = 1835560241;
    public static final int TYPE_minf = 1835626086;
    public static final int TYPE_mlpa = 1835823201;
    public static final int TYPE_moof = 1836019558;
    public static final int TYPE_moov = 1836019574;
    public static final int TYPE_mp4a = 1836069985;
    public static final int TYPE_mp4v = 1836070006;
    public static final int TYPE_mpvd = 1836086884;
    public static final int TYPE_mvex = 1836475768;
    public static final int TYPE_mvhd = 1836476516;
    public static final int TYPE_name = 1851878757;
    public static final int TYPE_pasp = 1885434736;
    public static final int TYPE_proj = 1886547818;
    public static final int TYPE_pssh = 1886614376;
    public static final int TYPE_s263 = 1932670515;
    public static final int TYPE_saio = 1935763823;
    public static final int TYPE_saiz = 1935763834;
    public static final int TYPE_samr = 1935764850;
    public static final int TYPE_saut = 1935766900;
    public static final int TYPE_sawb = 1935767394;
    public static final int TYPE_sbgp = 1935828848;
    public static final int TYPE_schi = 1935894633;
    public static final int TYPE_schm = 1935894637;
    public static final int TYPE_senc = 1936027235;
    public static final int TYPE_sgpd = 1936158820;
    public static final int TYPE_sidx = 1936286840;
    public static final int TYPE_sinf = 1936289382;
    public static final int TYPE_smta = 1936553057;
    public static final int TYPE_sowt = 1936684916;
    public static final int TYPE_st3d = 1936995172;
    public static final int TYPE_stbl = 1937007212;
    public static final int TYPE_stco = 1937007471;
    public static final int TYPE_stpp = 1937010800;
    public static final int TYPE_stsc = 1937011555;
    public static final int TYPE_stsd = 1937011556;
    public static final int TYPE_stss = 1937011571;
    public static final int TYPE_stsz = 1937011578;
    public static final int TYPE_stts = 1937011827;
    public static final int TYPE_stz2 = 1937013298;
    public static final int TYPE_sv3d = 1937126244;
    public static final int TYPE_tenc = 1952804451;
    public static final int TYPE_tfdt = 1952867444;
    public static final int TYPE_tfhd = 1952868452;
    public static final int TYPE_tkhd = 1953196132;
    public static final int TYPE_traf = 1953653094;
    public static final int TYPE_trak = 1953653099;
    public static final int TYPE_trex = 1953654136;
    public static final int TYPE_trun = 1953658222;
    public static final int TYPE_twos = 1953984371;
    public static final int TYPE_tx3g = 1954034535;
    public static final int TYPE_udta = 1969517665;
    public static final int TYPE_udts = 1969517683;
    public static final int TYPE_ulaw = 1970037111;
    public static final int TYPE_uuid = 1970628964;
    public static final int TYPE_vp08 = 1987063864;
    public static final int TYPE_vp09 = 1987063865;
    public static final int TYPE_vpcC = 1987076931;
    public static final int TYPE_wave = 2002876005;
    public static final int TYPE_wvtt = 2004251764;
    public final int type;

    public static int parseFullAtomFlags(int i) {
        return i & ViewCompat.MEASURED_SIZE_MASK;
    }

    public static int parseFullAtomVersion(int i) {
        return (i >> 24) & 255;
    }

    public Atom(int i) {
        this.type = i;
    }

    public String toString() {
        return getAtomTypeString(this.type);
    }

    /* loaded from: classes2.dex */
    static final class LeafAtom extends Atom {
        public final ParsableByteArray data;

        public LeafAtom(int i, ParsableByteArray parsableByteArray) {
            super(i);
            this.data = parsableByteArray;
        }
    }

    /* loaded from: classes2.dex */
    static final class ContainerAtom extends Atom {
        public final List<ContainerAtom> containerChildren;
        public final long endPosition;
        public final List<LeafAtom> leafChildren;

        public ContainerAtom(int i, long j) {
            super(i);
            this.endPosition = j;
            this.leafChildren = new ArrayList();
            this.containerChildren = new ArrayList();
        }

        public void add(LeafAtom leafAtom) {
            this.leafChildren.add(leafAtom);
        }

        public void add(ContainerAtom containerAtom) {
            this.containerChildren.add(containerAtom);
        }

        public LeafAtom getLeafAtomOfType(int i) {
            int size = this.leafChildren.size();
            for (int i2 = 0; i2 < size; i2++) {
                LeafAtom leafAtom = this.leafChildren.get(i2);
                if (leafAtom.type == i) {
                    return leafAtom;
                }
            }
            return null;
        }

        public ContainerAtom getContainerAtomOfType(int i) {
            int size = this.containerChildren.size();
            for (int i2 = 0; i2 < size; i2++) {
                ContainerAtom containerAtom = this.containerChildren.get(i2);
                if (containerAtom.type == i) {
                    return containerAtom;
                }
            }
            return null;
        }

        public int getChildAtomOfTypeCount(int i) {
            int size = this.leafChildren.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                if (this.leafChildren.get(i3).type == i) {
                    i2++;
                }
            }
            int size2 = this.containerChildren.size();
            for (int i4 = 0; i4 < size2; i4++) {
                if (this.containerChildren.get(i4).type == i) {
                    i2++;
                }
            }
            return i2;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.Atom
        public String toString() {
            return getAtomTypeString(this.type) + " leaves: " + Arrays.toString(this.leafChildren.toArray()) + " containers: " + Arrays.toString(this.containerChildren.toArray());
        }
    }

    public static String getAtomTypeString(int i) {
        return "" + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }
}
