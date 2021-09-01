.class public Lcom/android/settings/sim/SimSelectNotification;
.super Landroid/content/BroadcastReceiver;
.source "SimSelectNotification.java"


# static fields
.field public static final ENABLE_MMS_NOTIFICATION_CHANNEL:Ljava/lang/String; = "enable_mms_notification_channel"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ENABLE_MMS_NOTIFICATION_ID:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SIM_SELECT_NOTIFICATION_CHANNEL:Ljava/lang/String; = "sim_select_notification_channel"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SIM_SELECT_NOTIFICATION_ID:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SIM_WARNING_NOTIFICATION_CHANNEL:Ljava/lang/String; = "sim_warning_notification_channel"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SIM_WARNING_NOTIFICATION_ID:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private cancelEnableMmsNotification(Landroid/content/Context;)V
    .locals 0

    const-string p0, "notification"

    .line 266
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 p1, 0x2

    .line 267
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static cancelSimCombinationWarningNotification(Landroid/content/Context;)V
    .locals 1

    .line 312
    const-class v0, Landroid/app/NotificationManager;

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x3

    .line 314
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static cancelSimSelectNotification(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private createEnableMmsNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 3

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 234
    new-instance v0, Landroid/app/NotificationChannel;

    sget v1, Lcom/android/settings/R$string;->enable_mms_notification_channel_title:I

    .line 236
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v1, "enable_mms_notification_channel"

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 239
    new-instance p0, Landroid/app/Notification$Builder;

    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_24dp:I

    .line 241
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sim_noitification:I

    .line 242
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 243
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 244
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 245
    invoke-virtual {p2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p2, 0x1

    .line 246
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 249
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.MMS_MESSAGE_SETTING"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    const-class p3, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p3, "android.provider.extra.SUB_ID"

    .line 251
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 252
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p4, 0x0

    .line 253
    invoke-static {p1, p4, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 255
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string p2, "notification"

    .line 259
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 260
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private createSimCombinationWarningNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "android.telephony.extra.SIM_COMBINATION_NAMES"

    .line 272
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 278
    :cond_0
    sget v0, Lcom/android/settings/R$string;->dual_cdma_sim_warning_notification_summary:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 281
    new-instance v0, Landroid/app/NotificationChannel;

    sget v2, Lcom/android/settings/R$string;->dual_cdma_sim_warning_notification_channel_title:I

    .line 283
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x4

    const-string v5, "sim_warning_notification_channel"

    invoke-direct {v0, v5, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 286
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v4, Lcom/android/settings/R$drawable;->ic_sim_alert:I

    .line 288
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->sim_noitification:I

    .line 289
    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->sim_combination_warning_notification_title:I

    .line 290
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 292
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 293
    invoke-virtual {v2, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 295
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 298
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/HelpTrampoline;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "help_uri_sim_combination_warning"

    .line 299
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 301
    invoke-static {p1, v3, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 303
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 305
    const-class p2, Landroid/app/NotificationManager;

    .line 306
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 307
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 p2, 0x3

    .line 308
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private createSimSelectNotification(Landroid/content/Context;)V
    .locals 5

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 201
    new-instance v0, Landroid/app/NotificationChannel;

    sget v1, Lcom/android/settings/R$string;->sim_selection_channel_title:I

    .line 203
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "sim_select_notification_channel"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 206
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/android/settings/R$drawable;->ic_sim_alert:I

    .line 208
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sim_noitification:I

    .line 209
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sim_notification_title:I

    .line 210
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sim_notification_summary:I

    .line 211
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v1, 0x1

    .line 212
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 213
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 214
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 215
    invoke-static {p1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 217
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v2, "notification"

    .line 219
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 220
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 221
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private onEnableMmsDataRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "android.provider.extra.SUB_ID"

    const/4 v1, -0x1

    .line 101
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 103
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    :cond_0
    const-string v2, "telephony_subscription_service"

    .line 106
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 108
    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v3

    const-string v4, "SimSelectNotification"

    if-nez v3, :cond_1

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEnableMmsDataRequest invalid sub ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_1
    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEnableMmsDataRequest null SubscriptionInfo for sub ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v3, "android.settings.extra.ENABLE_MMS_DATA_REQUEST_REASON"

    .line 120
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/settings/R$string;->enable_receiving_mms_notification_title:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_5

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/settings/R$string;->enable_sending_mms_notification_title:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    const-string v3, "phone"

    .line 132
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 133
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v5, 0x2

    .line 135
    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->isDataEnabledForApn(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEnableMmsDataRequest MMS data already enabled on sub ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->enable_mms_notification_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 141
    invoke-static {v2}, Lcom/android/settings/network/SubscriptionUtil;->getDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 140
    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelEnableMmsNotification(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/settings/sim/SimSelectNotification;->createEnableMmsNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void

    .line 128
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEnableMmsDataRequest invalid request reason "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onPrimarySubscriptionListChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->startSimSelectDialogIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->sendSimCombinationWarningIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private sendSimCombinationWarningIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.telephony.extra.SIM_COMBINATION_WARNING_TYPE"

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    invoke-static {p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelSimCombinationWarningNotification(Landroid/content/Context;)V

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->createSimCombinationWarningNotification(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startSimSelectDialogIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.telephony.extra.DEFAULT_SUBSCRIPTION_SELECT_TYPE"

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-static {p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelSimSelectNotification(Landroid/content/Context;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSelectNotification;->createSimSelectNotification(Landroid/content/Context;)V

    const/4 p0, 0x4

    const/high16 v2, 0x10000000

    if-ne v0, p0, :cond_1

    const p0, 0x7fffffff

    const-string v0, "android.telephony.extra.SUBSCRIPTION_ID"

    .line 167
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 169
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    .line 171
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    .line 179
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    sget-object p2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimSelectNotification"

    if-nez v0, :cond_0

    const-string p0, "Received unexpected intent with null action."

    .line 83
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, -0x1

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ac3230b

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, -0x6766590a

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "android.settings.ENABLE_MMS_DATA_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v5

    goto :goto_0

    :cond_2
    const-string v3, "android.telephony.action.PRIMARY_SUBSCRIPTION_LIST_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received unexpected intent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->onEnableMmsDataRequest(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 89
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->onPrimarySubscriptionListChanged(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
