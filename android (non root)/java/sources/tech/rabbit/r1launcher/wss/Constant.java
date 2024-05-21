package tech.rabbit.r1launcher.wss;

import tech.rabbit.common.utils.SPUtils;

/* loaded from: classes3.dex */
public class Constant {
    static String LOGIN_TOKEN = "login_token";
    static String LOST_MODE = "lost_mode";
    static String PASSCODE = "passcode";
    static String USER_ID = "user_id";

    public static boolean hasLoginToken() {
        return !getLoginToken().isEmpty();
    }

    public static String getLoginToken() {
        return (String) SPUtils.INSTANCE.get(LOGIN_TOKEN, "");
    }

    public static void saveLoginToken(String str) {
        SPUtils.INSTANCE.put(LOGIN_TOKEN, str);
    }

    public static boolean hasPasscode() {
        return !getPasscode().isEmpty();
    }

    public static void saveLostMode(String str) {
        SPUtils.INSTANCE.put(LOST_MODE, str);
    }

    public static String getLostMode() {
        return (String) SPUtils.INSTANCE.get(LOST_MODE, "");
    }

    public static String getPasscode() {
        return (String) SPUtils.INSTANCE.get(PASSCODE, "");
    }

    public static void savePasscode(String str) {
        SPUtils.INSTANCE.put(PASSCODE, str);
    }

    public static void setUserId(String str) {
        SPUtils.INSTANCE.put(USER_ID, str);
    }

    public static String getUserId() {
        return (String) SPUtils.INSTANCE.get(USER_ID, "");
    }
}
