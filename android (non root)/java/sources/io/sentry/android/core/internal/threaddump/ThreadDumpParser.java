package io.sentry.android.core.internal.threaddump;

import io.sentry.SentryLevel;
import io.sentry.SentryLockReason;
import io.sentry.SentryOptions;
import io.sentry.SentryStackTraceFactory;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class ThreadDumpParser {
    private final boolean isBackground;
    private final SentryOptions options;
    private final SentryStackTraceFactory stackTraceFactory;
    private static final Pattern BEGIN_MANAGED_THREAD_RE = Pattern.compile("\"(.*)\" (.*) ?prio=(\\d+)\\s+tid=(\\d+)\\s*(.*)");
    private static final Pattern BEGIN_UNMANAGED_NATIVE_THREAD_RE = Pattern.compile("\"(.*)\" (.*) ?sysTid=(\\d+)");
    private static final Pattern NATIVE_RE = Pattern.compile(" *(?:native: )?#\\d+ \\S+ [0-9a-fA-F]+\\s+(.*?)\\s+\\((.*)\\+(\\d+)\\)(?: \\(.*\\))?");
    private static final Pattern NATIVE_NO_LOC_RE = Pattern.compile(" *(?:native: )?#\\d+ \\S+ [0-9a-fA-F]+\\s+(.*)\\s*\\(?(.*)\\)?(?: \\(.*\\))?");
    private static final Pattern JAVA_RE = Pattern.compile(" *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\((.*):([\\d-]+)\\)");
    private static final Pattern JNI_RE = Pattern.compile(" *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\(Native method\\)");
    private static final Pattern LOCKED_RE = Pattern.compile(" *- locked \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");
    private static final Pattern SLEEPING_ON_RE = Pattern.compile(" *- sleeping on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");
    private static final Pattern WAITING_ON_RE = Pattern.compile(" *- waiting on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");
    private static final Pattern WAITING_TO_LOCK_RE = Pattern.compile(" *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");
    private static final Pattern WAITING_TO_LOCK_HELD_RE = Pattern.compile(" *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)(?: held by thread (\\d+))");
    private static final Pattern WAITING_TO_LOCK_UNKNOWN_RE = Pattern.compile(" *- waiting to lock an unknown object");
    private static final Pattern BLANK_RE = Pattern.compile("\\s+");

    public ThreadDumpParser(SentryOptions sentryOptions, boolean z) {
        this.options = sentryOptions;
        this.isBackground = z;
        this.stackTraceFactory = new SentryStackTraceFactory(sentryOptions);
    }

    public List<SentryThread> parse(Lines lines) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = BEGIN_MANAGED_THREAD_RE.matcher("");
        Matcher matcher2 = BEGIN_UNMANAGED_NATIVE_THREAD_RE.matcher("");
        while (lines.hasNext()) {
            Line next = lines.next();
            if (next == null) {
                this.options.getLogger().log(SentryLevel.WARNING, "Internal error while parsing thread dump.", new Object[0]);
                return arrayList;
            }
            String str = next.text;
            if (matches(matcher, str) || matches(matcher2, str)) {
                lines.rewind();
                SentryThread parseThread = parseThread(lines);
                if (parseThread != null) {
                    arrayList.add(parseThread);
                }
            }
        }
        return arrayList;
    }

    private SentryThread parseThread(Lines lines) {
        SentryThread sentryThread = new SentryThread();
        Matcher matcher = BEGIN_MANAGED_THREAD_RE.matcher("");
        Matcher matcher2 = BEGIN_UNMANAGED_NATIVE_THREAD_RE.matcher("");
        if (!lines.hasNext()) {
            return null;
        }
        Line next = lines.next();
        boolean z = false;
        if (next == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "Internal error while parsing thread dump.", new Object[0]);
            return null;
        }
        if (matches(matcher, next.text)) {
            Long l = getLong(matcher, 4, null);
            if (l == null) {
                this.options.getLogger().log(SentryLevel.DEBUG, "No thread id in the dump, skipping thread.", new Object[0]);
                return null;
            }
            sentryThread.setId(l);
            sentryThread.setName(matcher.group(1));
            String group = matcher.group(5);
            if (group != null) {
                if (group.contains(" ")) {
                    sentryThread.setState(group.substring(0, group.indexOf(32)));
                } else {
                    sentryThread.setState(group);
                }
            }
        } else if (matches(matcher2, next.text)) {
            Long l2 = getLong(matcher2, 3, null);
            if (l2 == null) {
                this.options.getLogger().log(SentryLevel.DEBUG, "No thread id in the dump, skipping thread.", new Object[0]);
                return null;
            }
            sentryThread.setId(l2);
            sentryThread.setName(matcher2.group(1));
        }
        String name = sentryThread.getName();
        if (name != null) {
            boolean equals = name.equals(SentryThread.JsonKeys.MAIN);
            sentryThread.setMain(Boolean.valueOf(equals));
            sentryThread.setCrashed(Boolean.valueOf(equals));
            if (equals && !this.isBackground) {
                z = true;
            }
            sentryThread.setCurrent(Boolean.valueOf(z));
        }
        sentryThread.setStacktrace(parseStacktrace(lines, sentryThread));
        return sentryThread;
    }

    private SentryStackTrace parseStacktrace(Lines lines, SentryThread sentryThread) {
        Matcher matcher;
        ArrayList arrayList = new ArrayList();
        Matcher matcher2 = NATIVE_RE.matcher("");
        Matcher matcher3 = NATIVE_NO_LOC_RE.matcher("");
        Matcher matcher4 = JAVA_RE.matcher("");
        Matcher matcher5 = JNI_RE.matcher("");
        Matcher matcher6 = LOCKED_RE.matcher("");
        Matcher matcher7 = WAITING_ON_RE.matcher("");
        Matcher matcher8 = SLEEPING_ON_RE.matcher("");
        Matcher matcher9 = WAITING_TO_LOCK_HELD_RE.matcher("");
        Matcher matcher10 = WAITING_TO_LOCK_RE.matcher("");
        Matcher matcher11 = WAITING_TO_LOCK_UNKNOWN_RE.matcher("");
        Matcher matcher12 = BLANK_RE.matcher("");
        SentryStackFrame sentryStackFrame = null;
        while (true) {
            if (!lines.hasNext()) {
                break;
            }
            Line next = lines.next();
            if (next == null) {
                this.options.getLogger().log(SentryLevel.WARNING, "Internal error while parsing thread dump.", new Object[0]);
                break;
            }
            String str = next.text;
            Matcher matcher13 = matcher12;
            if (matches(matcher2, str)) {
                SentryStackFrame sentryStackFrame2 = new SentryStackFrame();
                sentryStackFrame2.setPackage(matcher2.group(1));
                sentryStackFrame2.setFunction(matcher2.group(2));
                sentryStackFrame2.setLineno(getInteger(matcher2, 3, null));
                arrayList.add(sentryStackFrame2);
            } else if (matches(matcher3, str)) {
                SentryStackFrame sentryStackFrame3 = new SentryStackFrame();
                sentryStackFrame3.setPackage(matcher3.group(1));
                sentryStackFrame3.setFunction(matcher3.group(2));
                arrayList.add(sentryStackFrame3);
            } else {
                matcher = matcher2;
                if (matches(matcher4, str)) {
                    sentryStackFrame = new SentryStackFrame();
                    String format = String.format("%s.%s", matcher4.group(1), matcher4.group(2));
                    sentryStackFrame.setModule(format);
                    sentryStackFrame.setFunction(matcher4.group(3));
                    sentryStackFrame.setFilename(matcher4.group(4));
                    sentryStackFrame.setLineno(getUInteger(matcher4, 5, null));
                    sentryStackFrame.setInApp(this.stackTraceFactory.isInApp(format));
                    arrayList.add(sentryStackFrame);
                } else if (matches(matcher5, str)) {
                    sentryStackFrame = new SentryStackFrame();
                    String format2 = String.format("%s.%s", matcher5.group(1), matcher5.group(2));
                    sentryStackFrame.setModule(format2);
                    sentryStackFrame.setFunction(matcher5.group(3));
                    sentryStackFrame.setInApp(this.stackTraceFactory.isInApp(format2));
                    arrayList.add(sentryStackFrame);
                } else if (matches(matcher6, str)) {
                    if (sentryStackFrame != null) {
                        SentryLockReason sentryLockReason = new SentryLockReason();
                        sentryLockReason.setType(1);
                        sentryLockReason.setAddress(matcher6.group(1));
                        sentryLockReason.setPackageName(matcher6.group(2));
                        sentryLockReason.setClassName(matcher6.group(3));
                        sentryStackFrame.setLock(sentryLockReason);
                        combineThreadLocks(sentryThread, sentryLockReason);
                    }
                } else if (matches(matcher7, str)) {
                    if (sentryStackFrame != null) {
                        SentryLockReason sentryLockReason2 = new SentryLockReason();
                        sentryLockReason2.setType(2);
                        sentryLockReason2.setAddress(matcher7.group(1));
                        sentryLockReason2.setPackageName(matcher7.group(2));
                        sentryLockReason2.setClassName(matcher7.group(3));
                        sentryStackFrame.setLock(sentryLockReason2);
                        combineThreadLocks(sentryThread, sentryLockReason2);
                    }
                } else if (!matches(matcher8, str)) {
                    if (!matches(matcher9, str)) {
                        if (!matches(matcher10, str)) {
                            if (!matches(matcher11, str)) {
                                if (str.length() == 0) {
                                    break;
                                }
                                matcher12 = matcher13;
                                if (matches(matcher12, str)) {
                                    break;
                                }
                                matcher2 = matcher;
                            } else if (sentryStackFrame != null) {
                                SentryLockReason sentryLockReason3 = new SentryLockReason();
                                sentryLockReason3.setType(8);
                                sentryStackFrame.setLock(sentryLockReason3);
                                combineThreadLocks(sentryThread, sentryLockReason3);
                            }
                        } else if (sentryStackFrame != null) {
                            SentryLockReason sentryLockReason4 = new SentryLockReason();
                            sentryLockReason4.setType(8);
                            sentryLockReason4.setAddress(matcher10.group(1));
                            sentryLockReason4.setPackageName(matcher10.group(2));
                            sentryLockReason4.setClassName(matcher10.group(3));
                            sentryStackFrame.setLock(sentryLockReason4);
                            combineThreadLocks(sentryThread, sentryLockReason4);
                        }
                    } else if (sentryStackFrame != null) {
                        SentryLockReason sentryLockReason5 = new SentryLockReason();
                        sentryLockReason5.setType(8);
                        sentryLockReason5.setAddress(matcher9.group(1));
                        sentryLockReason5.setPackageName(matcher9.group(2));
                        sentryLockReason5.setClassName(matcher9.group(3));
                        sentryLockReason5.setThreadId(getLong(matcher9, 4, null));
                        sentryStackFrame.setLock(sentryLockReason5);
                        combineThreadLocks(sentryThread, sentryLockReason5);
                    }
                    matcher12 = matcher13;
                    matcher2 = matcher;
                } else if (sentryStackFrame != null) {
                    SentryLockReason sentryLockReason6 = new SentryLockReason();
                    sentryLockReason6.setType(4);
                    sentryLockReason6.setAddress(matcher8.group(1));
                    sentryLockReason6.setPackageName(matcher8.group(2));
                    sentryLockReason6.setClassName(matcher8.group(3));
                    sentryStackFrame.setLock(sentryLockReason6);
                    combineThreadLocks(sentryThread, sentryLockReason6);
                }
                matcher12 = matcher13;
                matcher2 = matcher;
            }
            matcher = matcher2;
            matcher12 = matcher13;
            sentryStackFrame = null;
            matcher2 = matcher;
        }
        Collections.reverse(arrayList);
        SentryStackTrace sentryStackTrace = new SentryStackTrace(arrayList);
        sentryStackTrace.setSnapshot(true);
        return sentryStackTrace;
    }

    private boolean matches(Matcher matcher, String str) {
        matcher.reset(str);
        return matcher.matches();
    }

    private void combineThreadLocks(SentryThread sentryThread, SentryLockReason sentryLockReason) {
        Map<String, SentryLockReason> heldLocks = sentryThread.getHeldLocks();
        if (heldLocks == null) {
            heldLocks = new HashMap<>();
        }
        SentryLockReason sentryLockReason2 = heldLocks.get(sentryLockReason.getAddress());
        if (sentryLockReason2 != null) {
            sentryLockReason2.setType(Math.max(sentryLockReason2.getType(), sentryLockReason.getType()));
        } else {
            heldLocks.put(sentryLockReason.getAddress(), new SentryLockReason(sentryLockReason));
        }
        sentryThread.setHeldLocks(heldLocks);
    }

    private Long getLong(Matcher matcher, int i, Long l) {
        String group = matcher.group(i);
        return (group == null || group.length() == 0) ? l : Long.valueOf(Long.parseLong(group));
    }

    private Integer getInteger(Matcher matcher, int i, Integer num) {
        String group = matcher.group(i);
        return (group == null || group.length() == 0) ? num : Integer.valueOf(Integer.parseInt(group));
    }

    private Integer getUInteger(Matcher matcher, int i, Integer num) {
        String group = matcher.group(i);
        if (group == null || group.length() == 0) {
            return num;
        }
        Integer valueOf = Integer.valueOf(Integer.parseInt(group));
        return valueOf.intValue() >= 0 ? valueOf : num;
    }
}
