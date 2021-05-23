.class public Lcom/android/server/wm/OpActivityStarter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpActivityStarter;


# static fields
.field private static final DEBUG:Z

.field static final IS_PARALLEL_APP_FEATURED:Z

.field public static final STOCK_PM_FLAGS:I = 0x400

.field private static final STOREDCALLINGRELATIONS:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final TAG:Ljava/lang/String; = "Parallel App"

.field private static sOneplusService:Lcom/oneplus/server/OnePlusService;


# instance fields
.field private mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field private sourceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpActivityStarter;->DEBUG:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/OpActivityStarter;->STOREDCALLINGRELATIONS:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpActivityStarter;->IS_PARALLEL_APP_FEATURED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpActivityStarter;->sourceIntent:Landroid/content/Intent;

    return-void
.end method

.method private addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 7

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/wm/OpActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    :cond_1
    return-object p1
.end method

.method private dontShowParallelAppDialog(Landroid/content/Intent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/server/wm/OpActivityStarter;->sOneplusService:Lcom/oneplus/server/OnePlusService;

    if-nez p1, :cond_1

    sget-object p1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/server/OnePlusService;

    sput-object p1, Lcom/android/server/wm/OpActivityStarter;->sOneplusService:Lcom/oneplus/server/OnePlusService;

    :cond_1
    sget-object p1, Lcom/android/server/wm/OpActivityStarter;->sOneplusService:Lcom/oneplus/server/OnePlusService;

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/16 v1, 0x186

    const-string v2, "enable.parallelapp.not.popup.dialog"

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/server/OnePlusService;->isInConfigList(ILjava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/server/wm/OpActivityStarter;->sOneplusService:Lcom/oneplus/server/OnePlusService;

    invoke-virtual {p1, v1, p0}, Lcom/oneplus/server/OnePlusService;->isInConfigList(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_3
    const-string p1, "com.igexin.sdk.GActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.leixun.deamon.TranslucentActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.tencent.news.push.alive.offactivity.OffActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.youloft.core.report.OnePixActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.p1.mobile.putong.api.push.keep.OnePixelActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.p1.mobile.putong.api.push.keep.GetuiAct"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.ganji.android.common.AnonymousActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.ifeng.news2.getui.DynamicGetuiActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.ofo.ofopush.activity.DaemonActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.netease.nr.biz.push.newpush.activity.PushGTActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.ss.android.message.sswo.SswoActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.sina.news.module.push.guard.activity.SinaDynmActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.bankcomm.push.OppoAdvancePushActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.yy.pushsvc.impl.KeepAliveActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.xunmeng.pinduoduo.activity.LifeActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.achievo.vipshop.yuzhuang.getui.AABBCCActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method private maybeAddOwnerUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x45ee9a33

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/OpActivityStarter;->addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mms"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/OpActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    :goto_2
    return-object p1
.end method

.method private maybeAddParallelUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_5
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "Parallel App"

    const/16 v8, 0x3e7

    if-eqz v0, :cond_6

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    const-string v5, "android.intent.extra.STREAM"

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/OpActivityStarter;->addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v3, v8}, Lcom/android/server/wm/OpActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/OpActivityStarter;->addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v0, v8}, Lcom/android/server/wm/OpActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v8}, Lcom/android/server/wm/OpActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    const-string v0, "output"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v2, v8}, Lcom/android/server/wm/OpActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_7
    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_5
        -0x62d863dd -> :sswitch_4
        -0x45ee9a33 -> :sswitch_3
        -0x45ed2f16 -> :sswitch_2
        -0x37c67be -> :sswitch_1
        0x29c9b033 -> :sswitch_0
    .end sparse-switch
.end method

