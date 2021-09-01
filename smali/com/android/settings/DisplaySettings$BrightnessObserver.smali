.class Lcom/android/settings/DisplaySettings$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field private final SCREEN_TIMEOUT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0

    .line 1510
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    .line 1511
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "screen_brightness_mode"

    .line 1505
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string p1, "screen_brightness_float"

    .line 1506
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string p1, "screen_auto_brightness_adj"

    .line 1507
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    const-string p1, "screen_off_timeout"

    .line 1508
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    return-void
.end method

.method private getDuration()J
    .locals 3

    .line 1516
    iget-object p0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    .line 1517
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_animation_duration"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    int-to-long v0, p0

    .line 1520
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animationDuration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DisplaySettings"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1527
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/DisplaySettings$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 1535
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1536
    iget-object p0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->access$500(Lcom/android/settings/DisplaySettings;)V

    goto :goto_1

    .line 1537
    :cond_1
    iget-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1542
    :cond_2
    iget-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1543
    iget-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "screen_off_timeout"

    const/16 v0, 0x7530

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1546
    iget-object p2, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {p2}, Lcom/android/settings/DisplaySettings;->access$800(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/display/TimeoutListPreference;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1548
    iget-object p0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->access$900(Lcom/android/settings/DisplaySettings;J)V

    goto :goto_1

    .line 1539
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings$BrightnessObserver;->getDuration()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/settings/DisplaySettings;->access$602(Lcom/android/settings/DisplaySettings;J)J

    .line 1541
    iget-object p0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->access$700(Lcom/android/settings/DisplaySettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1551
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    return-void

    .line 1553
    :goto_2
    throw p0
.end method

.method public startObserving()V
    .locals 4

    .line 1557
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1558
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1559
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1560
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1561
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1562
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1567
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
