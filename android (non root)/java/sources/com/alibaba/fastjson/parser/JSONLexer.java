package com.alibaba.fastjson.parser;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.text.Typography;
import okio.internal.BufferKt;
import tech.rabbit.r1launcher.BuildConfig;
import tech.rabbit.r1systemupdater.model.UpdateEngineErrorCodes;

/* loaded from: classes2.dex */
public final class JSONLexer {
    public static final char[] CA;
    public static final int END = 4;
    public static final char EOI = 26;
    static final int[] IA;
    public static final int NOT_MATCH = -1;
    public static final int NOT_MATCH_NAME = -2;
    public static final int UNKNOWN = 0;
    private static boolean V6 = false;
    public static final int VALUE = 3;
    protected static final int[] digits;
    public static final boolean[] firstIdentifierFlags;
    public static final boolean[] identifierFlags;
    private static final ThreadLocal<char[]> sbufLocal;
    protected int bp;
    public Calendar calendar;
    protected char ch;
    public boolean disableCircularReferenceDetect;
    protected int eofPos;
    protected boolean exp;
    public int features;
    protected long fieldHash;
    protected boolean hasSpecial;
    protected boolean isDouble;
    protected final int len;
    public Locale locale;
    public int matchStat;
    protected int np;
    protected int pos;
    protected char[] sbuf;
    protected int sp;
    protected String stringDefaultValue;
    protected final String text;
    public TimeZone timeZone;
    protected int token;

