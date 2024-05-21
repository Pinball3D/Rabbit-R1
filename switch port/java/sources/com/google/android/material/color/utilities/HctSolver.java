package com.google.android.material.color.utilities;

import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public class HctSolver {
    static final double[][] SCALED_DISCOUNT_FROM_LINRGB = {new double[]{0.001200833568784504d, 0.002389694492170889d, 2.795742885861124E-4d}, new double[]{5.891086651375999E-4d, 0.0029785502573438758d, 3.270666104008398E-4d}, new double[]{1.0146692491640572E-4d, 5.364214359186694E-4d, 0.0032979401770712076d}};
    static final double[][] LINRGB_FROM_SCALED_DISCOUNT = {new double[]{1373.2198709594231d, -1100.4251190754821d, -7.278681089101213d}, new double[]{-271.815969077903d, 559.6580465940733d, -32.46047482791194d}, new double[]{1.9622899599665666d, -57.173814538844006d, 308.7233197812385d}};
    static final double[] Y_FROM_LINRGB = {0.2126d, 0.7152d, 0.0722d};
    static final double[] CRITICAL_PLANES = {0.015176349177441876d, 0.045529047532325624d, 0.07588174588720938d, 0.10623444424209313d, 0.13658714259697685d, 0.16693984095186062d, 0.19729253930674434d, 0.2276452376616281d, 0.2579979360165119d, 0.28835063437139563d, 0.3188300904430532d, 0.350925934958123d, 0.3848314933096426d, 0.42057480301049466d, 0.458183274052838d, 0.4976837250274023d, 0.5391024159806381d, 0.5824650784040898d, 0.6277969426914107d, 0.6751227633498623d, 0.7244668422128921d, 0.775853049866786d, 0.829304845476233d, 0.8848452951698498d, 0.942497089126609d, 1.0022825574869039d, 1.0642236851973577d, 1.1283421258858297d, 1.1946592148522128d, 1.2631959812511864d, 1.3339731595349034d, 1.407011200216447d, 1.4823302800086415d, 1.5599503113873272d, 1.6398909516233677d, 1.7221716113234105d, 1.8068114625156377d, 1.8938294463134073d, 1.9832442801866852d, 2.075074464868551d, 2.1693382909216234d, 2.2660538449872063d, 2.36523901573795d, 2.4669114995532007d, 2.5710888059345764d, 2.6777882626779785d, 2.7870270208169257d, 2.898822059350997d, 3.0131901897720907d, 3.1301480604002863d, 3.2497121605402226d, 3.3718988244681087d, 3.4967242352587946d, 3.624204428461639d, 3.754355295633311d, 3.887192587735158d, 4.022731918402185d, 4.160988767090289d, 4.301978482107941d, 4.445716283538092d, 4.592217266055746d, 4.741496401646282d, 4.893568542229298d, 5.048448422192488d, 5.20615066083972d, 5.3666897647573375d, 5.5300801301023865d, 5.696336044816294d, 5.865471690767354d, 6.037501145825082d, 6.212438385869475d, 6.390297286737924d, 6.571091626112461d, 6.7548350853498045d, 6.941541251256611d, 7.131223617812143d, 7.323895587840543d, 7.5195704746346665d, 7.7182615035334345d, 7.919981813454504d, 8.124744458384042d, 8.332562408825165d, 8.543448553206703d, 8.757415699253682d, 8.974476575321063d, 9.194643831691977d, 9.417930041841839d, 9.644347703669503d, 9.873909240696694d, 10.106627003236781d, 10.342513269534024d, 10.58158024687427d, 10.8238400726681d, 11.069304815507364d, 11.317986476196008d, 11.569896988756009d, 11.825048221409341d, 12.083451977536606d, 12.345119996613247d, 12.610063955123938d, 12.878295467455942d, 13.149826086772048d, 13.42466730586372d, 13.702830557985108d, 13.984327217668513d, 14.269168601521828d, 14.55736596900856d, 14.848930523210871d, 15.143873411576273d, 15.44220572664832d, 15.743938506781891d, 16.04908273684337d, 16.35764934889634d, 16.66964922287304d, 16.985093187232053d, 17.30399201960269d, 17.62635644741625d, 17.95219714852476d, 18.281524751807332d, 18.614349837764564d, 18.95068293910138d, 19.290534541298456d, 19.633915083172692d, 19.98083495742689d, 20.331304511189067d, 20.685334046541502d, 21.042933821039977d, 21.404114048223256d, 21.76888489811322d, 22.137256497705877d, 22.50923893145328d, 22.884842241736916d, 23.264076429332462d, 23.6469514538663d, 24.033477234264016d, 24.42366364919083d, 24.817520537484558d, 25.21505769858089d, 25.61628489293138d, 26.021211842414342d, 26.429848230738664d, 26.842203703840827d, 27.258287870275353d, 27.678110301598522d, 28.10168053274597d, 28.529008062403893d, 28.96010235337422d, 29.39497283293396d, 29.83362889318845d, 30.276079891419332d, 30.722335150426627d, 31.172403958865512d, 31.62629557157785d, 32.08401920991837d, 32.54558406207592d, 33.010999283389665d, 33.4802739966603d, 33.953417292456834d, 34.430438229418264d, 34.911345834551085d, 35.39614910352207d, 35.88485700094671d, 36.37747846067349d, 36.87402238606382d, 37.37449765026789d, 37.87891309649659d, 38.38727753828926d, 38.89959975977785d, 39.41588851594697d, 39.93615253289054d, 40.460400508064545d, 40.98864111053629d, 41.520882981230194d, 42.05713473317016d, 42.597404951718396d, 43.141702194811224d, 43.6900349931913d, 44.24241185063697d, 44.798841244188324d, 45.35933162437017d, 45.92389141541209d, 46.49252901546552d, 47.065252796817916d, 47.64207110610409d, 48.22299226451468d, 48.808024568002054d, 49.3971762874833d, 49.9904556690408d, 50.587870934119984d, 51.189430279724725d, 51.79514187861014d, 52.40501387947288d, 53.0190544071392d, 53.637271562750364d, 54.259673423945976d, 54.88626804504493d, 55.517063457223934d, 56.15206766869424d, 56.79128866487574d, 57.43473440856916d, 58.08241284012621d, 58.734331877617365d, 59.39049941699807d, 60.05092333227251d, 60.715611475655585d, 61.38457167773311d, 62.057811747619894d, 62.7353394731159d, 63.417162620860914d, 64.10328893648692d, 64.79372614476921d, 65.48848194977529d, 66.18756403501224d, 66.89098006357258d, 67.59873767827808d, 68.31084450182222d, 69.02730813691093d, 69.74813616640164d, 70.47333615344107d, 71.20291564160104d, 71.93688215501312d, 72.67524319850172d, 73.41800625771542d, 74.16517879925733d, 74.9167682708136d, 75.67278210128072d, 76.43322770089146d, 77.1981124613393d, 77.96744375590167d, 78.74122893956174d, 79.51947534912904d, 80.30219030335869d, 81.08938110306934d, 81.88105503125999d, 82.67721935322541d, 83.4778813166706d, 84.28304815182372d, 85.09272707154808d, 85.90692527145302d, 86.72564993000343d, 87.54890820862819d, 88.3767072518277d, 89.2090541872801d, 90.04595612594655d, 90.88742016217518d, 91.73345337380438d, 92.58406282226491d, 93.43925555268066d, 94.29903859396902d, 95.16341895893969d, 96.03240364439274d, 96.9059996312159d, 97.78421388448044d, 98.6670533535366d, 99.55452497210776d};

    static double intercept(double d, double d2, double d3) {
        return (d2 - d) / (d3 - d);
    }

    static boolean isBounded(double d) {
        return BuildConfig.SENTRY_SAMPLE_RATE <= d && d <= 100.0d;
    }

    static double sanitizeRadians(double d) {
        return (d + 25.132741228718345d) % 6.283185307179586d;
    }

    private HctSolver() {
    }

    static double trueDelinearized(double d) {
        double d2 = d / 100.0d;
        return (d2 <= 0.0031308d ? d2 * 12.92d : (Math.pow(d2, 0.4166666666666667d) * 1.055d) - 0.055d) * 255.0d;
    }

    static double chromaticAdaptation(double d) {
        double pow = Math.pow(Math.abs(d), 0.42d);
        return ((MathUtils.signum(d) * 400.0d) * pow) / (pow + 27.13d);
    }

    static double hueOf(double[] dArr) {
        double[] matrixMultiply = MathUtils.matrixMultiply(dArr, SCALED_DISCOUNT_FROM_LINRGB);
        double chromaticAdaptation = chromaticAdaptation(matrixMultiply[0]);
        double chromaticAdaptation2 = chromaticAdaptation(matrixMultiply[1]);
        double chromaticAdaptation3 = chromaticAdaptation(matrixMultiply[2]);
        return Math.atan2(((chromaticAdaptation + chromaticAdaptation2) - (chromaticAdaptation3 * 2.0d)) / 9.0d, (((chromaticAdaptation * 11.0d) + ((-12.0d) * chromaticAdaptation2)) + chromaticAdaptation3) / 11.0d);
    }

    static boolean areInCyclicOrder(double d, double d2, double d3) {
        return sanitizeRadians(d2 - d) < sanitizeRadians(d3 - d);
    }

    static double[] lerpPoint(double[] dArr, double d, double[] dArr2) {
        double d2 = dArr[0];
        double d3 = dArr[1];
        double d4 = dArr[2];
        return new double[]{d2 + ((dArr2[0] - d2) * d), d3 + ((dArr2[1] - d3) * d), d4 + ((dArr2[2] - d4) * d)};
    }

    static double[] setCoordinate(double[] dArr, double d, double[] dArr2, int i) {
        return lerpPoint(dArr, intercept(dArr[i], d, dArr2[i]), dArr2);
    }

    static double[] nthVertex(double d, int i) {
        double[] dArr = Y_FROM_LINRGB;
        double d2 = dArr[0];
        double d3 = dArr[1];
        double d4 = dArr[2];
        int i2 = i % 4;
        double d5 = BuildConfig.SENTRY_SAMPLE_RATE;
        double d6 = i2 <= 1 ? 0.0d : 100.0d;
        if (i % 2 != 0) {
            d5 = 100.0d;
        }
        if (i < 4) {
            double d7 = ((d - (d3 * d6)) - (d4 * d5)) / d2;
            return isBounded(d7) ? new double[]{d7, d6, d5} : new double[]{-1.0d, -1.0d, -1.0d};
        }
        if (i < 8) {
            double d8 = ((d - (d2 * d5)) - (d4 * d6)) / d3;
            return isBounded(d8) ? new double[]{d5, d8, d6} : new double[]{-1.0d, -1.0d, -1.0d};
        }
        double d9 = ((d - (d2 * d6)) - (d3 * d5)) / d4;
        return isBounded(d9) ? new double[]{d6, d5, d9} : new double[]{-1.0d, -1.0d, -1.0d};
    }

    static double[][] bisectToSegment(double d, double d2) {
        double[] dArr = {-1.0d, -1.0d, -1.0d};
        double[] dArr2 = dArr;
        double d3 = 0.0d;
        double d4 = 0.0d;
        boolean z = false;
        boolean z2 = true;
        for (int i = 0; i < 12; i++) {
            double[] nthVertex = nthVertex(d, i);
            if (nthVertex[0] >= BuildConfig.SENTRY_SAMPLE_RATE) {
                double hueOf = hueOf(nthVertex);
                if (!z) {
                    z = true;
                    dArr = nthVertex;
                    dArr2 = dArr;
                    d3 = hueOf;
                    d4 = d3;
                } else if (z2 || areInCyclicOrder(d3, hueOf, d4)) {
                    if (areInCyclicOrder(d3, d2, hueOf)) {
                        z2 = false;
                        dArr2 = nthVertex;
                        d4 = hueOf;
                    } else {
                        z2 = false;
                        dArr = nthVertex;
                        d3 = hueOf;
                    }
                }
            }
        }
        return new double[][]{dArr, dArr2};
    }

    static double[] midpoint(double[] dArr, double[] dArr2) {
        return new double[]{(dArr[0] + dArr2[0]) / 2.0d, (dArr[1] + dArr2[1]) / 2.0d, (dArr[2] + dArr2[2]) / 2.0d};
    }

    static int criticalPlaneBelow(double d) {
        return (int) Math.floor(d - 0.5d);
    }

    static int criticalPlaneAbove(double d) {
        return (int) Math.ceil(d - 0.5d);
    }

    static double[] bisectToLimit(double d, double d2) {
        int criticalPlaneAbove;
        int criticalPlaneBelow;
        double[][] bisectToSegment = bisectToSegment(d, d2);
        double[] dArr = bisectToSegment[0];
        double hueOf = hueOf(dArr);
        double[] dArr2 = bisectToSegment[1];
        for (int i = 0; i < 3; i++) {
            double d3 = dArr[i];
            double d4 = dArr2[i];
            if (d3 != d4) {
                if (d3 < d4) {
                    criticalPlaneAbove = criticalPlaneBelow(trueDelinearized(d3));
                    criticalPlaneBelow = criticalPlaneAbove(trueDelinearized(dArr2[i]));
                } else {
                    criticalPlaneAbove = criticalPlaneAbove(trueDelinearized(d3));
                    criticalPlaneBelow = criticalPlaneBelow(trueDelinearized(dArr2[i]));
                }
                int i2 = criticalPlaneAbove;
                int i3 = criticalPlaneBelow;
                for (int i4 = 0; i4 < 8 && Math.abs(i3 - i2) > 1; i4++) {
                    int floor = (int) Math.floor((i2 + i3) / 2.0d);
                    double[] coordinate = setCoordinate(dArr, CRITICAL_PLANES[floor], dArr2, i);
                    double hueOf2 = hueOf(coordinate);
                    if (areInCyclicOrder(hueOf, d2, hueOf2)) {
                        dArr2 = coordinate;
                        i3 = floor;
                    } else {
                        dArr = coordinate;
                        hueOf = hueOf2;
                        i2 = floor;
                    }
                }
            }
        }
        return midpoint(dArr, dArr2);
    }

    static double inverseChromaticAdaptation(double d) {
        double abs = Math.abs(d);
        return MathUtils.signum(d) * Math.pow(Math.max(BuildConfig.SENTRY_SAMPLE_RATE, (27.13d * abs) / (400.0d - abs)), 2.380952380952381d);
    }

    static int findResultByJ(double d, double d2, double d3) {
        double sqrt = Math.sqrt(d3) * 11.0d;
        ViewingConditions viewingConditions = ViewingConditions.DEFAULT;
        double pow = 1.0d / Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d);
        double cos = (Math.cos(d + 2.0d) + 3.8d) * 0.25d * 3846.153846153846d * viewingConditions.getNc() * viewingConditions.getNcb();
        double sin = Math.sin(d);
        double cos2 = Math.cos(d);
        int i = 0;
        while (i < 5) {
            double d4 = sqrt / 100.0d;
            double d5 = pow;
            double pow2 = Math.pow(((d2 == BuildConfig.SENTRY_SAMPLE_RATE || sqrt == BuildConfig.SENTRY_SAMPLE_RATE) ? 0.0d : d2 / Math.sqrt(d4)) * pow, 1.1111111111111112d);
            double d6 = sqrt;
            double aw = (viewingConditions.getAw() * Math.pow(d4, (1.0d / viewingConditions.getC()) / viewingConditions.getZ())) / viewingConditions.getNbb();
            double d7 = (((0.305d + aw) * 23.0d) * pow2) / (((23.0d * cos) + ((pow2 * 11.0d) * cos2)) + ((pow2 * 108.0d) * sin));
            double d8 = d7 * cos2;
            double d9 = d7 * sin;
            double d10 = aw * 460.0d;
            double[] matrixMultiply = MathUtils.matrixMultiply(new double[]{inverseChromaticAdaptation((((451.0d * d8) + d10) + (288.0d * d9)) / 1403.0d), inverseChromaticAdaptation(((d10 - (891.0d * d8)) - (261.0d * d9)) / 1403.0d), inverseChromaticAdaptation(((d10 - (d8 * 220.0d)) - (d9 * 6300.0d)) / 1403.0d)}, LINRGB_FROM_SCALED_DISCOUNT);
            double d11 = matrixMultiply[0];
            if (d11 < BuildConfig.SENTRY_SAMPLE_RATE) {
                break;
            }
            double d12 = matrixMultiply[1];
            if (d12 < BuildConfig.SENTRY_SAMPLE_RATE) {
                break;
            }
            double d13 = matrixMultiply[2];
            if (d13 < BuildConfig.SENTRY_SAMPLE_RATE) {
                break;
            }
            double[] dArr = Y_FROM_LINRGB;
            double d14 = (dArr[0] * d11) + (dArr[1] * d12) + (dArr[2] * d13);
            if (d14 <= BuildConfig.SENTRY_SAMPLE_RATE) {
                return 0;
            }
            if (i != 4) {
                double d15 = d14 - d3;
                if (Math.abs(d15) >= 0.002d) {
                    sqrt = d6 - ((d15 * d6) / (d14 * 2.0d));
                    i++;
                    pow = d5;
                }
            }
            if (matrixMultiply[0] <= 100.01d && matrixMultiply[1] <= 100.01d && matrixMultiply[2] <= 100.01d) {
                return ColorUtils.argbFromLinrgb(matrixMultiply);
            }
        }
        return 0;
    }

    public static int solveToInt(double d, double d2, double d3) {
        if (d2 < 1.0E-4d || d3 < 1.0E-4d || d3 > 99.9999d) {
            return ColorUtils.argbFromLstar(d3);
        }
        double sanitizeDegreesDouble = (MathUtils.sanitizeDegreesDouble(d) / 180.0d) * 3.141592653589793d;
        double yFromLstar = ColorUtils.yFromLstar(d3);
        int findResultByJ = findResultByJ(sanitizeDegreesDouble, d2, yFromLstar);
        return findResultByJ != 0 ? findResultByJ : ColorUtils.argbFromLinrgb(bisectToLimit(yFromLstar, sanitizeDegreesDouble));
    }

    public static Cam16 solveToCam(double d, double d2, double d3) {
        return Cam16.fromInt(solveToInt(d, d2, d3));
    }
}