.method private maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpActivityStarter;->uriHasUserId(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private needSkipShareScene(Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-nez p1, :cond_1

    return p0

    :cond_1
    const/16 v0, 0xd1

    const-string v1, "enable_skip_share_scene"

    invoke-static {v0, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v1

    const-string v2, "Parallel App"

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-static {v0, p1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean p0, Lcom/android/server/wm/OpActivityStarter;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip the special share scene for"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    const-string v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return p0

    :cond_5
    :goto_0
    sget-boolean p0, Lcom/android/server/wm/OpActivityStarter;->DEBUG:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip the special case of wechat share for"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v3
.end method

.method private uriHasUserId(Landroid/net/Uri;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;ILjava/lang/String;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OpActivityStarter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkParallelAppControl, from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", with act:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", callingUserId:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", toUserId:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Parallel App"

    invoke-static {p4, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p3, 0x0

    if-eqz p6, :cond_1

    const/16 p4, 0x3e7

    if-eq p6, p4, :cond_1

    return p3

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    invoke-direct {p0, p7}, Lcom/android/server/wm/OpActivityStarter;->needSkipShareScene(Landroid/content/pm/ActivityInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    return p3

    :cond_2
    if-eqz p7, :cond_3

    iget-boolean p1, p7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez p1, :cond_3

    return p3

    :cond_3
    iget-object p1, p7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "android"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "com.android.systemui"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "com.android.settings"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "net.oneplus.launcher"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "net.oneplus.h2launcher"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p8}, Lcom/android/server/wm/OpActivityStarter;->dontShowParallelAppDialog(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_5

    return p3

    :cond_5
    invoke-virtual {p8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MAIN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "com.android.packageinstaller"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "com.google.android.packageinstaller"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "com.oneplus.gamespace"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    return p3

    :cond_7
    invoke-virtual {p8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {p8, p1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez p9, :cond_8

    invoke-virtual {p8}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_9

    :cond_8
    return p3

    :cond_9
    invoke-virtual {p8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return p3

    :cond_a
    invoke-virtual {p8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.facebook.platform.common.activity.PlatformActivity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return p3

    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    :try_start_0
    iget-object p4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, p4}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    const-string p5, "appops"

    invoke-static {p5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p5

    invoke-static {p5}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p5

    check-cast p5, Lcom/android/server/appop/AppOpsService;

    iput-object p5, p0, Lcom/android/server/wm/OpActivityStarter;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 p0, 0x3ed

    iget-object p6, p7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p5, p0, p4, p6}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_c

    const/4 p3, 0x1

    :cond_c
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p3

    :catchall_0
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_d
    :goto_0
    return p3
.end method

.method public getBackUserIdFromStoredCallingRelation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/16 p0, -0x2710

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/server/wm/OpActivityStarter;->STOREDCALLINGRELATIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lcom/android/server/wm/OpActivityStarter;->STOREDCALLINGRELATIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p2, Lcom/android/server/wm/OpActivityStarter;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "Parallel App"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got callingRelationKey :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", backUserId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return p0
.end method

.method public getSourceIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpActivityStarter;->sourceIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    if-nez p3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/wm/OpActivityStarter;->maybeAddParallelUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    :cond_0
    if-nez p1, :cond_1

    if-ne p3, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/wm/OpActivityStarter;->maybeAddOwnerUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;
    .locals 7

    sget-boolean p0, Lcom/android/server/wm/OpActivityStarter;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resolveIntentActivity,intent = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", resolveUserId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Parallel App"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p0, p4, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public setSourceIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpActivityStarter;->sourceIntent:Landroid/content/Intent;

    return-void
.end method

.method public storeCallingRelation(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/server/wm/OpActivityStarter;->STOREDCALLINGRELATIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/wm/OpActivityStarter;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Parallel App"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "has entered to ChooserActivity,storeCallingRelation:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", backUserId:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toChooserActivity(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1

    sget-boolean p0, Lcom/android/server/wm/OpActivityStarter;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Parallel App"

    const-string v0, "rebuild chooserIntent and pop up the ChooserActivity between the parallel App and origin App"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz p2, :cond_1

    const/high16 p0, 0x2000000

    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    const-string p0, " "

    invoke-static {p1, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, "android.intent.extra.IS_SHOW_PARALLEL_APP"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public updateOutActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPendingOptionsFromNewActivityRecord:Landroid/app/ActivityOptions;

    :cond_0
    return-object p1
.end method