    static boolean checkDate(char c, char c2, char c3, char c4, char c5, char c6, int i, int i2) {
        if (c >= '1' && c <= '3' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            if (c5 == '0') {
                if (c6 < '1' || c6 > '9') {
                    return false;
                }
            } else if (c5 != '1' || (c6 != '0' && c6 != '1' && c6 != '2')) {
                return false;
            }
            if (i == 48) {
                return i2 >= 49 && i2 <= 57;
            }
            if (i != 49 && i != 50) {
                return i == 51 && (i2 == 48 || i2 == 49);
            }
            if (i2 >= 48 && i2 <= 57) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x001d, code lost:
    
        if (r5 <= '4') goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean checkTime(char r4, char r5, char r6, char r7, char r8, char r9) {
        /*
            r0 = 57
            r1 = 0
            r2 = 48
            if (r4 != r2) goto Lc
            if (r5 < r2) goto Lb
            if (r5 <= r0) goto L20
        Lb:
            return r1
        Lc:
            r3 = 49
            if (r4 != r3) goto L15
            if (r5 < r2) goto L14
            if (r5 <= r0) goto L20
        L14:
            return r1
        L15:
            r3 = 50
            if (r4 != r3) goto L42
            if (r5 < r2) goto L42
            r4 = 52
            if (r5 <= r4) goto L20
            goto L42
        L20:
            r4 = 53
            r5 = 54
            if (r6 < r2) goto L2d
            if (r6 > r4) goto L2d
            if (r7 < r2) goto L2c
            if (r7 <= r0) goto L32
        L2c:
            return r1
        L2d:
            if (r6 != r5) goto L42
            if (r7 == r2) goto L32
            return r1
        L32:
            if (r8 < r2) goto L3b
            if (r8 > r4) goto L3b
            if (r9 < r2) goto L3a
            if (r9 <= r0) goto L40
        L3a:
            return r1
        L3b:
            if (r8 != r5) goto L42
            if (r9 == r2) goto L40
            return r1
        L40:
            r4 = 1
            return r4
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.checkTime(char, char, char, char, char, char):boolean");
    }

    public final int token() {
        return this.token;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030 A[LOOP:0: B:8:0x002c->B:10:0x0030, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0040 A[LOOP:1: B:13:0x003c->B:15:0x0040, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0050 A[LOOP:2: B:18:0x004c->B:20:0x0050, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006f A[LOOP:3: B:23:0x006d->B:24:0x006f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a6 A[EDGE_INSN: B:42:0x00a6->B:43:0x00a6 BREAK  A[LOOP:4: B:27:0x0085->B:33:0x00a2], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00cc A[SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.<clinit>():void");
    }

    public JSONLexer(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONLexer(char[] cArr, int i) {
        this(cArr, i, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONLexer(char[] cArr, int i, int i2) {
        this(new String(cArr, 0, i), i2);
    }

    public JSONLexer(String str, int i) {
        this.features = JSON.DEFAULT_PARSER_FEATURE;
        this.exp = false;
        this.isDouble = false;
        this.timeZone = JSON.defaultTimeZone;
        this.locale = JSON.defaultLocale;
        this.calendar = null;
        this.matchStat = 0;
        char[] cArr = sbufLocal.get();
        this.sbuf = cArr;
        if (cArr == null) {
            this.sbuf = new char[512];
        }
        this.features = i;
        this.text = str;
        int length = str.length();
        this.len = length;
        int i2 = (-1) + 1;
        this.bp = i2;
        char charAt = i2 >= length ? EOI : str.charAt(i2);
        this.ch = charAt;
        if (charAt == 65279) {
            next();
        }
        this.stringDefaultValue = (Feature.InitStringFieldAsEmpty.mask & i) != 0 ? "" : null;
        this.disableCircularReferenceDetect = (Feature.DisableCircularReferenceDetect.mask & i) != 0;
    }

    public void close() {
        char[] cArr = this.sbuf;
        if (cArr.length <= 8196) {
            sbufLocal.set(cArr);
        }
        this.sbuf = null;
    }

    public char next() {
        int i = this.bp + 1;
        this.bp = i;
        char charAt = i >= this.len ? EOI : this.text.charAt(i);
        this.ch = charAt;
        return charAt;
    }

    public final void config(Feature feature, boolean z) {
        if (z) {
            this.features |= feature.mask;
        } else {
            this.features &= ~feature.mask;
        }
        if (feature == Feature.InitStringFieldAsEmpty) {
            this.stringDefaultValue = z ? "" : null;
        }
        this.disableCircularReferenceDetect = (this.features & Feature.DisableCircularReferenceDetect.mask) != 0;
    }

    public final boolean isEnabled(Feature feature) {
        return (this.features & feature.mask) != 0;
    }

    public final void nextTokenWithChar(char c) {
        this.sp = 0;
        while (true) {
            char c2 = this.ch;
            if (c2 == c) {
                int i = this.bp + 1;
                this.bp = i;
                this.ch = i >= this.len ? EOI : this.text.charAt(i);
                nextToken();
                return;
            }
            if (c2 == ' ' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == '\f' || c2 == '\b') {
                next();
            } else {
                throw new JSONException("not match " + c + " - " + this.ch);
            }
        }
    }

    public final String numberString() {
        char charAt = this.text.charAt((this.np + this.sp) - 1);
        int i = this.sp;
        if (charAt == 'L' || charAt == 'S' || charAt == 'B' || charAt == 'F' || charAt == 'D') {
            i--;
        }
        return subString(this.np, i);
    }

    protected char charAt(int i) {
        return i >= this.len ? EOI : this.text.charAt(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        scanNumber();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a1, code lost:
    
        if (r16.token == 20) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a3, code lost:
    
        r16.token = 20;
        r1 = r16.eofPos;
        r16.bp = r1;
        r16.pos = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ab, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b3, code lost:
    
        throw new com.alibaba.fastjson.JSONException("EOF error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00fe, code lost:
    
        scanIdent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0101, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void nextToken() {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.nextToken():void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0029. Please report as an issue. */
    public final void nextToken(int i) {
        this.sp = 0;
        while (true) {
            if (i != 2) {
                char c = EOI;
                if (i == 4) {
                    char c2 = this.ch;
                    if (c2 == '\"') {
                        this.pos = this.bp;
                        scanString();
                        return;
                    }
                    if (c2 >= '0' && c2 <= '9') {
                        this.pos = this.bp;
                        scanNumber();
                        return;
                    } else if (c2 == '{') {
                        this.token = 12;
                        int i2 = this.bp + 1;
                        this.bp = i2;
                        if (i2 < this.len) {
                            c = this.text.charAt(i2);
                        }
                        this.ch = c;
                        return;
                    }
                } else if (i == 12) {
                    char c3 = this.ch;
                    if (c3 == '{') {
                        this.token = 12;
                        int i3 = this.bp + 1;
                        this.bp = i3;
                        if (i3 < this.len) {
                            c = this.text.charAt(i3);
                        }
                        this.ch = c;
                        return;
                    }
                    if (c3 == '[') {
                        this.token = 14;
                        int i4 = this.bp + 1;
                        this.bp = i4;
                        if (i4 < this.len) {
                            c = this.text.charAt(i4);
                        }
                        this.ch = c;
                        return;
                    }
                } else {
                    if (i == 18) {
                        nextIdent();
                        return;
                    }
                    if (i != 20) {
                        switch (i) {
                            case 14:
                                char c4 = this.ch;
                                if (c4 == '[') {
                                    this.token = 14;
                                    next();
                                    return;
                                } else if (c4 == '{') {
                                    this.token = 12;
                                    next();
                                    return;
                                }
                                break;
                            case 15:
                                if (this.ch == ']') {
                                    this.token = 15;
                                    next();
                                    return;
                                }
                                break;
                            case 16:
                                char c5 = this.ch;
                                if (c5 == ',') {
                                    this.token = 16;
                                    int i5 = this.bp + 1;
                                    this.bp = i5;
                                    if (i5 < this.len) {
                                        c = this.text.charAt(i5);
                                    }
                                    this.ch = c;
                                    return;
                                }
                                if (c5 == '}') {
                                    this.token = 13;
                                    int i6 = this.bp + 1;
                                    this.bp = i6;
                                    if (i6 < this.len) {
                                        c = this.text.charAt(i6);
                                    }
                                    this.ch = c;
                                    return;
                                }
                                if (c5 == ']') {
                                    this.token = 15;
                                    int i7 = this.bp + 1;
                                    this.bp = i7;
                                    if (i7 < this.len) {
                                        c = this.text.charAt(i7);
                                    }
                                    this.ch = c;
                                    return;
                                }
                                if (c5 == 26) {
                                    this.token = 20;
                                    return;
                                }
                                break;
                        }
                    }
                    if (this.ch == 26) {
                        this.token = 20;
                        return;
                    }
                }
            } else {
                char c6 = this.ch;
                if (c6 >= '0' && c6 <= '9') {
                    this.pos = this.bp;
                    scanNumber();
                    return;
                }
                if (c6 == '\"') {
                    this.pos = this.bp;
                    scanString();
                    return;
                } else if (c6 == '[') {
                    this.token = 14;
                    next();
                    return;
                } else if (c6 == '{') {
                    this.token = 12;
                    next();
                    return;
                }
            }
            char c7 = this.ch;
            if (c7 == ' ' || c7 == '\n' || c7 == '\r' || c7 == '\t' || c7 == '\f' || c7 == '\b') {
                next();
            } else {
                nextToken();
                return;
            }
        }
    }

    public final void nextIdent() {
        char c;
        while (true) {
            c = this.ch;
            if (c > ' ' || !(c == ' ' || c == '\n' || c == '\r' || c == '\t' || c == '\f' || c == '\b')) {
                break;
            } else {
                next();
            }
        }
        if (c == '_' || Character.isLetter(c)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    public final Number integerValue() throws NumberFormatException {
        char c;
        boolean z;
        long j;
        long j2;
        int i = this.np;
        int i2 = this.sp + i;
        int i3 = i2 - 1;
        char charAt = i3 >= this.len ? EOI : this.text.charAt(i3);
        if (charAt == 'B') {
            i2--;
            c = 'B';
        } else if (charAt == 'L') {
            i2--;
            c = 'L';
        } else if (charAt != 'S') {
            c = ' ';
        } else {
            i2--;
            c = 'S';
        }
        int i4 = this.np;
        if (i4 < this.len && this.text.charAt(i4) == '-') {
            i++;
            j = Long.MIN_VALUE;
            z = true;
        } else {
            z = false;
            j = -9223372036854775807L;
        }
        if (i < i2) {
            j2 = -((i >= this.len ? EOI : this.text.charAt(i)) - '0');
            i++;
        } else {
            j2 = 0;
        }
        while (i < i2) {
            int i5 = i + 1;
            int charAt2 = (i >= this.len ? EOI : this.text.charAt(i)) - '0';
            if (j2 < BufferKt.OVERFLOW_ZONE) {
                return new BigInteger(numberString());
            }
            long j3 = j2 * 10;
            long j4 = charAt2;
            if (j3 < j + j4) {
                return new BigInteger(numberString());
            }
            j2 = j3 - j4;
            i = i5;
        }
        if (!z) {
            long j5 = -j2;
            if (j5 > 2147483647L || c == 'L') {
                return Long.valueOf(j5);
            }
            if (c == 'S') {
                return Short.valueOf((short) j5);
            }
            if (c == 'B') {
                return Byte.valueOf((byte) j5);
            }
            return Integer.valueOf((int) j5);
        }
        if (i <= this.np + 1) {
            throw new NumberFormatException(numberString());
        }
        if (j2 < -2147483648L || c == 'L') {
            return Long.valueOf(j2);
        }
        if (c == 'S') {
            return Short.valueOf((short) j2);
        }
        if (c == 'B') {
            return Byte.valueOf((byte) j2);
        }
        return Integer.valueOf((int) j2);
    }

    public final String scanSymbol(SymbolTable symbolTable) {
        char c;
        while (true) {
            c = this.ch;
            if (c != ' ' && c != '\n' && c != '\r' && c != '\t' && c != '\f' && c != '\b') {
                break;
            }
            next();
        }
        if (c == '\"') {
            return scanSymbol(symbolTable, Typography.quote);
        }
        if (c == '\'') {
            return scanSymbol(symbolTable, '\'');
        }
        if (c == '}') {
            next();
            this.token = 13;
            return null;
        }
        if (c == ',') {
            next();
            this.token = 16;
            return null;
        }
        if (c != 26) {
            return scanSymbolUnQuoted(symbolTable);
        }
        this.token = 20;
        return null;
    }

    public String scanSymbol(SymbolTable symbolTable, char c) {
        String readString;
        int i = this.bp + 1;
        int indexOf = this.text.indexOf(c, i);
        if (indexOf == -1) {
            throw new JSONException("unclosed str, " + info());
        }
        int i2 = indexOf - i;
        char[] sub_chars = sub_chars(this.bp + 1, i2);
        boolean z = false;
        while (i2 > 0 && sub_chars[i2 - 1] == '\\') {
            int i3 = 1;
            for (int i4 = i2 - 2; i4 >= 0 && sub_chars[i4] == '\\'; i4--) {
                i3++;
            }
            if (i3 % 2 == 0) {
                break;
            }
            int indexOf2 = this.text.indexOf(c, indexOf + 1);
            int i5 = (indexOf2 - indexOf) + i2;
            if (i5 >= sub_chars.length) {
                int length = (sub_chars.length * 3) / 2;
                if (length < i5) {
                    length = i5;
                }
                char[] cArr = new char[length];
                System.arraycopy(sub_chars, 0, cArr, 0, sub_chars.length);
                sub_chars = cArr;
            }
            this.text.getChars(indexOf, indexOf2, sub_chars, i2);
            indexOf = indexOf2;
            i2 = i5;
            z = true;
        }
        if (z) {
            readString = readString(sub_chars, i2);
        } else {
            int i6 = 0;
            for (int i7 = 0; i7 < i2; i7++) {
                char c2 = sub_chars[i7];
                i6 = (i6 * 31) + c2;
                if (c2 == '\\') {
                    z = true;
                }
            }
            if (z) {
                readString = readString(sub_chars, i2);
            } else {
                readString = i2 < 20 ? symbolTable.addSymbol(sub_chars, 0, i2, i6) : new String(sub_chars, 0, i2);
            }
        }
        int i8 = indexOf + 1;
        this.bp = i8;
        this.ch = i8 >= this.len ? EOI : this.text.charAt(i8);
        return readString;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x0040. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0043. Please report as an issue. */
    private static String readString(char[] cArr, int i) {
        int i2;
        int i3;
        char[] cArr2 = new char[i];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i) {
            char c = cArr[i4];
            if (c != '\\') {
                cArr2[i5] = c;
                i5++;
            } else {
                int i6 = i4 + 1;
                char c2 = cArr[i6];
                if (c2 == '\"') {
                    i2 = i5 + 1;
                    cArr2[i5] = Typography.quote;
                } else if (c2 != '\'') {
                    if (c2 != 'F') {
                        if (c2 == '\\') {
                            i2 = i5 + 1;
                            cArr2[i5] = '\\';
                        } else if (c2 == 'b') {
                            i2 = i5 + 1;
                            cArr2[i5] = '\b';
                        } else if (c2 != 'f') {
                            if (c2 == 'n') {
                                i2 = i5 + 1;
                                cArr2[i5] = '\n';
                            } else if (c2 != 'r') {
                                if (c2 != 'x') {
                                    switch (c2) {
                                        case '/':
                                            i2 = i5 + 1;
                                            cArr2[i5] = '/';
                                            break;
                                        case '0':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 0;
                                            break;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                                            i2 = i5 + 1;
                                            cArr2[i5] = 1;
                                            break;
                                        case '2':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 2;
                                            break;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                                            i2 = i5 + 1;
                                            cArr2[i5] = 3;
                                            break;
                                        case UpdateEngineErrorCodes.UPDATED_BUT_NOT_ACTIVE /* 52 */:
                                            i2 = i5 + 1;
                                            cArr2[i5] = 4;
                                            break;
                                        case '5':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 5;
                                            break;
                                        case '6':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 6;
                                            break;
                                        case '7':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 7;
                                            break;
                                        default:
                                            switch (c2) {
                                                case 't':
                                                    i2 = i5 + 1;
                                                    cArr2[i5] = '\t';
                                                    break;
                                                case 'u':
                                                    i3 = i5 + 1;
                                                    i4 += 5;
                                                    cArr2[i5] = (char) Integer.parseInt(new String(new char[]{cArr[i4 + 2], cArr[i4 + 3], cArr[i4 + 4], cArr[i4]}), 16);
                                                    break;
                                                case 'v':
                                                    i2 = i5 + 1;
                                                    cArr2[i5] = 11;
                                                    break;
                                                default:
                                                    throw new JSONException("unclosed.str.lit");
                                            }
                                    }
                                } else {
                                    i3 = i5 + 1;
                                    int[] iArr = digits;
                                    int i7 = iArr[cArr[i4 + 2]] * 16;
                                    i4 += 3;
                                    cArr2[i5] = (char) (i7 + iArr[cArr[i4]]);
                                }
                                i5 = i3;
                            } else {
                                i2 = i5 + 1;
                                cArr2[i5] = '\r';
                            }
                        }
                    }
                    i2 = i5 + 1;
                    cArr2[i5] = '\f';
                } else {
                    i2 = i5 + 1;
                    cArr2[i5] = '\'';
                }
                i5 = i2;
                i4 = i6;
            }
            i4++;
        }
        return new String(cArr2, 0, i5);
    }

    public String info() {
        StringBuilder append = new StringBuilder("pos ").append(this.bp).append(", json : ");
        int i = this.len;
        String str = this.text;
        if (i >= 65536) {
            str = str.substring(0, 65536);
        }
        return append.append(str).toString();
    }

    protected void skipComment() {
        next();
        char c = this.ch;
        if (c != '/') {
            if (c == '*') {
                next();
                while (true) {
                    char c2 = this.ch;
                    if (c2 == 26) {
                        return;
                    }
                    if (c2 == '*') {
                        next();
                        if (this.ch == '/') {
                            next();
                            return;
                        }
                    } else {
                        next();
                    }
                }
            } else {
                throw new JSONException("invalid comment");
            }
        }
        do {
            next();
        } while (this.ch != '\n');
        next();
    }

    public final String scanSymbolUnQuoted(SymbolTable symbolTable) {
        int i = this.ch;
        boolean[] zArr = firstIdentifierFlags;
        if (i < zArr.length && !zArr[i]) {
            throw new JSONException("illegal identifier : " + this.ch + ", " + info());
        }
        this.np = this.bp;
        this.sp = 1;
        while (true) {
            char next = next();
            boolean[] zArr2 = identifierFlags;
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            i = (i * 31) + next;
            this.sp++;
        }
        this.ch = charAt(this.bp);
        this.token = 18;
        if (this.sp == 4 && this.text.startsWith("null", this.np)) {
            return null;
        }
        return symbolTable.addSymbol(this.text, this.np, this.sp, i);
    }

    public final void scanString() {
        char c = this.ch;
        int i = this.bp + 1;
        int indexOf = this.text.indexOf(c, i);
        if (indexOf == -1) {
            throw new JSONException("unclosed str, " + info());
        }
        int i2 = indexOf - i;
        char[] sub_chars = sub_chars(this.bp + 1, i2);
        boolean z = false;
        while (i2 > 0 && sub_chars[i2 - 1] == '\\') {
            int i3 = 1;
            for (int i4 = i2 - 2; i4 >= 0 && sub_chars[i4] == '\\'; i4--) {
                i3++;
            }
            if (i3 % 2 == 0) {
                break;
            }
            int indexOf2 = this.text.indexOf(c, indexOf + 1);
            int i5 = (indexOf2 - indexOf) + i2;
            if (i5 >= sub_chars.length) {
                int length = (sub_chars.length * 3) / 2;
                if (length < i5) {
                    length = i5;
                }
                char[] cArr = new char[length];
                System.arraycopy(sub_chars, 0, cArr, 0, sub_chars.length);
                sub_chars = cArr;
            }
            this.text.getChars(indexOf, indexOf2, sub_chars, i2);
            indexOf = indexOf2;
            i2 = i5;
            z = true;
        }
        if (!z) {
            for (int i6 = 0; i6 < i2; i6++) {
                if (sub_chars[i6] == '\\') {
                    z = true;
                }
            }
        }
        this.sbuf = sub_chars;
        this.sp = i2;
        this.np = this.bp;
        this.hasSpecial = z;
        int i7 = indexOf + 1;
        this.bp = i7;
        this.ch = i7 >= this.len ? EOI : this.text.charAt(i7);
        this.token = 4;
    }

    public String scanStringValue(char c) {
        String str;
        int i = this.bp + 1;
        int indexOf = this.text.indexOf(c, i);
        if (indexOf == -1) {
            throw new JSONException("unclosed str, " + info());
        }
        if (V6) {
            str = this.text.substring(i, indexOf);
        } else {
            int i2 = indexOf - i;
            str = new String(sub_chars(this.bp + 1, i2), 0, i2);
        }
        if (str.indexOf(92) != -1) {
            while (true) {
                int i3 = 0;
                for (int i4 = indexOf - 1; i4 >= 0 && this.text.charAt(i4) == '\\'; i4--) {
                    i3++;
                }
                if (i3 % 2 == 0) {
                    break;
                }
                indexOf = this.text.indexOf(c, indexOf + 1);
            }
            int i5 = indexOf - i;
            str = readString(sub_chars(this.bp + 1, i5), i5);
        }
        int i6 = indexOf + 1;
        this.bp = i6;
        this.ch = i6 >= this.len ? EOI : this.text.charAt(i6);
        return str;
    }

    public final int intValue() {
        int i;
        boolean z;
        int i2 = this.np;
        int i3 = this.sp + i2;
        int i4 = 0;
        if (i2 < this.len && this.text.charAt(i2) == '-') {
            i2++;
            i = Integer.MIN_VALUE;
            z = true;
        } else {
            i = -2147483647;
            z = false;
        }
        if (i2 < i3) {
            i4 = -((i2 >= this.len ? (char) 26 : this.text.charAt(i2)) - '0');
            i2++;
        }
        while (i2 < i3) {
            int i5 = i2 + 1;
            char charAt = i2 >= this.len ? (char) 26 : this.text.charAt(i2);
            if (charAt == 'L' || charAt == 'S' || charAt == 'B') {
                i2 = i5;
                break;
            }
            int i6 = charAt - '0';
            if (i4 < -214748364) {
                throw new NumberFormatException(numberString());
            }
            int i7 = i4 * 10;
            if (i7 < i + i6) {
                throw new NumberFormatException(numberString());
            }
            i4 = i7 - i6;
            i2 = i5;
        }
        if (!z) {
            return -i4;
        }
        if (i2 > this.np + 1) {
            return i4;
        }
        throw new NumberFormatException(numberString());
    }

    public byte[] bytesValue() {
        return decodeFast(this.text, this.np + 1, this.sp);
    }

    private void scanIdent() {
        this.np = this.bp - 1;
        this.hasSpecial = false;
        do {
            this.sp++;
            next();
        } while (Character.isLetterOrDigit(this.ch));
        String stringVal = stringVal();
        if (stringVal.equals("null")) {
            this.token = 8;
            return;
        }
        if (stringVal.equals("true")) {
            this.token = 6;
            return;
        }
        if (stringVal.equals("false")) {
            this.token = 7;
            return;
        }
        if (stringVal.equals("new")) {
            this.token = 9;
            return;
        }
        if (stringVal.equals("undefined")) {
            this.token = 23;
            return;
        }
        if (stringVal.equals("Set")) {
            this.token = 21;
        } else if (stringVal.equals("TreeSet")) {
            this.token = 22;
        } else {
            this.token = 18;
        }
    }

    public final String stringVal() {
        if (this.hasSpecial) {
            return readString(this.sbuf, this.sp);
        }
        return subString(this.np + 1, this.sp);
    }

    private final String subString(int i, int i2) {
        char[] cArr = this.sbuf;
        if (i2 < cArr.length) {
            this.text.getChars(i, i + i2, cArr, 0);
            return new String(this.sbuf, 0, i2);
        }
        char[] cArr2 = new char[i2];
        this.text.getChars(i, i2 + i, cArr2, 0);
        return new String(cArr2);
    }

    final char[] sub_chars(int i, int i2) {
        char[] cArr = this.sbuf;
        if (i2 < cArr.length) {
            this.text.getChars(i, i2 + i, cArr, 0);
            return this.sbuf;
        }
        char[] cArr2 = new char[i2];
        this.sbuf = cArr2;
        this.text.getChars(i, i2 + i, cArr2, 0);
        return cArr2;
    }

    public final boolean isBlankInput() {
        int i = 0;
        while (true) {
            char charAt = charAt(i);
            if (charAt == 26) {
                return true;
            }
            if (charAt > ' ' || !(charAt == ' ' || charAt == '\n' || charAt == '\r' || charAt == '\t' || charAt == '\f' || charAt == '\b')) {
                break;
            }
            i++;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void skipWhitespace() {
        while (true) {
            char c = this.ch;
            if (c > '/') {
                return;
            }
            if (c == ' ' || c == '\r' || c == '\n' || c == '\t' || c == '\f' || c == '\b') {
                next();
            } else if (c != '/') {
                return;
            } else {
                skipComment();
            }
        }
    }

    public final void scanNumber() {
        char c;
        char c2;
        int i = this.bp;
        this.np = i;
        this.exp = false;
        if (this.ch == '-') {
            this.sp++;
            int i2 = i + 1;
            this.bp = i2;
            this.ch = i2 >= this.len ? (char) 26 : this.text.charAt(i2);
        }
        while (true) {
            c = this.ch;
            if (c < '0' || c > '9') {
                break;
            }
            this.sp++;
            int i3 = this.bp + 1;
            this.bp = i3;
            this.ch = i3 >= this.len ? (char) 26 : this.text.charAt(i3);
        }
        this.isDouble = false;
        if (c == '.') {
            this.sp++;
            int i4 = this.bp + 1;
            this.bp = i4;
            this.ch = i4 >= this.len ? (char) 26 : this.text.charAt(i4);
            this.isDouble = true;
            while (true) {
                char c3 = this.ch;
                if (c3 < '0' || c3 > '9') {
                    break;
                }
                this.sp++;
                int i5 = this.bp + 1;
                this.bp = i5;
                this.ch = i5 >= this.len ? (char) 26 : this.text.charAt(i5);
            }
        }
        char c4 = this.ch;
        if (c4 == 'L') {
            this.sp++;
            next();
        } else if (c4 == 'S') {
            this.sp++;
            next();
        } else if (c4 == 'B') {
            this.sp++;
            next();
        } else if (c4 == 'F') {
            this.sp++;
            next();
            this.isDouble = true;
        } else if (c4 == 'D') {
            this.sp++;
            next();
            this.isDouble = true;
        } else if (c4 == 'e' || c4 == 'E') {
            this.sp++;
            int i6 = this.bp + 1;
            this.bp = i6;
            char charAt = i6 >= this.len ? (char) 26 : this.text.charAt(i6);
            this.ch = charAt;
            if (charAt == '+' || charAt == '-') {
                this.sp++;
                int i7 = this.bp + 1;
                this.bp = i7;
                this.ch = i7 >= this.len ? (char) 26 : this.text.charAt(i7);
            }
            while (true) {
                c2 = this.ch;
                if (c2 < '0' || c2 > '9') {
                    break;
                }
                this.sp++;
                int i8 = this.bp + 1;
                this.bp = i8;
                this.ch = i8 >= this.len ? (char) 26 : this.text.charAt(i8);
            }
            if (c2 == 'D' || c2 == 'F') {
                this.sp++;
                next();
            }
            this.exp = true;
            this.isDouble = true;
        }
        if (this.isDouble) {
            this.token = 3;
        } else {
            this.token = 2;
        }
    }

    public boolean scanBoolean() {
        int i;
        boolean z = false;
        if (this.text.startsWith("false", this.bp)) {
            i = 5;
        } else if (this.text.startsWith("true", this.bp)) {
            i = 4;
            z = true;
        } else {
            char c = this.ch;
            if (c == '1') {
                i = 1;
                z = true;
            } else {
                if (c != '0') {
                    this.matchStat = -1;
                    return false;
                }
                i = 1;
            }
        }
        int i2 = this.bp + i;
        this.bp = i2;
        this.ch = charAt(i2);
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x026d A[Catch: NumberFormatException -> 0x02b3, TryCatch #0 {NumberFormatException -> 0x02b3, blocks: (B:101:0x025b, B:106:0x0269, B:108:0x026d, B:112:0x027e, B:113:0x0275, B:115:0x027c, B:121:0x0285, B:124:0x028b, B:126:0x0290, B:129:0x0296, B:131:0x0266, B:132:0x029b, B:134:0x02a5, B:136:0x02aa), top: B:98:0x0257 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0285 A[Catch: NumberFormatException -> 0x02b3, TryCatch #0 {NumberFormatException -> 0x02b3, blocks: (B:101:0x025b, B:106:0x0269, B:108:0x026d, B:112:0x027e, B:113:0x0275, B:115:0x027c, B:121:0x0285, B:124:0x028b, B:126:0x0290, B:129:0x0296, B:131:0x0266, B:132:0x029b, B:134:0x02a5, B:136:0x02aa), top: B:98:0x0257 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0290 A[Catch: NumberFormatException -> 0x02b3, TryCatch #0 {NumberFormatException -> 0x02b3, blocks: (B:101:0x025b, B:106:0x0269, B:108:0x026d, B:112:0x027e, B:113:0x0275, B:115:0x027c, B:121:0x0285, B:124:0x028b, B:126:0x0290, B:129:0x0296, B:131:0x0266, B:132:0x029b, B:134:0x02a5, B:136:0x02aa), top: B:98:0x0257 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Number scanNumberValue() {
        /*
            Method dump skipped, instructions count: 729
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.scanNumberValue():java.lang.Number");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00be, code lost:
    
        if (r0 != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c1, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long scanLongValue() {
        /*
            r12 = this;
            r0 = 0
            r12.np = r0
            char r1 = r12.ch
            r2 = 45
            r3 = 1
            if (r1 != r2) goto L3b
            r12.np = r3
            int r0 = r12.bp
            int r0 = r0 + r3
            r12.bp = r0
            int r1 = r12.len
            if (r0 >= r1) goto L22
            java.lang.String r1 = r12.text
            char r0 = r1.charAt(r0)
            r12.ch = r0
            r0 = -9223372036854775808
            r1 = r0
            r0 = r3
            goto L40
        L22:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "syntax error, "
            r1.<init>(r2)
            java.lang.String r12 = r12.info()
            java.lang.StringBuilder r12 = r1.append(r12)
            java.lang.String r12 = r12.toString()
            r0.<init>(r12)
            throw r0
        L3b:
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L40:
            r4 = 0
        L42:
            char r6 = r12.ch
            r7 = 48
            if (r6 < r7) goto Lbe
            r7 = 57
            if (r6 > r7) goto Lbe
            int r6 = r6 + (-48)
            r7 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r7 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            java.lang.String r8 = ", "
            java.lang.String r9 = "error long value, "
            if (r7 < 0) goto L9f
            r10 = 10
            long r4 = r4 * r10
            long r6 = (long) r6
            long r10 = r1 + r6
            int r10 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r10 < 0) goto L80
            long r4 = r4 - r6
            int r6 = r12.np
            int r6 = r6 + r3
            r12.np = r6
            int r6 = r12.bp
            int r6 = r6 + r3
            r12.bp = r6
            int r7 = r12.len
            if (r6 < r7) goto L77
            r6 = 26
            goto L7d
        L77:
            java.lang.String r7 = r12.text
            char r6 = r7.charAt(r6)
        L7d:
            r12.ch = r6
            goto L42
        L80:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r9)
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.StringBuilder r1 = r1.append(r8)
            java.lang.String r12 = r12.info()
            java.lang.StringBuilder r12 = r1.append(r12)
            java.lang.String r12 = r12.toString()
            r0.<init>(r12)
            throw r0
        L9f:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r9)
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.StringBuilder r1 = r1.append(r8)
            java.lang.String r12 = r12.info()
            java.lang.StringBuilder r12 = r1.append(r12)
            java.lang.String r12 = r12.toString()
            r0.<init>(r12)
            throw r0
        Lbe:
            if (r0 != 0) goto Lc1
            long r4 = -r4
        Lc1:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.scanLongValue():long");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x005e -> B:6:0x0027). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long longValue() throws java.lang.NumberFormatException {
        /*
            r13 = this;
            int r0 = r13.np
            int r1 = r13.sp
            int r1 = r1 + r0
            char r2 = r13.charAt(r0)
            r3 = 45
            r4 = 1
            if (r2 != r3) goto L15
            int r0 = r0 + 1
            r2 = -9223372036854775808
            r5 = r2
            r2 = r4
            goto L1b
        L15:
            r2 = 0
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L1b:
            if (r0 >= r1) goto L29
            int r3 = r0 + 1
            char r0 = r13.charAt(r0)
            int r0 = r0 + (-48)
            int r0 = -r0
            long r7 = (long) r0
        L27:
            r0 = r3
            goto L2b
        L29:
            r7 = 0
        L2b:
            if (r0 >= r1) goto L75
            int r3 = r0 + 1
            int r9 = r13.len
            if (r0 < r9) goto L36
            r0 = 26
            goto L3c
        L36:
            java.lang.String r9 = r13.text
            char r0 = r9.charAt(r0)
        L3c:
            r9 = 76
            if (r0 == r9) goto L74
            r9 = 83
            if (r0 == r9) goto L74
            r9 = 66
            if (r0 != r9) goto L49
            goto L74
        L49:
            int r0 = r0 + (-48)
            r9 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r9 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r9 < 0) goto L6a
            r9 = 10
            long r7 = r7 * r9
            long r9 = (long) r0
            long r11 = r5 + r9
            int r0 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r0 < 0) goto L60
            long r7 = r7 - r9
            goto L27
        L60:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r13 = r13.numberString()
            r0.<init>(r13)
            throw r0
        L6a:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r13 = r13.numberString()
            r0.<init>(r13)
            throw r0
        L74:
            r0 = r3
        L75:
            if (r2 == 0) goto L87
            int r1 = r13.np
            int r1 = r1 + r4
            if (r0 <= r1) goto L7d
            return r7
        L7d:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r13 = r13.numberString()
            r0.<init>(r13)
            throw r0
        L87:
            long r0 = -r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.longValue():long");
    }

    public final Number decimalValue(boolean z) {
        char[] cArr;
        boolean z2;
        int i = (this.np + this.sp) - 1;
        char charAt = i >= this.len ? EOI : this.text.charAt(i);
        try {
            if (charAt == 'F') {
                return Float.valueOf(Float.parseFloat(numberString()));
            }
            if (charAt == 'D') {
                return Double.valueOf(Double.parseDouble(numberString()));
            }
            if (z) {
                return decimalValue();
            }
            char charAt2 = this.text.charAt((this.np + this.sp) - 1);
            int i2 = this.sp;
            if (charAt2 == 'L' || charAt2 == 'S' || charAt2 == 'B' || charAt2 == 'F' || charAt2 == 'D') {
                i2--;
            }
            int i3 = this.np;
            char[] cArr2 = this.sbuf;
            int i4 = 0;
            if (i2 < cArr2.length) {
                this.text.getChars(i3, i3 + i2, cArr2, 0);
                cArr = this.sbuf;
            } else {
                char[] cArr3 = new char[i2];
                this.text.getChars(i3, i3 + i2, cArr3, 0);
                cArr = cArr3;
            }
            if (i2 <= 9 && !this.exp) {
                char c = cArr[0];
                int i5 = 2;
                if (c == '-') {
                    c = cArr[1];
                    z2 = true;
                } else {
                    if (c == '+') {
                        c = cArr[1];
                    } else {
                        i5 = 1;
                    }
                    z2 = false;
                }
                int i6 = c - '0';
                while (i5 < i2) {
                    char c2 = cArr[i5];
                    if (c2 == '.') {
                        i4 = 1;
                    } else {
                        i6 = (i6 * 10) + (c2 - '0');
                        if (i4 != 0) {
                            i4 *= 10;
                        }
                    }
                    i5++;
                }
                double d = i6 / i4;
                if (z2) {
                    d = -d;
                }
                return Double.valueOf(d);
            }
            return Double.valueOf(Double.parseDouble(new String(cArr, 0, i2)));
        } catch (NumberFormatException e) {
            throw new JSONException(e.getMessage() + ", " + info());
        }
    }

    public final BigDecimal decimalValue() {
        char charAt = this.text.charAt((this.np + this.sp) - 1);
        int i = this.sp;
        if (charAt == 'L' || charAt == 'S' || charAt == 'B' || charAt == 'F' || charAt == 'D') {
            i--;
        }
        int i2 = this.np;
        char[] cArr = this.sbuf;
        if (i < cArr.length) {
            this.text.getChars(i2, i2 + i, cArr, 0);
            return new BigDecimal(this.sbuf, 0, i);
        }
        char[] cArr2 = new char[i];
        this.text.getChars(i2, i + i2, cArr2, 0);
        return new BigDecimal(cArr2);
    }

    public boolean matchField(long j) {
        char c = this.ch;
        int i = this.bp + 1;
        int i2 = 1;
        while (c != '\"' && c != '\'') {
            if (c > ' ' || !(c == ' ' || c == '\n' || c == '\r' || c == '\t' || c == '\f' || c == '\b')) {
                this.fieldHash = 0L;
                this.matchStat = -2;
                return false;
            }
            int i3 = i2 + 1;
            int i4 = this.bp + i2;
            c = i4 >= this.len ? EOI : this.text.charAt(i4);
            i2 = i3;
        }
        int i5 = i;
        long j2 = -3750763034362895579L;
        while (true) {
            if (i5 >= this.len) {
                break;
            }
            char charAt = this.text.charAt(i5);
            if (charAt == c) {
                i2 += (i5 - i) + 1;
                break;
            }
            j2 = 1099511628211L * (j2 ^ charAt);
            i5++;
        }
        if (j2 != j) {
            this.matchStat = -2;
            this.fieldHash = j2;
            return false;
        }
        int i6 = i2 + 1;
        int i7 = this.bp + i2;
        char charAt2 = i7 >= this.len ? EOI : this.text.charAt(i7);
        while (charAt2 != ':') {
            if (charAt2 <= ' ' && (charAt2 == ' ' || charAt2 == '\n' || charAt2 == '\r' || charAt2 == '\t' || charAt2 == '\f' || charAt2 == '\b')) {
                int i8 = i6 + 1;
                int i9 = this.bp + i6;
                charAt2 = i9 >= this.len ? EOI : this.text.charAt(i9);
                i6 = i8;
            } else {
                throw new JSONException("match feild error expect ':'");
            }
        }
        int i10 = this.bp + i6;
        char charAt3 = i10 >= this.len ? EOI : this.text.charAt(i10);
        if (charAt3 == '{') {
            int i11 = i10 + 1;
            this.bp = i11;
            this.ch = i11 >= this.len ? EOI : this.text.charAt(i11);
            this.token = 12;
        } else if (charAt3 == '[') {
            int i12 = i10 + 1;
            this.bp = i12;
            this.ch = i12 >= this.len ? EOI : this.text.charAt(i12);
            this.token = 14;
        } else {
            this.bp = i10;
            this.ch = i10 >= this.len ? EOI : this.text.charAt(i10);
            nextToken();
        }
        return true;
    }

    private int matchFieldHash(long j) {
        char c = this.ch;
        int i = 1;
        while (c != '\"' && c != '\'') {
            if (c != ' ' && c != '\n' && c != '\r' && c != '\t' && c != '\f' && c != '\b') {
                this.fieldHash = 0L;
                this.matchStat = -2;
                return 0;
            }
            int i2 = i + 1;
            int i3 = this.bp + i;
            c = i3 >= this.len ? EOI : this.text.charAt(i3);
            i = i2;
        }
        int i4 = this.bp + i;
        long j2 = -3750763034362895579L;
        while (true) {
            if (i4 >= this.len) {
                break;
            }
            char charAt = this.text.charAt(i4);
            if (charAt == c) {
                i += (i4 - this.bp) - i;
                break;
            }
            j2 = 1099511628211L * (charAt ^ j2);
            i4++;
        }
        if (j2 != j) {
            this.fieldHash = j2;
            this.matchStat = -2;
            return 0;
        }
        int i5 = i + 1;
        int i6 = this.bp + i5;
        char charAt2 = i6 >= this.len ? EOI : this.text.charAt(i6);
        while (charAt2 != ':') {
            if (charAt2 <= ' ' && (charAt2 == ' ' || charAt2 == '\n' || charAt2 == '\r' || charAt2 == '\t' || charAt2 == '\f' || charAt2 == '\b')) {
                int i7 = i5 + 1;
                int i8 = this.bp + i5;
                charAt2 = i8 >= this.len ? EOI : this.text.charAt(i8);
                i5 = i7;
            } else {
                throw new JSONException("match feild error expect ':'");
            }
        }
        return i5 + 1;
    }

    public int scanFieldInt(long j) {
        int i;
        char charAt;
        this.matchStat = 0;
        int matchFieldHash = matchFieldHash(j);
        if (matchFieldHash == 0) {
            return 0;
        }
        int i2 = matchFieldHash + 1;
        int i3 = this.bp + matchFieldHash;
        int i4 = this.len;
        char c = EOI;
        char charAt2 = i3 >= i4 ? (char) 26 : this.text.charAt(i3);
        boolean z = charAt2 == '\"';
        if (z) {
            int i5 = matchFieldHash + 2;
            int i6 = this.bp + i2;
            charAt2 = i6 >= this.len ? (char) 26 : this.text.charAt(i6);
            i2 = i5;
            z = true;
        }
        boolean z2 = charAt2 == '-';
        if (z2) {
            int i7 = i2 + 1;
            int i8 = this.bp + i2;
            charAt2 = i8 >= this.len ? (char) 26 : this.text.charAt(i8);
            i2 = i7;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i9 = charAt2 - '0';
        while (true) {
            i = i2 + 1;
            int i10 = this.bp + i2;
            charAt = i10 >= this.len ? (char) 26 : this.text.charAt(i10);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            i9 = (i9 * 10) + (charAt - '0');
            i2 = i;
        }
        if (charAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if (charAt == '\"') {
            if (!z) {
                this.matchStat = -1;
                return 0;
            }
            int i11 = i2 + 2;
            int i12 = this.bp + i;
            charAt = i12 >= this.len ? (char) 26 : this.text.charAt(i12);
            i = i11;
        }
        if (i9 < 0) {
            this.matchStat = -1;
            return 0;
        }
        while (charAt != ',') {
            if (charAt > ' ' || !(charAt == ' ' || charAt == '\n' || charAt == '\r' || charAt == '\t' || charAt == '\f' || charAt == '\b')) {
                if (charAt != '}') {
                    this.matchStat = -1;
                    return 0;
                }
                char charAt3 = charAt(this.bp + i);
                if (charAt3 == ',') {
                    this.token = 16;
                    int i13 = this.bp + i + 1;
                    this.bp = i13;
                    if (i13 < this.len) {
                        c = this.text.charAt(i13);
                    }
                    this.ch = c;
                } else if (charAt3 == ']') {
                    this.token = 15;
                    int i14 = this.bp + i + 1;
                    this.bp = i14;
                    if (i14 < this.len) {
                        c = this.text.charAt(i14);
                    }
                    this.ch = c;
                } else if (charAt3 == '}') {
                    this.token = 13;
                    int i15 = this.bp + i + 1;
                    this.bp = i15;
                    if (i15 < this.len) {
                        c = this.text.charAt(i15);
                    }
                    this.ch = c;
                } else {
                    if (charAt3 != 26) {
                        this.matchStat = -1;
                        return 0;
                    }
                    this.token = 20;
                    this.bp += i;
                    this.ch = EOI;
                }
                this.matchStat = 4;
                return z2 ? -i9 : i9;
            }
            int i16 = i + 1;
            int i17 = this.bp + i;
            charAt = i17 >= this.len ? (char) 26 : this.text.charAt(i17);
            i = i16;
        }
        int i18 = this.bp + (i - 1) + 1;
        this.bp = i18;
        if (i18 < this.len) {
            c = this.text.charAt(i18);
        }
        this.ch = c;
        this.matchStat = 3;
        this.token = 16;
        return z2 ? -i9 : i9;
    }

    public final int[] scanFieldIntArray(long j) {
        boolean z;
        int[] iArr;
        int i;
        int i2;
        char charAt;
        int i3;
        char charAt2;
        int i4;
        this.matchStat = 0;
        int matchFieldHash = matchFieldHash(j);
        int[] iArr2 = null;
        if (matchFieldHash == 0) {
            return null;
        }
        int i5 = matchFieldHash + 1;
        int i6 = this.bp + matchFieldHash;
        int i7 = -1;
        if (i6 >= this.len || this.text.charAt(i6) != '[') {
            this.matchStat = -1;
            return null;
        }
        int i8 = matchFieldHash + 2;
        int i9 = this.bp + i5;
        char charAt3 = i9 >= this.len ? EOI : this.text.charAt(i9);
        int[] iArr3 = new int[16];
        if (charAt3 != ']') {
            int i10 = 0;
            while (true) {
                if (charAt3 == '-') {
                    int i11 = i8 + 1;
                    int i12 = this.bp + i8;
                    charAt3 = i12 >= this.len ? EOI : this.text.charAt(i12);
                    i8 = i11;
                    z = true;
                } else {
                    z = false;
                }
                if (charAt3 < '0') {
                    iArr = iArr2;
                    i = i7;
                    break;
                }
                if (charAt3 > '9') {
                    i = i7;
                    iArr = null;
                    break;
                }
                int i13 = charAt3 - '0';
                while (true) {
                    i2 = i8 + 1;
                    int i14 = this.bp + i8;
                    charAt = i14 >= this.len ? EOI : this.text.charAt(i14);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    i13 = (i13 * 10) + (charAt - '0');
                    i8 = i2;
                }
                if (i10 >= iArr3.length) {
                    int[] iArr4 = new int[(iArr3.length * 3) / 2];
                    System.arraycopy(iArr3, 0, iArr4, 0, i10);
                    iArr3 = iArr4;
                }
                i3 = i10 + 1;
                if (z) {
                    i13 = -i13;
                }
                iArr3[i10] = i13;
                if (charAt == ',') {
                    int i15 = i8 + 2;
                    int i16 = this.bp + i2;
                    charAt = i16 >= this.len ? EOI : this.text.charAt(i16);
                    i2 = i15;
                } else if (charAt == ']') {
                    int i17 = i8 + 2;
                    int i18 = this.bp + i2;
                    charAt2 = i18 >= this.len ? EOI : this.text.charAt(i18);
                    i4 = i17;
                }
                charAt3 = charAt;
                i7 = -1;
                i10 = i3;
                iArr2 = null;
                i8 = i2;
            }
            this.matchStat = i;
            return iArr;
        }
        i4 = matchFieldHash + 3;
        int i19 = this.bp + i8;
        charAt2 = i19 >= this.len ? EOI : this.text.charAt(i19);
        i3 = 0;
        if (i3 != iArr3.length) {
            int[] iArr5 = new int[i3];
            System.arraycopy(iArr3, 0, iArr5, 0, i3);
            iArr3 = iArr5;
        }
        if (charAt2 == ',') {
            this.bp += i4 - 1;
            next();
            this.matchStat = 3;
            this.token = 16;
            return iArr3;
        }
        if (charAt2 != '}') {
            this.matchStat = -1;
            return null;
        }
        char charAt4 = charAt(this.bp + i4);
        if (charAt4 == ',') {
            this.token = 16;
            this.bp += i4;
            next();
        } else if (charAt4 == ']') {
            this.token = 15;
            this.bp += i4;
            next();
        } else if (charAt4 == '}') {
            this.token = 13;
            this.bp += i4;
            next();
        } else {
            if (charAt4 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.bp += i4;
            this.token = 20;
            this.ch = EOI;
        }
        this.matchStat = 4;
        return iArr3;
    }

    public long scanFieldLong(long j) {
        int i;
        char charAt;
        this.matchStat = 0;
        int matchFieldHash = matchFieldHash(j);
        if (matchFieldHash == 0) {
            return 0L;
        }
        int i2 = matchFieldHash + 1;
        int i3 = this.bp + matchFieldHash;
        char charAt2 = i3 >= this.len ? EOI : this.text.charAt(i3);
        boolean z = charAt2 == '\"';
        if (z) {
            int i4 = matchFieldHash + 2;
            int i5 = this.bp + i2;
            charAt2 = i5 >= this.len ? EOI : this.text.charAt(i5);
            i2 = i4;
        }
        boolean z2 = charAt2 == '-';
        if (z2) {
            int i6 = i2 + 1;
            int i7 = this.bp + i2;
            i2 = i6;
            charAt2 = i7 >= this.len ? EOI : this.text.charAt(i7);
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.matchStat = -1;
            return 0L;
        }
        long j2 = charAt2 - '0';
        while (true) {
            i = i2 + 1;
            int i8 = this.bp + i2;
            charAt = i8 >= this.len ? EOI : this.text.charAt(i8);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            j2 = (j2 * 10) + (charAt - '0');
            i2 = i;
        }
        if (charAt == '.') {
            this.matchStat = -1;
            return 0L;
        }
        if (charAt == '\"') {
            if (!z) {
                this.matchStat = -1;
                return 0L;
            }
            int i9 = i2 + 2;
            int i10 = this.bp + i;
            charAt = i10 >= this.len ? EOI : this.text.charAt(i10);
            i = i9;
        }
        if (j2 < 0) {
            this.matchStat = -1;
            return 0L;
        }
        if (charAt == ',') {
            int i11 = this.bp + (i - 1) + 1;
            this.bp = i11;
            this.ch = i11 >= this.len ? EOI : this.text.charAt(i11);
            this.matchStat = 3;
            this.token = 16;
            return z2 ? -j2 : j2;
        }
        if (charAt != '}') {
            this.matchStat = -1;
            return 0L;
        }
        char charAt3 = charAt(this.bp + i);
        if (charAt3 == ',') {
            this.token = 16;
            int i12 = this.bp + i + 1;
            this.bp = i12;
            this.ch = i12 >= this.len ? EOI : this.text.charAt(i12);
        } else if (charAt3 == ']') {
            this.token = 15;
            int i13 = this.bp + i + 1;
            this.bp = i13;
            this.ch = i13 >= this.len ? EOI : this.text.charAt(i13);
        } else if (charAt3 == '}') {
            this.token = 13;
            int i14 = this.bp + i + 1;
            this.bp = i14;
            this.ch = i14 >= this.len ? EOI : this.text.charAt(i14);
        } else {
            if (charAt3 != 26) {
                this.matchStat = -1;
                return 0L;
            }
            this.token = 20;
            this.bp += i;
            this.ch = EOI;
        }
        this.matchStat = 4;
        return z2 ? -j2 : j2;
    }

    public String scanFieldString(long j) {
        String str;
        this.matchStat = 0;
        int matchFieldHash = matchFieldHash(j);
        if (matchFieldHash == 0) {
            return null;
        }
        int i = matchFieldHash + 1;
        int i2 = this.bp + matchFieldHash;
        if (i2 >= this.len) {
            throw new JSONException("unclosed str, " + info());
        }
        if (this.text.charAt(i2) != '\"') {
            this.matchStat = -1;
            return this.stringDefaultValue;
        }
        int i3 = this.bp + i;
        int indexOf = this.text.indexOf(34, i3);
        if (indexOf == -1) {
            throw new JSONException("unclosed str, " + info());
        }
        if (V6) {
            str = this.text.substring(i3, indexOf);
        } else {
            int i4 = indexOf - i3;
            str = new String(sub_chars(this.bp + i, i4), 0, i4);
        }
        if (str.indexOf(92) != -1) {
            boolean z = false;
            while (true) {
                int i5 = indexOf - 1;
                int i6 = 0;
                while (i5 >= 0 && this.text.charAt(i5) == '\\') {
                    i6++;
                    i5--;
                    z = true;
                }
                if (i6 % 2 == 0) {
                    break;
                }
                indexOf = this.text.indexOf(34, indexOf + 1);
            }
            int i7 = indexOf - i3;
            char[] sub_chars = sub_chars(this.bp + i, i7);
            if (z) {
                str = readString(sub_chars, i7);
            } else {
                str = new String(sub_chars, 0, i7);
                if (str.indexOf(92) != -1) {
                    str = readString(sub_chars, i7);
                }
            }
        }
        int i8 = indexOf + 1;
        int i9 = this.len;
        char c = EOI;
        char charAt = i8 >= i9 ? (char) 26 : this.text.charAt(i8);
        if (charAt == ',') {
            int i10 = indexOf + 2;
            this.bp = i10;
            if (i10 < this.len) {
                c = this.text.charAt(i10);
            }
            this.ch = c;
            this.matchStat = 3;
            this.token = 16;
            return str;
        }
        if (charAt != '}') {
            this.matchStat = -1;
            return this.stringDefaultValue;
        }
        int i11 = indexOf + 2;
        char charAt2 = i11 >= this.len ? (char) 26 : this.text.charAt(i11);
        if (charAt2 == ',') {
            this.token = 16;
            this.bp = i11;
            next();
        } else if (charAt2 == ']') {
            this.token = 15;
            this.bp = i11;
            next();
        } else if (charAt2 == '}') {
            this.token = 13;
            this.bp = i11;
            next();
        } else {
            if (charAt2 != 26) {
                this.matchStat = -1;
                return this.stringDefaultValue;
            }
            this.token = 20;
            this.bp = i11;
            this.ch = EOI;
        }
        this.matchStat = 4;
        return str;
    }

    public Date scanFieldDate(long j) {
        int i;
        char charAt;
        char c;
        int i2;
        Date date;
        this.matchStat = 0;
        int matchFieldHash = matchFieldHash(j);
        if (matchFieldHash == 0) {
            return null;
        }
        int i3 = this.bp;
        char c2 = this.ch;
        int i4 = matchFieldHash + 1;
        int i5 = i3 + matchFieldHash;
        int i6 = this.len;
        char c3 = EOI;
        char charAt2 = i5 >= i6 ? (char) 26 : this.text.charAt(i5);
        if (charAt2 == '\"') {
            int i7 = this.bp;
            int i8 = i7 + i4;
            int i9 = matchFieldHash + 2;
            int i10 = i7 + i4;
            if (i10 < this.len) {
                this.text.charAt(i10);
            }
            int indexOf = this.text.indexOf(34, this.bp + i9);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int i11 = indexOf - i8;
            this.bp = i8;
            if (!scanISO8601DateIfMatch(false, i11)) {
                this.bp = i3;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            int i12 = i9 + i11;
            i2 = i12 + 1;
            c = charAt(i12 + i3);
            this.bp = i3;
        } else {
            if (charAt2 < '0' || charAt2 > '9') {
                this.matchStat = -1;
                return null;
            }
            long j2 = charAt2 - '0';
            while (true) {
                i = i4 + 1;
                int i13 = this.bp + i4;
                charAt = i13 >= this.len ? (char) 26 : this.text.charAt(i13);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                j2 = (j2 * 10) + (charAt - '0');
                i4 = i;
            }
            if (charAt == '.') {
                this.matchStat = -1;
                return null;
            }
            if (charAt == '\"') {
                i2 = i4 + 2;
                int i14 = this.bp + i;
                c = i14 >= this.len ? (char) 26 : this.text.charAt(i14);
            } else {
                c = charAt;
                i2 = i;
            }
            if (j2 < 0) {
                this.matchStat = -1;
                return null;
            }
            date = new Date(j2);
        }
        if (c == ',') {
            int i15 = this.bp + (i2 - 1) + 1;
            this.bp = i15;
            if (i15 < this.len) {
                c3 = this.text.charAt(i15);
            }
            this.ch = c3;
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        if (c != '}') {
            this.bp = i3;
            this.ch = c2;
            this.matchStat = -1;
            return null;
        }
        char charAt3 = charAt(this.bp + i2);
        if (charAt3 == ',') {
            this.token = 16;
            int i16 = this.bp + i2 + 1;
            this.bp = i16;
            if (i16 < this.len) {
                c3 = this.text.charAt(i16);
            }
            this.ch = c3;
        } else if (charAt3 == ']') {
            this.token = 15;
            int i17 = this.bp + i2 + 1;
            this.bp = i17;
            if (i17 < this.len) {
                c3 = this.text.charAt(i17);
            }
            this.ch = c3;
        } else if (charAt3 == '}') {
            this.token = 13;
            int i18 = this.bp + i2 + 1;
            this.bp = i18;
            if (i18 < this.len) {
                c3 = this.text.charAt(i18);
            }
            this.ch = c3;
        } else {
            if (charAt3 != 26) {
                this.bp = i3;
                this.ch = c2;
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.bp += i2;
            this.ch = EOI;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanFieldBoolean(long r13) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.scanFieldBoolean(long):boolean");
    }

    public final float scanFieldFloat(long j) {
        int i;
        char charAt;
        int i2;
        float parseFloat;
        int i3;
        char charAt2;
        this.matchStat = 0;
        int matchFieldHash = matchFieldHash(j);
        if (matchFieldHash == 0) {
            return 0.0f;
        }
        int i4 = matchFieldHash + 1;
        char charAt3 = charAt(this.bp + matchFieldHash);
        int i5 = this.bp;
        int i6 = (i5 + i4) - 1;
        boolean z = charAt3 == '-';
        if (z) {
            charAt3 = charAt(i5 + i4);
            i4 = matchFieldHash + 2;
        }
        if (charAt3 < '0' || charAt3 > '9') {
            this.matchStat = -1;
            return 0.0f;
        }
        int i7 = charAt3 - '0';
        while (true) {
            i = i4 + 1;
            charAt = charAt(this.bp + i4);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            i7 = (i7 * 10) + (charAt - '0');
            i4 = i;
        }
        if (charAt == '.') {
            int i8 = i4 + 2;
            char charAt4 = charAt(this.bp + i);
            if (charAt4 < '0' || charAt4 > '9') {
                this.matchStat = -1;
                return 0.0f;
            }
            i7 = (i7 * 10) + (charAt4 - '0');
            int i9 = 10;
            while (true) {
                i3 = i8 + 1;
                charAt2 = charAt(this.bp + i8);
                if (charAt2 < '0' || charAt2 > '9') {
                    break;
                }
                i7 = (i7 * 10) + (charAt2 - '0');
                i9 *= 10;
                i8 = i3;
            }
            i = i3;
            int i10 = i9;
            charAt = charAt2;
            i2 = i10;
        } else {
            i2 = 1;
        }
        boolean z2 = charAt == 'e' || charAt == 'E';
        if (z2) {
            int i11 = i + 1;
            charAt = charAt(this.bp + i);
            if (charAt == '+' || charAt == '-') {
                i += 2;
                charAt = charAt(this.bp + i11);
            } else {
                i = i11;
            }
            while (charAt >= '0' && charAt <= '9') {
                charAt = charAt(this.bp + i);
                i++;
            }
        }
        int i12 = ((this.bp + i) - i6) - 1;
        if (z2 || i12 >= 10) {
            parseFloat = Float.parseFloat(subString(i6, i12));
        } else {
            parseFloat = i7 / i2;
            if (z) {
                parseFloat = -parseFloat;
            }
        }
        if (charAt == ',') {
            this.bp += i - 1;
            next();
            this.matchStat = 3;
            this.token = 16;
            return parseFloat;
        }
        if (charAt != '}') {
            this.matchStat = -1;
            return 0.0f;
        }
        char charAt5 = charAt(this.bp + i);
        if (charAt5 == ',') {
            this.token = 16;
            this.bp += i;
            next();
        } else if (charAt5 == ']') {
            this.token = 15;
            this.bp += i;
            next();
        } else if (charAt5 == '}') {
            this.token = 13;
            this.bp += i;
            next();
        } else {
            if (charAt5 != 26) {
                this.matchStat = -1;
                return 0.0f;
            }
            this.bp += i;
            this.token = 20;
            this.ch = EOI;
        }
        this.matchStat = 4;
        return parseFloat;
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x00d3, code lost:
    
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x00d5, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0222, code lost:
    
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0224, code lost:
    
        return r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0119 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0128  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0116 -> B:61:0x0117). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[] scanFieldFloatArray(long r20) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.scanFieldFloatArray(long):float[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:165:0x00f2, code lost:
    
        r20.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x00f7, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02a1, code lost:
    
        r6 = r3;
        r20.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x02a7, code lost:
    
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[][] scanFieldFloatArray2(long r21) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.scanFieldFloatArray2(long):float[][]");
    }

    public final double scanFieldDouble(long j) {
        int i;
        char charAt;
        int i2;
        double parseDouble;
        int i3;
        char charAt2;
        this.matchStat = 0;
        int matchFieldHash = matchFieldHash(j);
        if (matchFieldHash == 0) {
            return BuildConfig.SENTRY_SAMPLE_RATE;
        }
        int i4 = matchFieldHash + 1;
        char charAt3 = charAt(this.bp + matchFieldHash);
        int i5 = this.bp;
        int i6 = (i5 + i4) - 1;
        boolean z = charAt3 == '-';
        if (z) {
            charAt3 = charAt(i5 + i4);
            i4 = matchFieldHash + 2;
        }
        if (charAt3 < '0' || charAt3 > '9') {
            this.matchStat = -1;
            return BuildConfig.SENTRY_SAMPLE_RATE;
        }
        int i7 = charAt3 - '0';
        while (true) {
            i = i4 + 1;
            charAt = charAt(this.bp + i4);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            i7 = (i7 * 10) + (charAt - '0');
            i4 = i;
        }
        if (charAt == '.') {
            int i8 = i4 + 2;
            char charAt4 = charAt(this.bp + i);
            if (charAt4 < '0' || charAt4 > '9') {
                this.matchStat = -1;
                return BuildConfig.SENTRY_SAMPLE_RATE;
            }
            i7 = (i7 * 10) + (charAt4 - '0');
            int i9 = 10;
            while (true) {
                i3 = i8 + 1;
                charAt2 = charAt(this.bp + i8);
                if (charAt2 < '0' || charAt2 > '9') {
                    break;
                }
                i7 = (i7 * 10) + (charAt2 - '0');
                i9 *= 10;
                i8 = i3;
            }
            i = i3;
            int i10 = i9;
            charAt = charAt2;
            i2 = i10;
        } else {
            i2 = 1;
        }
        boolean z2 = charAt == 'e' || charAt == 'E';
        if (z2) {
            int i11 = i + 1;
            charAt = charAt(this.bp + i);
            if (charAt == '+' || charAt == '-') {
                i += 2;
                charAt = charAt(this.bp + i11);
            } else {
                i = i11;
            }
            while (charAt >= '0' && charAt <= '9') {
                charAt = charAt(this.bp + i);
                i++;
            }
        }
        int i12 = ((this.bp + i) - i6) - 1;
        if (z2 || i12 >= 10) {
            parseDouble = Double.parseDouble(subString(i6, i12));
        } else {
            parseDouble = i7 / i2;
            if (z) {
                parseDouble = -parseDouble;
            }
        }
        if (charAt == ',') {
            this.bp += i - 1;
            next();
            this.matchStat = 3;
            this.token = 16;
            return parseDouble;
        }
        if (charAt != '}') {
            this.matchStat = -1;
            return BuildConfig.SENTRY_SAMPLE_RATE;
        }
        char charAt5 = charAt(this.bp + i);
        if (charAt5 == ',') {
            this.token = 16;
            this.bp += i;
            next();
        } else if (charAt5 == ']') {
            this.token = 15;
            this.bp += i;
            next();
        } else if (charAt5 == '}') {
            this.token = 13;
            this.bp += i;
            next();
        } else {
            if (charAt5 != 26) {
                this.matchStat = -1;
                return BuildConfig.SENTRY_SAMPLE_RATE;
            }
            this.bp += i;
            this.token = 20;
            this.ch = EOI;
        }
        this.matchStat = 4;
        return parseDouble;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x00d3, code lost:
    
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x00d5, code lost:
    
        return r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0119 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0128  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0116 -> B:61:0x0117). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double[] scanFieldDoubleArray(long r20) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.scanFieldDoubleArray(long):double[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:165:0x00f2, code lost:
    
        r20.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x00f7, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02a3, code lost:
    
        r6 = r3;
        r20.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x02a9, code lost:
    
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double[][] scanFieldDoubleArray2(long r21) {
        /*
            Method dump skipped, instructions count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.scanFieldDoubleArray2(long):double[][]");
    }

    public long scanFieldSymbol(long j) {
        this.matchStat = 0;
        int matchFieldHash = matchFieldHash(j);
        if (matchFieldHash == 0) {
            return 0L;
        }
        int i = matchFieldHash + 1;
        int i2 = this.bp + matchFieldHash;
        if (i2 >= this.len || this.text.charAt(i2) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j2 = -3750763034362895579L;
        while (true) {
            int i3 = i + 1;
            int i4 = this.bp + i;
            int i5 = this.len;
            char c = EOI;
            char charAt = i4 >= i5 ? (char) 26 : this.text.charAt(i4);
            if (charAt == '\"') {
                int i6 = i + 2;
                int i7 = this.bp + i3;
                char charAt2 = i7 >= this.len ? (char) 26 : this.text.charAt(i7);
                if (charAt2 == ',') {
                    int i8 = this.bp + i + 1 + 1;
                    this.bp = i8;
                    if (i8 < this.len) {
                        c = this.text.charAt(i8);
                    }
                    this.ch = c;
                    this.matchStat = 3;
                    return j2;
                }
                if (charAt2 != '}') {
                    this.matchStat = -1;
                    return 0L;
                }
                int i9 = this.bp + i6;
                char charAt3 = i9 >= this.len ? (char) 26 : this.text.charAt(i9);
                if (charAt3 == ',') {
                    this.token = 16;
                    this.bp += i + 2;
                    next();
                } else if (charAt3 == ']') {
                    this.token = 15;
                    this.bp += i + 2;
                    next();
                } else if (charAt3 == '}') {
                    this.token = 13;
                    this.bp += i + 2;
                    next();
                } else {
                    if (charAt3 != 26) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.token = 20;
                    this.bp += i + 2;
                    this.ch = EOI;
                }
                this.matchStat = 4;
                return j2;
            }
            j2 = (j2 ^ charAt) * 1099511628211L;
            if (charAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i = i3;
        }
    }

    public boolean scanISO8601DateIfMatch(boolean z) {
        return scanISO8601DateIfMatch(z, this.len - this.bp);
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0209 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x020c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanISO8601DateIfMatch(boolean r36, int r37) {
        /*
            Method dump skipped, instructions count: 1614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexer.scanISO8601DateIfMatch(boolean, int):boolean");
    }

    protected void setTime(char c, char c2, char c3, char c4, char c5, char c6) {
        this.calendar.set(11, ((c - '0') * 10) + (c2 - '0'));
        this.calendar.set(12, ((c3 - '0') * 10) + (c4 - '0'));
        this.calendar.set(13, ((c5 - '0') * 10) + (c6 - '0'));
    }

    protected void setTimeZone(char c, char c2, char c3) {
        int i = (((c2 - '0') * 10) + (c3 - '0')) * 3600000;
        if (c == '-') {
            i = -i;
        }
        if (this.calendar.getTimeZone().getRawOffset() != i) {
            String[] availableIDs = TimeZone.getAvailableIDs(i);
            if (availableIDs.length > 0) {
                this.calendar.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
            }
        }
    }

    private void setCalendar(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8) {
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        this.calendar = calendar;
        calendar.set(1, ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0'));
        this.calendar.set(2, (((c5 - '0') * 10) + (c6 - '0')) - 1);
        this.calendar.set(5, ((c7 - '0') * 10) + (c8 - '0'));
    }

    public static final byte[] decodeFast(String str, int i, int i2) {
        int i3;
        if (i2 == 0) {
            return new byte[0];
        }
        int i4 = (i + i2) - 1;
        int i5 = i;
        while (i5 < i4 && IA[str.charAt(i5)] < 0) {
            i5++;
        }
        while (i4 > 0 && IA[str.charAt(i4)] < 0) {
            i4--;
        }
        int i6 = str.charAt(i4) == '=' ? str.charAt(i4 + (-1)) == '=' ? 2 : 1 : 0;
        int i7 = (i4 - i5) + 1;
        if (i2 > 76) {
            i3 = (str.charAt(76) == '\r' ? i7 / 78 : 0) << 1;
        } else {
            i3 = 0;
        }
        int i8 = (((i7 - i3) * 6) >> 3) - i6;
        byte[] bArr = new byte[i8];
        int i9 = (i8 / 3) * 3;
        int i10 = 0;
        int i11 = 0;
        while (i10 < i9) {
            int[] iArr = IA;
            int i12 = i5 + 4;
            int i13 = iArr[str.charAt(i5 + 3)] | (iArr[str.charAt(i5 + 1)] << 12) | (iArr[str.charAt(i5)] << 18) | (iArr[str.charAt(i5 + 2)] << 6);
            bArr[i10] = (byte) (i13 >> 16);
            int i14 = i10 + 2;
            bArr[i10 + 1] = (byte) (i13 >> 8);
            i10 += 3;
            bArr[i14] = (byte) i13;
            if (i3 <= 0 || (i11 = i11 + 1) != 19) {
                i5 = i12;
            } else {
                i5 += 6;
                i11 = 0;
            }
        }
        if (i10 < i8) {
            int i15 = 0;
            int i16 = 0;
            while (i5 <= i4 - i6) {
                i15 |= IA[str.charAt(i5)] << (18 - (i16 * 6));
                i16++;
                i5++;
            }
            int i17 = 16;
            while (i10 < i8) {
                bArr[i10] = (byte) (i15 >> i17);
                i17 -= 8;
                i10++;
            }
        }
        return bArr;
    }
}
