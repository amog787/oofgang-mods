.class public Lcom/oneplus/settings/OPMemberController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPMemberController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final ACCESS_TOKEN_API_URL:Ljava/lang/String; = "https://gateway.oneplus.net/v2/oauth/token"

.field private static final ACCOUNT_PROVIDER_URL:Ljava/lang/String; = "content://com.oneplus.account.provider.open"

.field private static final AVATAR:Ljava/lang/String; = "avatar"

.field private static final CLIENT_ID:Ljava/lang/String; = "a291040ba78042b39d1ab8ba35396478"

.field private static final CLIENT_SECRET:Ljava/lang/String; = "c56f745f667b449aa6ffff36c4f03dd7"

.field public static final CLIENT_TYPE:Ljava/lang/String; = "3"

.field private static final CN_ACCESS_TOKEN_API_URL:Ljava/lang/String; = "https://gateway.oneplus.cn/v2/oauth/token"

.field private static final CN_CLIENT_ID:Ljava/lang/String; = "4a348e7f51314002b1927030ffa22d16"

.field private static final CN_CLIENT_SECRET:Ljava/lang/String; = "9b0c4d865d804bd99209e2484bad0084"

.field private static final CN_MEMBER_API_URL:Ljava/lang/String; = "https://gateway.oneplus.cn/v2/api/router"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final ERR_CODE:Ljava/lang/String; = "errCode"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "extra_package_name"

.field private static final EXTRA_START_MEMBER_CHANNEL_KEY:Ljava/lang/String; = "start_member_ship_channel"

.field private static final ICON:Ljava/lang/String; = "icon"

.field private static final KEY_GET_HT_ACCOUNT_TOKEN:Ljava/lang/String; = "get_account_o_token"

.field private static final KEY_GET_OP_ACCOUNT_TOKEN:Ljava/lang/String; = "get_account_oneplus_token"

.field private static final KEY_MEMBER:Ljava/lang/String; = "member_sign"

.field private static final KEY_METHOD_H2:Ljava/lang/String; = "setting.copywriting.get"

.field private static final KEY_METHOD_INDIA:Ljava/lang/String; = "member.app.copywriting.get"

.field private static final MEMBER_API_URL:Ljava/lang/String; = "https://gateway.oneplus.net/v2/api/router"

.field private static final NEW_VERSION:Ljava/lang/String; = "benefitVersion"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final RET:Ljava/lang/String; = "ret"

.field private static final SUCCESS:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "OPMemberController"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final USER_DATA_HT_TOKEN:Ljava/lang/String; = "oplustoken"

.field private static final USER_DATA_ONEPLUS_TOKEN:Ljava/lang/String; = "token"

.field public static final VERSION_NAME:Ljava/lang/String; = "1.1.0"


# instance fields
.field private errCount:I

.field private mAccountVersionCode:J

.field private mAccountVersionName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mOPAuthListener:Lcom/oneplus/accountsdk/auth/OPAuthListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserTokenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOPMemberPreference:Lcom/oneplus/settings/ui/OPMemberPreference;

.field private mUserTokenInfo:Lcom/oneplus/accountsdk/entity/UserTokenInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "member_sign"

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/oneplus/settings/OPMemberController;->errCount:I

    .line 301
    new-instance v0, Lcom/oneplus/settings/OPMemberController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPMemberController$2;-><init>(Lcom/oneplus/settings/OPMemberController;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mOPAuthListener:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    .line 104
    iput-object p1, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPMemberController;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPMemberController;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPMemberController;->getData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/oneplus/settings/OPMemberController;Lcom/oneplus/accountsdk/entity/UserTokenInfo;)Lcom/oneplus/accountsdk/entity/UserTokenInfo;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oneplus/settings/OPMemberController;->mUserTokenInfo:Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    return-object p1
.end method

