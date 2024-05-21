package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* loaded from: classes2.dex */
public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    public ParserConfig config;
    protected ParseContext contex;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    protected List<ExtraProcessor> extraProcessors;
    protected List<ExtraTypeProvider> extraTypeProviders;
    public FieldTypeResolver fieldTypeResolver;
    public final JSONLexer lexer;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.locale);
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.lexer.timeZone);
        }
        return this.dateFormat;
    }

    public DefaultJSONParser(String str) {
        this(str, ParserConfig.global, JSON.DEFAULT_PARSER_FEATURE);
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig) {
        this(new JSONLexer(str, JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig, int i) {
        this(new JSONLexer(str, i), parserConfig);
    }

    public DefaultJSONParser(char[] cArr, int i, ParserConfig parserConfig, int i2) {
        this(new JSONLexer(cArr, i, i2), parserConfig);
    }

    public DefaultJSONParser(JSONLexer jSONLexer) {
        this(jSONLexer, ParserConfig.global);
    }

    public DefaultJSONParser(JSONLexer jSONLexer, ParserConfig parserConfig) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.lexer = jSONLexer;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char c = jSONLexer.ch;
        char c2 = JSONLexer.EOI;
        if (c == '{') {
            int i = jSONLexer.bp + 1;
            jSONLexer.bp = i;
            jSONLexer.ch = i < jSONLexer.len ? jSONLexer.text.charAt(i) : c2;
            jSONLexer.token = 12;
            return;
        }
        if (jSONLexer.ch == '[') {
            int i2 = jSONLexer.bp + 1;
            jSONLexer.bp = i2;
            jSONLexer.ch = i2 < jSONLexer.len ? jSONLexer.text.charAt(i2) : c2;
            jSONLexer.token = 14;
            return;
        }
        jSONLexer.nextToken();
    }

    /* JADX WARN: Code restructure failed: missing block: B:319:0x0259, code lost:
    
        r3.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0260, code lost:
    
        if (r3.token != 13) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0262, code lost:
    
        r3.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0265, code lost:
    
        r2 = r18.config.getDeserializer(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x026d, code lost:
    
        if ((r2 instanceof com.alibaba.fastjson.parser.JavaBeanDeserializer) == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x026f, code lost:
    
        r2 = (com.alibaba.fastjson.parser.JavaBeanDeserializer) r2;
        r3 = r2.createInstance((com.alibaba.fastjson.parser.DefaultJSONParser) r18, r7);
        r0 = r19.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x0281, code lost:
    
        if (r0.hasNext() == false) goto L451;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0283, code lost:
    
        r4 = (java.util.Map.Entry) r0.next();
        r6 = r4.getKey();
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x028f, code lost:
    
        if ((r6 instanceof java.lang.String) == false) goto L455;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0291, code lost:
    
        r6 = r2.getFieldDeserializer((java.lang.String) r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0297, code lost:
    
        if (r6 == null) goto L456;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0299, code lost:
    
        r6.setValue(r3, r4.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x02a2, code lost:
    
        if (r3 != null) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x02a6, code lost:
    
        if (r7 != java.lang.Cloneable.class) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x02a8, code lost:
    
        r3 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x02b4, code lost:
    
        if ("java.util.Collections$EmptyMap".equals(r5) == false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x02b6, code lost:
    
        r3 = java.util.Collections.emptyMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x02bb, code lost:
    
        r3 = r7.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x02bf, code lost:
    
        if (r13 != false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x02c1, code lost:
    
        r18.contex = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x02c3, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x02a1, code lost:
    
        r3 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x02c4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x02cc, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x02cd, code lost:
    
        r18.resolveStatus = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x02d2, code lost:
    
        if (r18.contex == null) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x02d6, code lost:
    
        if ((r20 instanceof java.lang.Integer) != false) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x02d8, code lost:
    
        popContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x02df, code lost:
    
        if (r19.size() <= 0) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x02e1, code lost:
    
        r0 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r19, (java.lang.Class<java.lang.Object>) r7, r18.config);
        parseObject(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x02ea, code lost:
    
        if (r13 != false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x02ec, code lost:
    
        r18.contex = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x02ee, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x02ef, code lost:
    
        r0 = r18.config.getDeserializer(r7);
        r2 = r0.deserialze(r18, r7, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x02fb, code lost:
    
        if ((r0 instanceof com.alibaba.fastjson.parser.MapDeserializer) == false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x02fd, code lost:
    
        r18.resolveStatus = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x0300, code lost:
    
        if (r13 != false) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0302, code lost:
    
        r18.contex = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x0304, code lost:
    
        return r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03eb A[Catch: all -> 0x06f4, TryCatch #1 {all -> 0x06f4, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00bd, B:41:0x01cf, B:44:0x01e1, B:60:0x0200, B:62:0x020d, B:65:0x0214, B:302:0x021c, B:303:0x0225, B:305:0x022b, B:309:0x0238, B:314:0x0240, B:316:0x024e, B:319:0x0259, B:321:0x0262, B:323:0x0265, B:325:0x026f, B:326:0x027d, B:328:0x0283, B:331:0x0291, B:334:0x0299, B:343:0x02a8, B:344:0x02ae, B:346:0x02b6, B:347:0x02bb, B:353:0x02c5, B:354:0x02cc, B:355:0x02cd, B:357:0x02d4, B:359:0x02d8, B:360:0x02db, B:362:0x02e1, B:366:0x02ef, B:368:0x02fd, B:72:0x030d, B:75:0x0315, B:77:0x031c, B:79:0x032b, B:81:0x0333, B:84:0x0338, B:86:0x033c, B:87:0x038e, B:89:0x0392, B:93:0x039c, B:94:0x03b6, B:97:0x0343, B:99:0x034b, B:101:0x034f, B:102:0x0352, B:103:0x035e, B:106:0x0367, B:108:0x036b, B:110:0x036e, B:112:0x0372, B:113:0x0376, B:114:0x0382, B:115:0x03b7, B:116:0x03d5, B:119:0x03da, B:124:0x03eb, B:126:0x03f1, B:128:0x03fd, B:129:0x0403, B:131:0x0408, B:133:0x059e, B:137:0x05a8, B:140:0x05b1, B:143:0x05c4, B:148:0x05be, B:152:0x05d0, B:155:0x05e3, B:157:0x05ec, B:160:0x05ff, B:162:0x0647, B:166:0x05f9, B:169:0x060a, B:172:0x061d, B:173:0x0617, B:176:0x0628, B:179:0x063b, B:180:0x0635, B:181:0x0642, B:182:0x05dd, B:183:0x0651, B:184:0x066b, B:185:0x040c, B:190:0x041c, B:195:0x042b, B:198:0x0442, B:200:0x044b, B:203:0x0457, B:205:0x0461, B:206:0x0468, B:215:0x046c, B:212:0x047f, B:213:0x0499, B:219:0x0465, B:220:0x0454, B:221:0x043c, B:224:0x049e, B:227:0x04b1, B:229:0x04c2, B:232:0x04d6, B:233:0x04dc, B:236:0x04e2, B:237:0x04ec, B:239:0x04f4, B:241:0x0506, B:244:0x050e, B:245:0x0510, B:247:0x0515, B:249:0x051e, B:251:0x0527, B:252:0x052a, B:261:0x0530, B:263:0x0537, B:258:0x0545, B:259:0x055f, B:267:0x0522, B:272:0x04cd, B:273:0x04ab, B:276:0x0566, B:278:0x0572, B:281:0x0585, B:283:0x0591, B:284:0x066c, B:286:0x067d, B:287:0x0681, B:296:0x068a, B:290:0x0696, B:293:0x06a3, B:294:0x06bd, B:381:0x01db, B:382:0x0209, B:442:0x00c5, B:445:0x00d6, B:449:0x00d0, B:387:0x00e9, B:389:0x00f3, B:390:0x00f6, B:394:0x00fb, B:395:0x0113, B:403:0x0126, B:405:0x012c, B:407:0x0131, B:409:0x013e, B:410:0x0142, B:414:0x0148, B:415:0x0164, B:416:0x0136, B:418:0x0165, B:419:0x0181, B:427:0x018b, B:430:0x019a, B:432:0x01a0, B:433:0x01c2, B:434:0x01c3, B:436:0x06be, B:437:0x06d8, B:439:0x06d9, B:440:0x06f3), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x05a4  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x05b1 A[Catch: all -> 0x06f4, TryCatch #1 {all -> 0x06f4, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00bd, B:41:0x01cf, B:44:0x01e1, B:60:0x0200, B:62:0x020d, B:65:0x0214, B:302:0x021c, B:303:0x0225, B:305:0x022b, B:309:0x0238, B:314:0x0240, B:316:0x024e, B:319:0x0259, B:321:0x0262, B:323:0x0265, B:325:0x026f, B:326:0x027d, B:328:0x0283, B:331:0x0291, B:334:0x0299, B:343:0x02a8, B:344:0x02ae, B:346:0x02b6, B:347:0x02bb, B:353:0x02c5, B:354:0x02cc, B:355:0x02cd, B:357:0x02d4, B:359:0x02d8, B:360:0x02db, B:362:0x02e1, B:366:0x02ef, B:368:0x02fd, B:72:0x030d, B:75:0x0315, B:77:0x031c, B:79:0x032b, B:81:0x0333, B:84:0x0338, B:86:0x033c, B:87:0x038e, B:89:0x0392, B:93:0x039c, B:94:0x03b6, B:97:0x0343, B:99:0x034b, B:101:0x034f, B:102:0x0352, B:103:0x035e, B:106:0x0367, B:108:0x036b, B:110:0x036e, B:112:0x0372, B:113:0x0376, B:114:0x0382, B:115:0x03b7, B:116:0x03d5, B:119:0x03da, B:124:0x03eb, B:126:0x03f1, B:128:0x03fd, B:129:0x0403, B:131:0x0408, B:133:0x059e, B:137:0x05a8, B:140:0x05b1, B:143:0x05c4, B:148:0x05be, B:152:0x05d0, B:155:0x05e3, B:157:0x05ec, B:160:0x05ff, B:162:0x0647, B:166:0x05f9, B:169:0x060a, B:172:0x061d, B:173:0x0617, B:176:0x0628, B:179:0x063b, B:180:0x0635, B:181:0x0642, B:182:0x05dd, B:183:0x0651, B:184:0x066b, B:185:0x040c, B:190:0x041c, B:195:0x042b, B:198:0x0442, B:200:0x044b, B:203:0x0457, B:205:0x0461, B:206:0x0468, B:215:0x046c, B:212:0x047f, B:213:0x0499, B:219:0x0465, B:220:0x0454, B:221:0x043c, B:224:0x049e, B:227:0x04b1, B:229:0x04c2, B:232:0x04d6, B:233:0x04dc, B:236:0x04e2, B:237:0x04ec, B:239:0x04f4, B:241:0x0506, B:244:0x050e, B:245:0x0510, B:247:0x0515, B:249:0x051e, B:251:0x0527, B:252:0x052a, B:261:0x0530, B:263:0x0537, B:258:0x0545, B:259:0x055f, B:267:0x0522, B:272:0x04cd, B:273:0x04ab, B:276:0x0566, B:278:0x0572, B:281:0x0585, B:283:0x0591, B:284:0x066c, B:286:0x067d, B:287:0x0681, B:296:0x068a, B:290:0x0696, B:293:0x06a3, B:294:0x06bd, B:381:0x01db, B:382:0x0209, B:442:0x00c5, B:445:0x00d6, B:449:0x00d0, B:387:0x00e9, B:389:0x00f3, B:390:0x00f6, B:394:0x00fb, B:395:0x0113, B:403:0x0126, B:405:0x012c, B:407:0x0131, B:409:0x013e, B:410:0x0142, B:414:0x0148, B:415:0x0164, B:416:0x0136, B:418:0x0165, B:419:0x0181, B:427:0x018b, B:430:0x019a, B:432:0x01a0, B:433:0x01c2, B:434:0x01c3, B:436:0x06be, B:437:0x06d8, B:439:0x06d9, B:440:0x06f3), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x05cc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0506 A[Catch: all -> 0x06f4, TryCatch #1 {all -> 0x06f4, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00bd, B:41:0x01cf, B:44:0x01e1, B:60:0x0200, B:62:0x020d, B:65:0x0214, B:302:0x021c, B:303:0x0225, B:305:0x022b, B:309:0x0238, B:314:0x0240, B:316:0x024e, B:319:0x0259, B:321:0x0262, B:323:0x0265, B:325:0x026f, B:326:0x027d, B:328:0x0283, B:331:0x0291, B:334:0x0299, B:343:0x02a8, B:344:0x02ae, B:346:0x02b6, B:347:0x02bb, B:353:0x02c5, B:354:0x02cc, B:355:0x02cd, B:357:0x02d4, B:359:0x02d8, B:360:0x02db, B:362:0x02e1, B:366:0x02ef, B:368:0x02fd, B:72:0x030d, B:75:0x0315, B:77:0x031c, B:79:0x032b, B:81:0x0333, B:84:0x0338, B:86:0x033c, B:87:0x038e, B:89:0x0392, B:93:0x039c, B:94:0x03b6, B:97:0x0343, B:99:0x034b, B:101:0x034f, B:102:0x0352, B:103:0x035e, B:106:0x0367, B:108:0x036b, B:110:0x036e, B:112:0x0372, B:113:0x0376, B:114:0x0382, B:115:0x03b7, B:116:0x03d5, B:119:0x03da, B:124:0x03eb, B:126:0x03f1, B:128:0x03fd, B:129:0x0403, B:131:0x0408, B:133:0x059e, B:137:0x05a8, B:140:0x05b1, B:143:0x05c4, B:148:0x05be, B:152:0x05d0, B:155:0x05e3, B:157:0x05ec, B:160:0x05ff, B:162:0x0647, B:166:0x05f9, B:169:0x060a, B:172:0x061d, B:173:0x0617, B:176:0x0628, B:179:0x063b, B:180:0x0635, B:181:0x0642, B:182:0x05dd, B:183:0x0651, B:184:0x066b, B:185:0x040c, B:190:0x041c, B:195:0x042b, B:198:0x0442, B:200:0x044b, B:203:0x0457, B:205:0x0461, B:206:0x0468, B:215:0x046c, B:212:0x047f, B:213:0x0499, B:219:0x0465, B:220:0x0454, B:221:0x043c, B:224:0x049e, B:227:0x04b1, B:229:0x04c2, B:232:0x04d6, B:233:0x04dc, B:236:0x04e2, B:237:0x04ec, B:239:0x04f4, B:241:0x0506, B:244:0x050e, B:245:0x0510, B:247:0x0515, B:249:0x051e, B:251:0x0527, B:252:0x052a, B:261:0x0530, B:263:0x0537, B:258:0x0545, B:259:0x055f, B:267:0x0522, B:272:0x04cd, B:273:0x04ab, B:276:0x0566, B:278:0x0572, B:281:0x0585, B:283:0x0591, B:284:0x066c, B:286:0x067d, B:287:0x0681, B:296:0x068a, B:290:0x0696, B:293:0x06a3, B:294:0x06bd, B:381:0x01db, B:382:0x0209, B:442:0x00c5, B:445:0x00d6, B:449:0x00d0, B:387:0x00e9, B:389:0x00f3, B:390:0x00f6, B:394:0x00fb, B:395:0x0113, B:403:0x0126, B:405:0x012c, B:407:0x0131, B:409:0x013e, B:410:0x0142, B:414:0x0148, B:415:0x0164, B:416:0x0136, B:418:0x0165, B:419:0x0181, B:427:0x018b, B:430:0x019a, B:432:0x01a0, B:433:0x01c2, B:434:0x01c3, B:436:0x06be, B:437:0x06d8, B:439:0x06d9, B:440:0x06f3), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0515 A[Catch: all -> 0x06f4, TryCatch #1 {all -> 0x06f4, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00bd, B:41:0x01cf, B:44:0x01e1, B:60:0x0200, B:62:0x020d, B:65:0x0214, B:302:0x021c, B:303:0x0225, B:305:0x022b, B:309:0x0238, B:314:0x0240, B:316:0x024e, B:319:0x0259, B:321:0x0262, B:323:0x0265, B:325:0x026f, B:326:0x027d, B:328:0x0283, B:331:0x0291, B:334:0x0299, B:343:0x02a8, B:344:0x02ae, B:346:0x02b6, B:347:0x02bb, B:353:0x02c5, B:354:0x02cc, B:355:0x02cd, B:357:0x02d4, B:359:0x02d8, B:360:0x02db, B:362:0x02e1, B:366:0x02ef, B:368:0x02fd, B:72:0x030d, B:75:0x0315, B:77:0x031c, B:79:0x032b, B:81:0x0333, B:84:0x0338, B:86:0x033c, B:87:0x038e, B:89:0x0392, B:93:0x039c, B:94:0x03b6, B:97:0x0343, B:99:0x034b, B:101:0x034f, B:102:0x0352, B:103:0x035e, B:106:0x0367, B:108:0x036b, B:110:0x036e, B:112:0x0372, B:113:0x0376, B:114:0x0382, B:115:0x03b7, B:116:0x03d5, B:119:0x03da, B:124:0x03eb, B:126:0x03f1, B:128:0x03fd, B:129:0x0403, B:131:0x0408, B:133:0x059e, B:137:0x05a8, B:140:0x05b1, B:143:0x05c4, B:148:0x05be, B:152:0x05d0, B:155:0x05e3, B:157:0x05ec, B:160:0x05ff, B:162:0x0647, B:166:0x05f9, B:169:0x060a, B:172:0x061d, B:173:0x0617, B:176:0x0628, B:179:0x063b, B:180:0x0635, B:181:0x0642, B:182:0x05dd, B:183:0x0651, B:184:0x066b, B:185:0x040c, B:190:0x041c, B:195:0x042b, B:198:0x0442, B:200:0x044b, B:203:0x0457, B:205:0x0461, B:206:0x0468, B:215:0x046c, B:212:0x047f, B:213:0x0499, B:219:0x0465, B:220:0x0454, B:221:0x043c, B:224:0x049e, B:227:0x04b1, B:229:0x04c2, B:232:0x04d6, B:233:0x04dc, B:236:0x04e2, B:237:0x04ec, B:239:0x04f4, B:241:0x0506, B:244:0x050e, B:245:0x0510, B:247:0x0515, B:249:0x051e, B:251:0x0527, B:252:0x052a, B:261:0x0530, B:263:0x0537, B:258:0x0545, B:259:0x055f, B:267:0x0522, B:272:0x04cd, B:273:0x04ab, B:276:0x0566, B:278:0x0572, B:281:0x0585, B:283:0x0591, B:284:0x066c, B:286:0x067d, B:287:0x0681, B:296:0x068a, B:290:0x0696, B:293:0x06a3, B:294:0x06bd, B:381:0x01db, B:382:0x0209, B:442:0x00c5, B:445:0x00d6, B:449:0x00d0, B:387:0x00e9, B:389:0x00f3, B:390:0x00f6, B:394:0x00fb, B:395:0x0113, B:403:0x0126, B:405:0x012c, B:407:0x0131, B:409:0x013e, B:410:0x0142, B:414:0x0148, B:415:0x0164, B:416:0x0136, B:418:0x0165, B:419:0x0181, B:427:0x018b, B:430:0x019a, B:432:0x01a0, B:433:0x01c2, B:434:0x01c3, B:436:0x06be, B:437:0x06d8, B:439:0x06d9, B:440:0x06f3), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x051e A[Catch: all -> 0x06f4, TryCatch #1 {all -> 0x06f4, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00bd, B:41:0x01cf, B:44:0x01e1, B:60:0x0200, B:62:0x020d, B:65:0x0214, B:302:0x021c, B:303:0x0225, B:305:0x022b, B:309:0x0238, B:314:0x0240, B:316:0x024e, B:319:0x0259, B:321:0x0262, B:323:0x0265, B:325:0x026f, B:326:0x027d, B:328:0x0283, B:331:0x0291, B:334:0x0299, B:343:0x02a8, B:344:0x02ae, B:346:0x02b6, B:347:0x02bb, B:353:0x02c5, B:354:0x02cc, B:355:0x02cd, B:357:0x02d4, B:359:0x02d8, B:360:0x02db, B:362:0x02e1, B:366:0x02ef, B:368:0x02fd, B:72:0x030d, B:75:0x0315, B:77:0x031c, B:79:0x032b, B:81:0x0333, B:84:0x0338, B:86:0x033c, B:87:0x038e, B:89:0x0392, B:93:0x039c, B:94:0x03b6, B:97:0x0343, B:99:0x034b, B:101:0x034f, B:102:0x0352, B:103:0x035e, B:106:0x0367, B:108:0x036b, B:110:0x036e, B:112:0x0372, B:113:0x0376, B:114:0x0382, B:115:0x03b7, B:116:0x03d5, B:119:0x03da, B:124:0x03eb, B:126:0x03f1, B:128:0x03fd, B:129:0x0403, B:131:0x0408, B:133:0x059e, B:137:0x05a8, B:140:0x05b1, B:143:0x05c4, B:148:0x05be, B:152:0x05d0, B:155:0x05e3, B:157:0x05ec, B:160:0x05ff, B:162:0x0647, B:166:0x05f9, B:169:0x060a, B:172:0x061d, B:173:0x0617, B:176:0x0628, B:179:0x063b, B:180:0x0635, B:181:0x0642, B:182:0x05dd, B:183:0x0651, B:184:0x066b, B:185:0x040c, B:190:0x041c, B:195:0x042b, B:198:0x0442, B:200:0x044b, B:203:0x0457, B:205:0x0461, B:206:0x0468, B:215:0x046c, B:212:0x047f, B:213:0x0499, B:219:0x0465, B:220:0x0454, B:221:0x043c, B:224:0x049e, B:227:0x04b1, B:229:0x04c2, B:232:0x04d6, B:233:0x04dc, B:236:0x04e2, B:237:0x04ec, B:239:0x04f4, B:241:0x0506, B:244:0x050e, B:245:0x0510, B:247:0x0515, B:249:0x051e, B:251:0x0527, B:252:0x052a, B:261:0x0530, B:263:0x0537, B:258:0x0545, B:259:0x055f, B:267:0x0522, B:272:0x04cd, B:273:0x04ab, B:276:0x0566, B:278:0x0572, B:281:0x0585, B:283:0x0591, B:284:0x066c, B:286:0x067d, B:287:0x0681, B:296:0x068a, B:290:0x0696, B:293:0x06a3, B:294:0x06bd, B:381:0x01db, B:382:0x0209, B:442:0x00c5, B:445:0x00d6, B:449:0x00d0, B:387:0x00e9, B:389:0x00f3, B:390:0x00f6, B:394:0x00fb, B:395:0x0113, B:403:0x0126, B:405:0x012c, B:407:0x0131, B:409:0x013e, B:410:0x0142, B:414:0x0148, B:415:0x0164, B:416:0x0136, B:418:0x0165, B:419:0x0181, B:427:0x018b, B:430:0x019a, B:432:0x01a0, B:433:0x01c2, B:434:0x01c3, B:436:0x06be, B:437:0x06d8, B:439:0x06d9, B:440:0x06f3), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0527 A[Catch: all -> 0x06f4, TryCatch #1 {all -> 0x06f4, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00bd, B:41:0x01cf, B:44:0x01e1, B:60:0x0200, B:62:0x020d, B:65:0x0214, B:302:0x021c, B:303:0x0225, B:305:0x022b, B:309:0x0238, B:314:0x0240, B:316:0x024e, B:319:0x0259, B:321:0x0262, B:323:0x0265, B:325:0x026f, B:326:0x027d, B:328:0x0283, B:331:0x0291, B:334:0x0299, B:343:0x02a8, B:344:0x02ae, B:346:0x02b6, B:347:0x02bb, B:353:0x02c5, B:354:0x02cc, B:355:0x02cd, B:357:0x02d4, B:359:0x02d8, B:360:0x02db, B:362:0x02e1, B:366:0x02ef, B:368:0x02fd, B:72:0x030d, B:75:0x0315, B:77:0x031c, B:79:0x032b, B:81:0x0333, B:84:0x0338, B:86:0x033c, B:87:0x038e, B:89:0x0392, B:93:0x039c, B:94:0x03b6, B:97:0x0343, B:99:0x034b, B:101:0x034f, B:102:0x0352, B:103:0x035e, B:106:0x0367, B:108:0x036b, B:110:0x036e, B:112:0x0372, B:113:0x0376, B:114:0x0382, B:115:0x03b7, B:116:0x03d5, B:119:0x03da, B:124:0x03eb, B:126:0x03f1, B:128:0x03fd, B:129:0x0403, B:131:0x0408, B:133:0x059e, B:137:0x05a8, B:140:0x05b1, B:143:0x05c4, B:148:0x05be, B:152:0x05d0, B:155:0x05e3, B:157:0x05ec, B:160:0x05ff, B:162:0x0647, B:166:0x05f9, B:169:0x060a, B:172:0x061d, B:173:0x0617, B:176:0x0628, B:179:0x063b, B:180:0x0635, B:181:0x0642, B:182:0x05dd, B:183:0x0651, B:184:0x066b, B:185:0x040c, B:190:0x041c, B:195:0x042b, B:198:0x0442, B:200:0x044b, B:203:0x0457, B:205:0x0461, B:206:0x0468, B:215:0x046c, B:212:0x047f, B:213:0x0499, B:219:0x0465, B:220:0x0454, B:221:0x043c, B:224:0x049e, B:227:0x04b1, B:229:0x04c2, B:232:0x04d6, B:233:0x04dc, B:236:0x04e2, B:237:0x04ec, B:239:0x04f4, B:241:0x0506, B:244:0x050e, B:245:0x0510, B:247:0x0515, B:249:0x051e, B:251:0x0527, B:252:0x052a, B:261:0x0530, B:263:0x0537, B:258:0x0545, B:259:0x055f, B:267:0x0522, B:272:0x04cd, B:273:0x04ab, B:276:0x0566, B:278:0x0572, B:281:0x0585, B:283:0x0591, B:284:0x066c, B:286:0x067d, B:287:0x0681, B:296:0x068a, B:290:0x0696, B:293:0x06a3, B:294:0x06bd, B:381:0x01db, B:382:0x0209, B:442:0x00c5, B:445:0x00d6, B:449:0x00d0, B:387:0x00e9, B:389:0x00f3, B:390:0x00f6, B:394:0x00fb, B:395:0x0113, B:403:0x0126, B:405:0x012c, B:407:0x0131, B:409:0x013e, B:410:0x0142, B:414:0x0148, B:415:0x0164, B:416:0x0136, B:418:0x0165, B:419:0x0181, B:427:0x018b, B:430:0x019a, B:432:0x01a0, B:433:0x01c2, B:434:0x01c3, B:436:0x06be, B:437:0x06d8, B:439:0x06d9, B:440:0x06f3), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0530 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0522 A[Catch: all -> 0x06f4, TryCatch #1 {all -> 0x06f4, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00bd, B:41:0x01cf, B:44:0x01e1, B:60:0x0200, B:62:0x020d, B:65:0x0214, B:302:0x021c, B:303:0x0225, B:305:0x022b, B:309:0x0238, B:314:0x0240, B:316:0x024e, B:319:0x0259, B:321:0x0262, B:323:0x0265, B:325:0x026f, B:326:0x027d, B:328:0x0283, B:331:0x0291, B:334:0x0299, B:343:0x02a8, B:344:0x02ae, B:346:0x02b6, B:347:0x02bb, B:353:0x02c5, B:354:0x02cc, B:355:0x02cd, B:357:0x02d4, B:359:0x02d8, B:360:0x02db, B:362:0x02e1, B:366:0x02ef, B:368:0x02fd, B:72:0x030d, B:75:0x0315, B:77:0x031c, B:79:0x032b, B:81:0x0333, B:84:0x0338, B:86:0x033c, B:87:0x038e, B:89:0x0392, B:93:0x039c, B:94:0x03b6, B:97:0x0343, B:99:0x034b, B:101:0x034f, B:102:0x0352, B:103:0x035e, B:106:0x0367, B:108:0x036b, B:110:0x036e, B:112:0x0372, B:113:0x0376, B:114:0x0382, B:115:0x03b7, B:116:0x03d5, B:119:0x03da, B:124:0x03eb, B:126:0x03f1, B:128:0x03fd, B:129:0x0403, B:131:0x0408, B:133:0x059e, B:137:0x05a8, B:140:0x05b1, B:143:0x05c4, B:148:0x05be, B:152:0x05d0, B:155:0x05e3, B:157:0x05ec, B:160:0x05ff, B:162:0x0647, B:166:0x05f9, B:169:0x060a, B:172:0x061d, B:173:0x0617, B:176:0x0628, B:179:0x063b, B:180:0x0635, B:181:0x0642, B:182:0x05dd, B:183:0x0651, B:184:0x066b, B:185:0x040c, B:190:0x041c, B:195:0x042b, B:198:0x0442, B:200:0x044b, B:203:0x0457, B:205:0x0461, B:206:0x0468, B:215:0x046c, B:212:0x047f, B:213:0x0499, B:219:0x0465, B:220:0x0454, B:221:0x043c, B:224:0x049e, B:227:0x04b1, B:229:0x04c2, B:232:0x04d6, B:233:0x04dc, B:236:0x04e2, B:237:0x04ec, B:239:0x04f4, B:241:0x0506, B:244:0x050e, B:245:0x0510, B:247:0x0515, B:249:0x051e, B:251:0x0527, B:252:0x052a, B:261:0x0530, B:263:0x0537, B:258:0x0545, B:259:0x055f, B:267:0x0522, B:272:0x04cd, B:273:0x04ab, B:276:0x0566, B:278:0x0572, B:281:0x0585, B:283:0x0591, B:284:0x066c, B:286:0x067d, B:287:0x0681, B:296:0x068a, B:290:0x0696, B:293:0x06a3, B:294:0x06bd, B:381:0x01db, B:382:0x0209, B:442:0x00c5, B:445:0x00d6, B:449:0x00d0, B:387:0x00e9, B:389:0x00f3, B:390:0x00f6, B:394:0x00fb, B:395:0x0113, B:403:0x0126, B:405:0x012c, B:407:0x0131, B:409:0x013e, B:410:0x0142, B:414:0x0148, B:415:0x0164, B:416:0x0136, B:418:0x0165, B:419:0x0181, B:427:0x018b, B:430:0x019a, B:432:0x01a0, B:433:0x01c2, B:434:0x01c3, B:436:0x06be, B:437:0x06d8, B:439:0x06d9, B:440:0x06f3), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0209 A[Catch: all -> 0x06f4, TryCatch #1 {all -> 0x06f4, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00bd, B:41:0x01cf, B:44:0x01e1, B:60:0x0200, B:62:0x020d, B:65:0x0214, B:302:0x021c, B:303:0x0225, B:305:0x022b, B:309:0x0238, B:314:0x0240, B:316:0x024e, B:319:0x0259, B:321:0x0262, B:323:0x0265, B:325:0x026f, B:326:0x027d, B:328:0x0283, B:331:0x0291, B:334:0x0299, B:343:0x02a8, B:344:0x02ae, B:346:0x02b6, B:347:0x02bb, B:353:0x02c5, B:354:0x02cc, B:355:0x02cd, B:357:0x02d4, B:359:0x02d8, B:360:0x02db, B:362:0x02e1, B:366:0x02ef, B:368:0x02fd, B:72:0x030d, B:75:0x0315, B:77:0x031c, B:79:0x032b, B:81:0x0333, B:84:0x0338, B:86:0x033c, B:87:0x038e, B:89:0x0392, B:93:0x039c, B:94:0x03b6, B:97:0x0343, B:99:0x034b, B:101:0x034f, B:102:0x0352, B:103:0x035e, B:106:0x0367, B:108:0x036b, B:110:0x036e, B:112:0x0372, B:113:0x0376, B:114:0x0382, B:115:0x03b7, B:116:0x03d5, B:119:0x03da, B:124:0x03eb, B:126:0x03f1, B:128:0x03fd, B:129:0x0403, B:131:0x0408, B:133:0x059e, B:137:0x05a8, B:140:0x05b1, B:143:0x05c4, B:148:0x05be, B:152:0x05d0, B:155:0x05e3, B:157:0x05ec, B:160:0x05ff, B:162:0x0647, B:166:0x05f9, B:169:0x060a, B:172:0x061d, B:173:0x0617, B:176:0x0628, B:179:0x063b, B:180:0x0635, B:181:0x0642, B:182:0x05dd, B:183:0x0651, B:184:0x066b, B:185:0x040c, B:190:0x041c, B:195:0x042b, B:198:0x0442, B:200:0x044b, B:203:0x0457, B:205:0x0461, B:206:0x0468, B:215:0x046c, B:212:0x047f, B:213:0x0499, B:219:0x0465, B:220:0x0454, B:221:0x043c, B:224:0x049e, B:227:0x04b1, B:229:0x04c2, B:232:0x04d6, B:233:0x04dc, B:236:0x04e2, B:237:0x04ec, B:239:0x04f4, B:241:0x0506, B:244:0x050e, B:245:0x0510, B:247:0x0515, B:249:0x051e, B:251:0x0527, B:252:0x052a, B:261:0x0530, B:263:0x0537, B:258:0x0545, B:259:0x055f, B:267:0x0522, B:272:0x04cd, B:273:0x04ab, B:276:0x0566, B:278:0x0572, B:281:0x0585, B:283:0x0591, B:284:0x066c, B:286:0x067d, B:287:0x0681, B:296:0x068a, B:290:0x0696, B:293:0x06a3, B:294:0x06bd, B:381:0x01db, B:382:0x0209, B:442:0x00c5, B:445:0x00d6, B:449:0x00d0, B:387:0x00e9, B:389:0x00f3, B:390:0x00f6, B:394:0x00fb, B:395:0x0113, B:403:0x0126, B:405:0x012c, B:407:0x0131, B:409:0x013e, B:410:0x0142, B:414:0x0148, B:415:0x0164, B:416:0x0136, B:418:0x0165, B:419:0x0181, B:427:0x018b, B:430:0x019a, B:432:0x01a0, B:433:0x01c2, B:434:0x01c3, B:436:0x06be, B:437:0x06d8, B:439:0x06d9, B:440:0x06f3), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01cf A[Catch: all -> 0x06f4, TryCatch #1 {all -> 0x06f4, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00bd, B:41:0x01cf, B:44:0x01e1, B:60:0x0200, B:62:0x020d, B:65:0x0214, B:302:0x021c, B:303:0x0225, B:305:0x022b, B:309:0x0238, B:314:0x0240, B:316:0x024e, B:319:0x0259, B:321:0x0262, B:323:0x0265, B:325:0x026f, B:326:0x027d, B:328:0x0283, B:331:0x0291, B:334:0x0299, B:343:0x02a8, B:344:0x02ae, B:346:0x02b6, B:347:0x02bb, B:353:0x02c5, B:354:0x02cc, B:355:0x02cd, B:357:0x02d4, B:359:0x02d8, B:360:0x02db, B:362:0x02e1, B:366:0x02ef, B:368:0x02fd, B:72:0x030d, B:75:0x0315, B:77:0x031c, B:79:0x032b, B:81:0x0333, B:84:0x0338, B:86:0x033c, B:87:0x038e, B:89:0x0392, B:93:0x039c, B:94:0x03b6, B:97:0x0343, B:99:0x034b, B:101:0x034f, B:102:0x0352, B:103:0x035e, B:106:0x0367, B:108:0x036b, B:110:0x036e, B:112:0x0372, B:113:0x0376, B:114:0x0382, B:115:0x03b7, B:116:0x03d5, B:119:0x03da, B:124:0x03eb, B:126:0x03f1, B:128:0x03fd, B:129:0x0403, B:131:0x0408, B:133:0x059e, B:137:0x05a8, B:140:0x05b1, B:143:0x05c4, B:148:0x05be, B:152:0x05d0, B:155:0x05e3, B:157:0x05ec, B:160:0x05ff, B:162:0x0647, B:166:0x05f9, B:169:0x060a, B:172:0x061d, B:173:0x0617, B:176:0x0628, B:179:0x063b, B:180:0x0635, B:181:0x0642, B:182:0x05dd, B:183:0x0651, B:184:0x066b, B:185:0x040c, B:190:0x041c, B:195:0x042b, B:198:0x0442, B:200:0x044b, B:203:0x0457, B:205:0x0461, B:206:0x0468, B:215:0x046c, B:212:0x047f, B:213:0x0499, B:219:0x0465, B:220:0x0454, B:221:0x043c, B:224:0x049e, B:227:0x04b1, B:229:0x04c2, B:232:0x04d6, B:233:0x04dc, B:236:0x04e2, B:237:0x04ec, B:239:0x04f4, B:241:0x0506, B:244:0x050e, B:245:0x0510, B:247:0x0515, B:249:0x051e, B:251:0x0527, B:252:0x052a, B:261:0x0530, B:263:0x0537, B:258:0x0545, B:259:0x055f, B:267:0x0522, B:272:0x04cd, B:273:0x04ab, B:276:0x0566, B:278:0x0572, B:281:0x0585, B:283:0x0591, B:284:0x066c, B:286:0x067d, B:287:0x0681, B:296:0x068a, B:290:0x0696, B:293:0x06a3, B:294:0x06bd, B:381:0x01db, B:382:0x0209, B:442:0x00c5, B:445:0x00d6, B:449:0x00d0, B:387:0x00e9, B:389:0x00f3, B:390:0x00f6, B:394:0x00fb, B:395:0x0113, B:403:0x0126, B:405:0x012c, B:407:0x0131, B:409:0x013e, B:410:0x0142, B:414:0x0148, B:415:0x0164, B:416:0x0136, B:418:0x0165, B:419:0x0181, B:427:0x018b, B:430:0x019a, B:432:0x01a0, B:433:0x01c2, B:434:0x01c3, B:436:0x06be, B:437:0x06d8, B:439:0x06d9, B:440:0x06f3), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.alibaba.fastjson.parser.DefaultJSONParser] */
    /* JADX WARN: Type inference failed for: r6v60, types: [java.util.Date] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object parseObject(java.util.Map r19, java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 1786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseObject(java.util.Map, java.lang.Object):java.lang.Object");
    }

    public <T> T parseObject(Class<T> cls) {
        return (T) parseObject(cls, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return (T) parseObject(type, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T parseObject(Type type, Object obj) {
        if (this.lexer.token == 8) {
            this.lexer.nextToken();
            return null;
        }
        if (this.lexer.token == 4) {
            if (type == byte[].class) {
                T t = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t;
            }
            if (type == char[].class) {
                String stringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) stringVal.toCharArray();
            }
        }
        try {
            return (T) this.config.getDeserializer(type).deserialze(this, type, obj);
        } catch (JSONException e) {
            throw e;
        } catch (Exception e2) {
            throw new JSONException(e2.getMessage(), e2);
        }
    }

    public <T> List<T> parseArray(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        parseArray((Class<?>) cls, (Collection) arrayList);
        return arrayList;
    }

    public void parseArray(Class<?> cls, Collection collection) {
        parseArray((Type) cls, collection);
    }

    public void parseArray(Type type, Collection collection) {
        parseArray(type, collection, null);
    }

    public void parseArray(Type type, Collection collection, Object obj) {
        ObjectDeserializer deserializer;
        String str;
        if (this.lexer.token == 21 || this.lexer.token == 22) {
            this.lexer.nextToken();
        }
        if (this.lexer.token != 14) {
            throw new JSONException("exepct '[', but " + JSONToken.name(this.lexer.token) + ", " + this.lexer.info());
        }
        if (Integer.TYPE == type) {
            deserializer = IntegerCodec.instance;
            this.lexer.nextToken(2);
        } else if (String.class == type) {
            deserializer = StringCodec.instance;
            this.lexer.nextToken(4);
        } else {
            deserializer = this.config.getDeserializer(type);
            this.lexer.nextToken(12);
        }
        ParseContext parseContext = this.contex;
        if (!this.lexer.disableCircularReferenceDetect) {
            setContext(this.contex, collection, obj);
        }
        int i = 0;
        while (true) {
            try {
                if (this.lexer.token == 16) {
                    this.lexer.nextToken();
                } else if (this.lexer.token != 15) {
                    Object obj2 = null;
                    String obj3 = null;
                    if (Integer.TYPE == type) {
                        collection.add(IntegerCodec.instance.deserialze(this, null, null));
                    } else if (String.class == type) {
                        if (this.lexer.token == 4) {
                            str = this.lexer.stringVal();
                            this.lexer.nextToken(16);
                        } else {
                            Object parse = parse();
                            if (parse != null) {
                                obj3 = parse.toString();
                            }
                            str = obj3;
                        }
                        collection.add(str);
                    } else {
                        if (this.lexer.token == 8) {
                            this.lexer.nextToken();
                        } else {
                            obj2 = deserializer.deserialze(this, type, Integer.valueOf(i));
                        }
                        collection.add(obj2);
                        if (this.resolveStatus == 1) {
                            checkListResolve(collection);
                        }
                    }
                    if (this.lexer.token == 16) {
                        this.lexer.nextToken();
                    }
                    i++;
                } else {
                    this.contex = parseContext;
                    this.lexer.nextToken(16);
                    return;
                }
            } catch (Throwable th) {
                this.contex = parseContext;
                throw th;
            }
        }
    }

    public Object[] parseArray(Type[] typeArr) {
        Object cast;
        Class<?> cls;
        boolean z;
        int i = 8;
        if (this.lexer.token == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        if (this.lexer.token != 14) {
            throw new JSONException("syntax error, " + this.lexer.info());
        }
        Object[] objArr = new Object[typeArr.length];
        if (typeArr.length == 0) {
            this.lexer.nextToken(15);
            if (this.lexer.token != 15) {
                throw new JSONException("syntax error, " + this.lexer.info());
            }
            this.lexer.nextToken(16);
            return new Object[0];
        }
        this.lexer.nextToken(2);
        int i2 = 0;
        while (i2 < typeArr.length) {
            if (this.lexer.token == i) {
                this.lexer.nextToken(16);
                cast = null;
            } else {
                Type type = typeArr[i2];
                if (type == Integer.TYPE || type == Integer.class) {
                    if (this.lexer.token == 2) {
                        cast = Integer.valueOf(this.lexer.intValue());
                        this.lexer.nextToken(16);
                    } else {
                        cast = TypeUtils.cast(parse(), type, this.config);
                    }
                } else if (type == String.class) {
                    if (this.lexer.token == 4) {
                        cast = this.lexer.stringVal();
                        this.lexer.nextToken(16);
                    } else {
                        cast = TypeUtils.cast(parse(), type, this.config);
                    }
                } else {
                    if (i2 == typeArr.length - 1 && (type instanceof Class)) {
                        Class cls2 = (Class) type;
                        z = cls2.isArray();
                        cls = cls2.getComponentType();
                    } else {
                        cls = null;
                        z = false;
                    }
                    if (z && this.lexer.token != 14) {
                        ArrayList arrayList = new ArrayList();
                        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
                        if (this.lexer.token != 15) {
                            while (true) {
                                arrayList.add(deserializer.deserialze(this, type, null));
                                if (this.lexer.token != 16) {
                                    break;
                                }
                                this.lexer.nextToken(12);
                            }
                            if (this.lexer.token != 15) {
                                throw new JSONException("syntax error, " + this.lexer.info());
                            }
                        }
                        cast = TypeUtils.cast(arrayList, type, this.config);
                    } else {
                        cast = this.config.getDeserializer(type).deserialze(this, type, null);
                    }
                }
            }
            objArr[i2] = cast;
            if (this.lexer.token == 15) {
                break;
            }
            if (this.lexer.token != 16) {
                throw new JSONException("syntax error, " + this.lexer.info());
            }
            if (i2 == typeArr.length - 1) {
                this.lexer.nextToken(15);
            } else {
                this.lexer.nextToken(2);
            }
            i2++;
            i = 8;
        }
        if (this.lexer.token != 15) {
            throw new JSONException("syntax error, " + this.lexer.info());
        }
        this.lexer.nextToken(16);
        return objArr;
    }

    public void parseObject(Object obj) {
        Object deserialze;
        Class<?> cls = obj.getClass();
        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        int i = this.lexer.token;
        if (i != 12 && i != 16) {
            throw new JSONException("syntax error, expect {, actual " + JSONToken.name(i));
        }
        while (true) {
            String scanSymbol = this.lexer.scanSymbol(this.symbolTable);
            if (scanSymbol == null) {
                if (this.lexer.token == 13) {
                    this.lexer.nextToken(16);
                    return;
                } else if (this.lexer.token == 16) {
                    continue;
                }
            }
            FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(scanSymbol) : null;
            if (fieldDeserializer == null) {
                if ((this.lexer.features & Feature.IgnoreNotMatch.mask) == 0) {
                    throw new JSONException("setter not found, class " + cls.getName() + ", property " + scanSymbol);
                }
                this.lexer.nextTokenWithChar(':');
                parse();
                if (this.lexer.token == 13) {
                    this.lexer.nextToken();
                    return;
                }
            } else {
                Class<?> cls2 = fieldDeserializer.fieldInfo.fieldClass;
                Type type = fieldDeserializer.fieldInfo.fieldType;
                if (cls2 == Integer.TYPE) {
                    this.lexer.nextTokenWithChar(':');
                    deserialze = IntegerCodec.instance.deserialze(this, type, null);
                } else if (cls2 == String.class) {
                    this.lexer.nextTokenWithChar(':');
                    deserialze = parseString();
                } else if (cls2 == Long.TYPE) {
                    this.lexer.nextTokenWithChar(':');
                    deserialze = IntegerCodec.instance.deserialze(this, type, null);
                } else {
                    ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                    this.lexer.nextTokenWithChar(':');
                    deserialze = deserializer2.deserialze(this, type, null);
                }
                fieldDeserializer.setValue(obj, deserialze);
                if (this.lexer.token != 16 && this.lexer.token == 13) {
                    this.lexer.nextToken(16);
                    return;
                }
            }
        }
    }

    public Object parseArrayWithType(Type type) {
        if (this.lexer.token == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length != 1) {
            throw new JSONException("not support type " + type);
        }
        Type type2 = actualTypeArguments[0];
        if (type2 instanceof Class) {
            ArrayList arrayList = new ArrayList();
            parseArray((Class<?>) type2, (Collection) arrayList);
            return arrayList;
        }
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type2;
            Type type3 = wildcardType.getUpperBounds()[0];
            if (Object.class.equals(type3)) {
                if (wildcardType.getLowerBounds().length == 0) {
                    return parse();
                }
                throw new JSONException("not support type : " + type);
            }
            ArrayList arrayList2 = new ArrayList();
            parseArray((Class<?>) type3, (Collection) arrayList2);
            return arrayList2;
        }
        if (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length != 1) {
                throw new JSONException("not support : " + typeVariable);
            }
            Type type4 = bounds[0];
            if (type4 instanceof Class) {
                ArrayList arrayList3 = new ArrayList();
                parseArray((Class<?>) type4, (Collection) arrayList3);
                return arrayList3;
            }
        }
        if (type2 instanceof ParameterizedType) {
            ArrayList arrayList4 = new ArrayList();
            parseArray((ParameterizedType) type2, arrayList4);
            return arrayList4;
        }
        throw new JSONException("TODO : " + type);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkListResolve(Collection collection) {
        if (collection instanceof List) {
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = new ResolveFieldDeserializer(this, (List) collection, collection.size() - 1);
            lastResolveTask.ownerContext = this.contex;
            this.resolveStatus = 0;
            return;
        }
        ResolveTask lastResolveTask2 = getLastResolveTask();
        lastResolveTask2.fieldDeserializer = new ResolveFieldDeserializer(collection);
        lastResolveTask2.ownerContext = this.contex;
        this.resolveStatus = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkMapResolve(Map map, Object obj) {
        ResolveFieldDeserializer resolveFieldDeserializer = new ResolveFieldDeserializer(map, obj);
        ResolveTask lastResolveTask = getLastResolveTask();
        lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
        lastResolveTask.ownerContext = this.contex;
        this.resolveStatus = 0;
    }

    public Object parseObject(Map map) {
        return parseObject(map, (Object) null);
    }

    public JSONObject parseObject() {
        return (JSONObject) parseObject((this.lexer.features & Feature.OrderedField.mask) != 0 ? new JSONObject(new LinkedHashMap()) : new JSONObject(), (Object) null);
    }

    public final void parseArray(Collection collection) {
        parseArray(collection, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x01fc A[Catch: all -> 0x0273, TryCatch #0 {all -> 0x0273, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0067, B:28:0x008b, B:30:0x0091, B:32:0x009f, B:35:0x00b7, B:37:0x00c0, B:43:0x00ca, B:44:0x00af, B:48:0x00d3, B:51:0x00eb, B:53:0x00f4, B:54:0x00f7, B:59:0x00e3, B:46:0x0101, B:60:0x0106, B:62:0x010c, B:84:0x013b, B:86:0x020a, B:88:0x0211, B:89:0x0214, B:91:0x021a, B:93:0x0220, B:98:0x0235, B:101:0x0246, B:104:0x0262, B:106:0x025a, B:107:0x0265, B:110:0x0143, B:115:0x014d, B:116:0x015a, B:118:0x0162, B:119:0x0169, B:120:0x016a, B:122:0x0177, B:123:0x0187, B:124:0x0182, B:125:0x0190, B:126:0x0198, B:127:0x01a2, B:128:0x01ac, B:130:0x01c4, B:132:0x01cf, B:133:0x01d5, B:134:0x01da, B:136:0x01e7, B:137:0x01f6, B:138:0x01ef, B:139:0x01fc, B:140:0x005f, B:141:0x006e, B:142:0x0075, B:145:0x0082), top: B:10:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009f A[Catch: all -> 0x0273, TryCatch #0 {all -> 0x0273, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0067, B:28:0x008b, B:30:0x0091, B:32:0x009f, B:35:0x00b7, B:37:0x00c0, B:43:0x00ca, B:44:0x00af, B:48:0x00d3, B:51:0x00eb, B:53:0x00f4, B:54:0x00f7, B:59:0x00e3, B:46:0x0101, B:60:0x0106, B:62:0x010c, B:84:0x013b, B:86:0x020a, B:88:0x0211, B:89:0x0214, B:91:0x021a, B:93:0x0220, B:98:0x0235, B:101:0x0246, B:104:0x0262, B:106:0x025a, B:107:0x0265, B:110:0x0143, B:115:0x014d, B:116:0x015a, B:118:0x0162, B:119:0x0169, B:120:0x016a, B:122:0x0177, B:123:0x0187, B:124:0x0182, B:125:0x0190, B:126:0x0198, B:127:0x01a2, B:128:0x01ac, B:130:0x01c4, B:132:0x01cf, B:133:0x01d5, B:134:0x01da, B:136:0x01e7, B:137:0x01f6, B:138:0x01ef, B:139:0x01fc, B:140:0x005f, B:141:0x006e, B:142:0x0075, B:145:0x0082), top: B:10:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010c A[Catch: all -> 0x0273, LOOP:1: B:61:0x010a->B:62:0x010c, LOOP_END, TryCatch #0 {all -> 0x0273, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0067, B:28:0x008b, B:30:0x0091, B:32:0x009f, B:35:0x00b7, B:37:0x00c0, B:43:0x00ca, B:44:0x00af, B:48:0x00d3, B:51:0x00eb, B:53:0x00f4, B:54:0x00f7, B:59:0x00e3, B:46:0x0101, B:60:0x0106, B:62:0x010c, B:84:0x013b, B:86:0x020a, B:88:0x0211, B:89:0x0214, B:91:0x021a, B:93:0x0220, B:98:0x0235, B:101:0x0246, B:104:0x0262, B:106:0x025a, B:107:0x0265, B:110:0x0143, B:115:0x014d, B:116:0x015a, B:118:0x0162, B:119:0x0169, B:120:0x016a, B:122:0x0177, B:123:0x0187, B:124:0x0182, B:125:0x0190, B:126:0x0198, B:127:0x01a2, B:128:0x01ac, B:130:0x01c4, B:132:0x01cf, B:133:0x01d5, B:134:0x01da, B:136:0x01e7, B:137:0x01f6, B:138:0x01ef, B:139:0x01fc, B:140:0x005f, B:141:0x006e, B:142:0x0075, B:145:0x0082), top: B:10:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0211 A[Catch: all -> 0x0273, TryCatch #0 {all -> 0x0273, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0067, B:28:0x008b, B:30:0x0091, B:32:0x009f, B:35:0x00b7, B:37:0x00c0, B:43:0x00ca, B:44:0x00af, B:48:0x00d3, B:51:0x00eb, B:53:0x00f4, B:54:0x00f7, B:59:0x00e3, B:46:0x0101, B:60:0x0106, B:62:0x010c, B:84:0x013b, B:86:0x020a, B:88:0x0211, B:89:0x0214, B:91:0x021a, B:93:0x0220, B:98:0x0235, B:101:0x0246, B:104:0x0262, B:106:0x025a, B:107:0x0265, B:110:0x0143, B:115:0x014d, B:116:0x015a, B:118:0x0162, B:119:0x0169, B:120:0x016a, B:122:0x0177, B:123:0x0187, B:124:0x0182, B:125:0x0190, B:126:0x0198, B:127:0x01a2, B:128:0x01ac, B:130:0x01c4, B:132:0x01cf, B:133:0x01d5, B:134:0x01da, B:136:0x01e7, B:137:0x01f6, B:138:0x01ef, B:139:0x01fc, B:140:0x005f, B:141:0x006e, B:142:0x0075, B:145:0x0082), top: B:10:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x021a A[Catch: all -> 0x0273, TryCatch #0 {all -> 0x0273, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0067, B:28:0x008b, B:30:0x0091, B:32:0x009f, B:35:0x00b7, B:37:0x00c0, B:43:0x00ca, B:44:0x00af, B:48:0x00d3, B:51:0x00eb, B:53:0x00f4, B:54:0x00f7, B:59:0x00e3, B:46:0x0101, B:60:0x0106, B:62:0x010c, B:84:0x013b, B:86:0x020a, B:88:0x0211, B:89:0x0214, B:91:0x021a, B:93:0x0220, B:98:0x0235, B:101:0x0246, B:104:0x0262, B:106:0x025a, B:107:0x0265, B:110:0x0143, B:115:0x014d, B:116:0x015a, B:118:0x0162, B:119:0x0169, B:120:0x016a, B:122:0x0177, B:123:0x0187, B:124:0x0182, B:125:0x0190, B:126:0x0198, B:127:0x01a2, B:128:0x01ac, B:130:0x01c4, B:132:0x01cf, B:133:0x01d5, B:134:0x01da, B:136:0x01e7, B:137:0x01f6, B:138:0x01ef, B:139:0x01fc, B:140:0x005f, B:141:0x006e, B:142:0x0075, B:145:0x0082), top: B:10:0x002a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void parseArray(java.util.Collection r17, java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseArray(java.util.Collection, java.lang.Object):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addResolveTask(ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ResolveTask getLastResolveTask() {
        return this.resolveTaskList.get(r1.size() - 1);
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public void setContext(ParseContext parseContext) {
        if (this.lexer.disableCircularReferenceDetect) {
            return;
        }
        this.contex = parseContext;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void popContext() {
        this.contex = this.contex.parent;
        ParseContext[] parseContextArr = this.contextArray;
        int i = this.contextArrayIndex;
        parseContextArr[i - 1] = null;
        this.contextArrayIndex = i - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ParseContext setContext(ParseContext parseContext, Object obj, Object obj2) {
        if (this.lexer.disableCircularReferenceDetect) {
            return null;
        }
        this.contex = new ParseContext(parseContext, obj, obj2);
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= parseContextArr.length) {
            ParseContext[] parseContextArr2 = new ParseContext[(parseContextArr.length * 3) / 2];
            System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        ParseContext[] parseContextArr3 = this.contextArray;
        ParseContext parseContext2 = this.contex;
        parseContextArr3[i] = parseContext2;
        return parseContext2;
    }

    public Object parse() {
        return parse(null);
    }

    public Object parse(Object obj) {
        int i = this.lexer.token;
        if (i == 2) {
            Number integerValue = this.lexer.integerValue();
            this.lexer.nextToken();
            return integerValue;
        }
        if (i == 3) {
            Number decimalValue = this.lexer.decimalValue((this.lexer.features & Feature.UseBigDecimal.mask) != 0);
            this.lexer.nextToken();
            return decimalValue;
        }
        if (i == 4) {
            String stringVal = this.lexer.stringVal();
            this.lexer.nextToken(16);
            if ((this.lexer.features & Feature.AllowISO8601DateFormat.mask) != 0) {
                JSONLexer jSONLexer = new JSONLexer(stringVal);
                try {
                    if (jSONLexer.scanISO8601DateIfMatch(true)) {
                        return jSONLexer.calendar.getTime();
                    }
                } finally {
                    jSONLexer.close();
                }
            }
            return stringVal;
        }
        if (i == 12) {
            return parseObject((this.lexer.features & Feature.OrderedField.mask) != 0 ? new JSONObject(new LinkedHashMap()) : new JSONObject(), obj);
        }
        if (i == 14) {
            JSONArray jSONArray = new JSONArray();
            parseArray(jSONArray, obj);
            return jSONArray;
        }
        switch (i) {
            case 6:
                this.lexer.nextToken(16);
                return Boolean.TRUE;
            case 7:
                this.lexer.nextToken(16);
                return Boolean.FALSE;
            case 8:
                break;
            case 9:
                this.lexer.nextToken(18);
                if (this.lexer.token != 18) {
                    throw new JSONException("syntax error, " + this.lexer.info());
                }
                this.lexer.nextToken(10);
                accept(10);
                long longValue = this.lexer.integerValue().longValue();
                accept(2);
                accept(11);
                return new Date(longValue);
            default:
                switch (i) {
                    case 20:
                        if (this.lexer.isBlankInput()) {
                            return null;
                        }
                        throw new JSONException("syntax error, " + this.lexer.info());
                    case 21:
                        this.lexer.nextToken();
                        HashSet hashSet = new HashSet();
                        parseArray(hashSet, obj);
                        return hashSet;
                    case 22:
                        this.lexer.nextToken();
                        TreeSet treeSet = new TreeSet();
                        parseArray(treeSet, obj);
                        return treeSet;
                    case 23:
                        break;
                    default:
                        throw new JSONException("syntax error, " + this.lexer.info());
                }
        }
        this.lexer.nextToken();
        return null;
    }

    public void config(Feature feature, boolean z) {
        this.lexer.config(feature, z);
    }

    public final void accept(int i) {
        if (this.lexer.token == i) {
            this.lexer.nextToken();
            return;
        }
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(this.lexer.token));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            if (this.lexer.token == 20) {
            } else {
                throw new JSONException("not close json text, token : " + JSONToken.name(this.lexer.token));
            }
        } finally {
            this.lexer.close();
        }
    }

    public void handleResovleTask(Object obj) {
        List<ResolveTask> list = this.resolveTaskList;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ResolveTask resolveTask = this.resolveTaskList.get(i);
            FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
            if (fieldDeserializer != null) {
                Object obj2 = null;
                Object obj3 = resolveTask.ownerContext != null ? resolveTask.ownerContext.object : null;
                String str = resolveTask.referenceValue;
                if (str.startsWith("$")) {
                    for (int i2 = 0; i2 < this.contextArrayIndex; i2++) {
                        if (str.equals(this.contextArray[i2].toString())) {
                            obj2 = this.contextArray[i2].object;
                        }
                    }
                } else {
                    obj2 = resolveTask.context.object;
                }
                fieldDeserializer.setValue(obj3, obj2);
            }
        }
    }

    public String parseString() {
        int i = this.lexer.token;
        if (i != 4) {
            if (i == 2) {
                String numberString = this.lexer.numberString();
                this.lexer.nextToken(16);
                return numberString;
            }
            Object parse = parse();
            if (parse == null) {
                return null;
            }
            return parse.toString();
        }
        String stringVal = this.lexer.stringVal();
        char c = this.lexer.ch;
        char c2 = JSONLexer.EOI;
        if (c == ',') {
            JSONLexer jSONLexer = this.lexer;
            int i2 = jSONLexer.bp + 1;
            jSONLexer.bp = i2;
            JSONLexer jSONLexer2 = this.lexer;
            if (i2 < jSONLexer2.len) {
                c2 = this.lexer.text.charAt(i2);
            }
            jSONLexer2.ch = c2;
            this.lexer.token = 16;
        } else if (this.lexer.ch == ']') {
            JSONLexer jSONLexer3 = this.lexer;
            int i3 = jSONLexer3.bp + 1;
            jSONLexer3.bp = i3;
            JSONLexer jSONLexer4 = this.lexer;
            if (i3 < jSONLexer4.len) {
                c2 = this.lexer.text.charAt(i3);
            }
            jSONLexer4.ch = c2;
            this.lexer.token = 15;
        } else if (this.lexer.ch == '}') {
            JSONLexer jSONLexer5 = this.lexer;
            int i4 = jSONLexer5.bp + 1;
            jSONLexer5.bp = i4;
            JSONLexer jSONLexer6 = this.lexer;
            if (i4 < jSONLexer6.len) {
                c2 = this.lexer.text.charAt(i4);
            }
            jSONLexer6.ch = c2;
            this.lexer.token = 13;
        } else {
            this.lexer.nextToken();
        }
        return stringVal;
    }

    /* loaded from: classes2.dex */
    public static class ResolveTask {
        private final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        private final String referenceValue;

        public ResolveTask(ParseContext parseContext, String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }
}
