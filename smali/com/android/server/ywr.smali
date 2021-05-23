.class public Lcom/android/server/ywr;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static rtg:Z = false

.field private static sis:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static tsu:Landroid/content/Context; = null

.field private static final you:Z

.field private static final zta:Ljava/lang/String; = "DeepCleanWhitelist"


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ywr;->you:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ywr;->rtg:Z

    const-string v1, "com.oppo.qetest"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oppo.qetest.remote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oppo.qemonitor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oppo.qemonitor.remote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "system"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "system:ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "android.process.acore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "android.process.media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.android.dialer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.android.vending"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.android.nfc"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.android.phone"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.android.providers.telephony"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.android.providers.media"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.redteamobile.virtual.softsim"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.apps.inputmethod.zhuyin"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.sohu.inputmethod.sogou"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.baidu.input"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.inputmethod.pinyin"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.xinshuru.inputmethod"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.cootek.smartinputv5"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.tencent.qqpinyin"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.touchtype.swiftkey"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.syntellia.fleksy.keyboard"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.baidu.input_huawei"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.komoxo.octopusime"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.bingime.ime"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.nuance.swype.dtc"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.iflytek.inputmethod"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.emoji.keyboard.touchpal"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.baidu.input_mi"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.baidu.input_miv6"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.baidu.input_yijia"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.iflytek.inputmethod.oneplus"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.process.gapps"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.deskclock"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.gms.persistent"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.gms"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.gms.unstable"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.apps.messaging"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.gms.ui"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.inputmethod.latin"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.marvin.talkback"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.tts"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oneplus.camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oneplus.gallery"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oneplus.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.android.mms"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v2, "com.tencent.mm"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v3, "com.qq.tencent"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v4, "com.android.browser"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v4, "com.tencent.mobileqq"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v5, "com.tencent.tim"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v6, "com.whatsapp"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v7, "com.facebook.katana"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v8, "com.facebook.lite"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v8, "com.facebook.orca"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v9, "com.facebook.mlite"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v9, "com.instagram.android"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v9, "com.tencent.mobileqqi"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.tencent.qqlite"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "org.codeaurora.ims"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.qualcomm.telephony"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.qualcomm.qcrilmsgtunnel"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.qualcomm.qti.telephonyservice"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.qualcomm.qti.GBAHttpAuthentication.auth"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.qti.qualcomm.datastatusnotification"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.qualcomm.location.XT"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.qualcomm.qti.tetherservice"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.qualcomm.wfd.service"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.nxp.spi"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "com.oneplus.ota"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v10, "net.oneplus.deskclock"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "net.oneplus.odm.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.redteamobile.oneplus.roaming"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.wb.alert.sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.zdworks.android.zdclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "org.tpmkranz.notifyme"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "mohammad.adib.sidebar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "mohammad.adib.sidebar.lite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.cmcm.locker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "mobi.appplus.hilocker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.henry.app.optimizer.passcode.lockscreen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.solo.cm.go.locker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.jiubang.goscreenlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.qti.service.colorservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.android.bluetooth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "jp.naver.line.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.snapchat.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.viber.voip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.bbm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.skype.raider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.skype.rover"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "org.telegram.messenger"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.linkedin.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.heytap.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.nearme.gamecenter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "cn.ledongli.ldl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.twitter.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.sgiggle.production"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.bsb.hike"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.imo.android.imoim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "org.codeaurora.bluetooth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.google.android.apps.tachyon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.delcom.standard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.softsim.control"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.UCMobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.google.android.providers.media.module"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.myfitnesspal.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.amap.android.ams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.amap.android.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.monefy.app.lite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "android.ext.services"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.microsoft.teams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oneplus.faceunlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "org.simalliance.openmobileapi.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.xtc.watch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.UCMobile.intl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.xiaomi.hm.health"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.coloros.mcs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oem.oemlogkit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.google.android.webview"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.samsung.accessory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oppo.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.heytap.cloud"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.tencent.soter.soterserver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.google.android.apps.wellbeing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.heytap.speechassist"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.microsoft.office.outlook"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.opos.ads"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    const-string v1, "com.oneplus.instant.local.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raw WhiteList size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepCleanWhitelist"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sis(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oneplus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static tsu(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static you(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/ywr;->rtg:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ywr;->rtg:Z

    sput-object p0, Lcom/android/server/ywr;->tsu:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static zta(Ljava/io/PrintWriter;)V
    .locals 3

    sget-object v0, Lcom/android/server/ywr;->sis:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string v2, "WHITE LIST APP:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "   "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " , "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_1
    :goto_1
    array-length p0, v0

    if-ge v1, p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idx="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DeepCleanWhitelist"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