.method private getAccessToken()V
    .locals 4

    .line 177
    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->isH2Show()Z

    move-result v0

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    const-string v2, "4a348e7f51314002b1927030ffa22d16"

    goto :goto_0

    :cond_0
    const-string v2, "a291040ba78042b39d1ab8ba35396478"

    :goto_0
    const-string v3, "client_id"

    .line 179
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v2, "9b0c4d865d804bd99209e2484bad0084"

    goto :goto_1

    :cond_1
    const-string v2, "c56f745f667b449aa6ffff36c4f03dd7"

    :goto_1
    const-string v3, "client_secret"

    .line 180
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "grant_type"

    const-string v3, "client_credentials"

    .line 181
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcom/oneplus/settings/utils/OPOkHttpUtils;->getInstance()Lcom/oneplus/settings/utils/OPOkHttpUtils;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string v0, "https://gateway.oneplus.cn/v2/oauth/token"

    goto :goto_2

    :cond_2
    const-string v0, "https://gateway.oneplus.net/v2/oauth/token"

    :goto_2
    new-instance v3, Lcom/oneplus/settings/OPMemberController$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPMemberController$1;-><init>(Lcom/oneplus/settings/OPMemberController;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/oneplus/settings/utils/OPOkHttpUtils;->postDataAsyn(Ljava/lang/String;Ljava/util/Map;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V

    return-void
.end method

.method private getData(Ljava/lang/String;)V
    .locals 6

    .line 208
    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->isH2Show()Z

    move-result v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isH2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPMemberController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/oneplus/settings/OPMemberController;->mUserTokenInfo:Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->token:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 211
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "access_token"

    .line 212
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string p1, "4a348e7f51314002b1927030ffa22d16"

    goto :goto_1

    :cond_1
    const-string p1, "a291040ba78042b39d1ab8ba35396478"

    :goto_1
    const-string v4, "client_id"

    .line 213
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string p1, "setting.copywriting.get"

    goto :goto_2

    :cond_2
    const-string p1, "member.app.copywriting.get"

    :goto_2
    const-string v4, "method"

    .line 214
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "client"

    const-string v5, "3"

    .line 218
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceName"

    .line 219
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "model"

    .line 220
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceId"

    .line 221
    iget-object v5, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->getOPSafeUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "lang"

    .line 222
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getLang()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "version"

    const-string v5, "1.1.0"

    .line 223
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "packageName"

    const-string v5, "com.android.settings"

    .line 224
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "token"

    .line 225
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 227
    iget-object v1, p0, Lcom/oneplus/settings/OPMemberController;->mUserTokenInfo:Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/OPMemberController;->mUserTokenInfo:Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    iget-object v2, v1, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->heytapToken:Ljava/lang/String;

    :cond_3
    const-string v1, "heyTapToken"

    .line 228
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cloudServiceFlag"

    .line 229
    iget-object v2, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    const-string v4, "com.heytap.cloud"

    invoke-static {v2, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "versionName"

    .line 230
    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "buildTime"

    .line 231
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accountVersionName"

    .line 232
    iget-object v2, p0, Lcom/oneplus/settings/OPMemberController;->mAccountVersionName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accountVersionCode"

    .line 233
    iget-wide v4, p0, Lcom/oneplus/settings/OPMemberController;->mAccountVersionCode:J

    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_5
    const-string v1, "biz_content"

    .line 235
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    :goto_4
    invoke-static {v3}, Lcom/oneplus/settings/utils/SignUtils;->getSignContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Lcom/oneplus/settings/utils/SignUtils;->rsa256Sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sign"

    .line 241
    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/oneplus/settings/utils/OPOkHttpUtils;->getInstance()Lcom/oneplus/settings/utils/OPOkHttpUtils;

    move-result-object p1

    if-eqz v0, :cond_6

    const-string v0, "https://gateway.oneplus.cn/v2/api/router"

    goto :goto_5

    :cond_6
    const-string v0, "https://gateway.oneplus.net/v2/api/router"

    :goto_5
    invoke-virtual {p1, v0, v3, p0}, Lcom/oneplus/settings/utils/OPOkHttpUtils;->postDataAsyn(Ljava/lang/String;Ljava/util/Map;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V

    return-void
.end method

.method private getOSVersion()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 248
    :try_start_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object p0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ro.rom.version"

    .line 254
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private isH2Show()Z
    .locals 6

    const/4 v0, 0x0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oneplus.account"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 122
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/settings/OPMemberController;->mAccountVersionCode:J

    .line 123
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/settings/OPMemberController;->mAccountVersionName:Ljava/lang/String;

    const-wide/16 v4, 0x622

    cmp-long p0, v2, v4

    if-ltz p0, :cond_1

    .line 124
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isH2()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private isIndiaShow()Z
    .locals 1

    .line 113
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    const-string v0, "com.oneplus.membership"

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "member_sign"

    .line 151
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPMemberPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPMemberController;->mOPMemberPreference:Lcom/oneplus/settings/ui/OPMemberPreference;

    return-void
.end method

.method public failed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 298
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->isH2Show()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->isIndiaShow()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "member_sign"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 157
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "member_sign"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->isH2Show()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuth;->startAccountSettingsActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.member.action.main.page"

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "start_member_ship_channel"

    const-string v1, "0"

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/OPMemberController;->mOPMemberPreference:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPMemberPreference;->clearNew()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->isH2Show()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->isIndiaShow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oneplus/accountsdk/auth/OPAuthInfo;

    invoke-direct {v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;-><init>()V

    iget-object p0, p0, Lcom/oneplus/settings/OPMemberController;->mOPAuthListener:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {v0, v1, p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->getAuthToken(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    :cond_1
    return-void
.end method

.method public success(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "benefitVersion"

    const-string v0, "icon"

    const-string v1, "avatar"

    const-string v2, "content"

    const-string v3, "title"

    .line 264
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 266
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "ret"

    .line 267
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "OPMemberController"

    if-eqz v4, :cond_6

    :try_start_1
    const-string v4, "get data success"

    .line 268
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "data"

    .line 269
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 270
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_0

    move-object v3, v6

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    :goto_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    :goto_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v1, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    :goto_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v6

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_3
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object p1, v6

    goto :goto_4

    .line 275
    :cond_4
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    .line 276
    :goto_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "member_title"

    .line 277
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "member_content"

    .line 278
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "member_avatar"

    .line 279
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member_icon"

    .line 280
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "member_new_version"

    .line 281
    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token"

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mUserTokenInfo:Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mUserTokenInfo:Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    iget-object v6, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->token:Ljava/lang/String;

    :cond_5
    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object p0, p0, Lcom/oneplus/settings/OPMemberController;->mOPMemberPreference:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ui/OPMemberPreference;->setData(Ljava/util/Map;)V

    goto :goto_5

    .line 284
    :cond_6
    iget p1, p0, Lcom/oneplus/settings/OPMemberController;->errCount:I

    if-nez p1, :cond_7

    .line 285
    iget p1, p0, Lcom/oneplus/settings/OPMemberController;->errCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oneplus/settings/OPMemberController;->errCount:I

    .line 286
    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->getAccessToken()V

    goto :goto_5

    :cond_7
    const-string p0, "errCode"

    .line 288
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 291
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 293
    :goto_5
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
