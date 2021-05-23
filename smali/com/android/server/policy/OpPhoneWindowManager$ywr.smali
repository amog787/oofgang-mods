.class Lcom/android/server/policy/OpPhoneWindowManager$ywr;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ywr"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/policy/OpPhoneWindowManager;

.field final zta:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you()V

    return-void
.end method

.method public you()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$700(Lcom/android/server/policy/OpPhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [I

    const/16 v3, 0x9

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v5, "oem_acc_key_define"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mKeysBehavior:I

    sget-boolean v2, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugKeyswap:Z

    if-eqz v2, :cond_0

    const-string v2, "OpPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKeysBehavior: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/OpPhoneWindowManager;->mKeysBehavior:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/OpPhoneWindowManager;->updateSwapKey()V

    :cond_1
    new-array v2, v1, [I

    const/16 v3, 0xa

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v3, "oem_acc_key_lock_mode"

    sget-object v5, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->zta:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    move-result-object v3

    aget-object v2, v3, v2

    sput-object v2, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    sget-object v3, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->ssp:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_3

    :try_start_1
    const-string v2, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/proc/s1302/key_disable"

    const-string v3, "disable"

    :goto_0
    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v2, "/proc/touchpanel/key_disable"

    const-string v3, "disable"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "OpPhoneWindowManager"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_3
    :try_start_3
    const-string v2, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "/proc/s1302/key_disable"

    const-string v3, "enable"

    :goto_2
    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v2, "/proc/touchpanel/key_disable"

    const-string v3, "enable"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_4
    const-string v3, "OpPhoneWindowManager"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_3
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v3, "buttons_force_home_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    sput-boolean v2, Lcom/android/server/policy/OpPhoneWindowManager;->mForceHomeEnabled:Z

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v3, "oem_acc_fingerprint_enrolling"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    sput-boolean v2, Lcom/android/server/policy/OpPhoneWindowManager;->mFingerprintEnrolling:Z

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_6

    :cond_8
    move v2, v4

    :goto_6
    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->access$800(Lcom/android/server/policy/OpPhoneWindowManager;)Z

    move-result v3

    if-eq v2, v3, :cond_9

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v3, v2}, Lcom/android/server/policy/OpPhoneWindowManager;->access$802(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v8, v4}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1402(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1302(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1202(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1102(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1002(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/policy/OpPhoneWindowManager;->access$902(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1500(Lcom/android/server/policy/OpPhoneWindowManager;)V

    new-array v2, v1, [I

    const/16 v3, 0xc

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v3, "oem_acc_sensor_three_finger"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1600(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$gck;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1600(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$gck;

    move-result-object v3

    if-eqz v2, :cond_a

    move v2, v1

    goto :goto_7

    :cond_a
    const/4 v2, 0x2

    :goto_7
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    sget-boolean v2, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/server/policy/OpQuickPayInjector;->updateSettings(Landroid/content/ContentResolver;)V

    :cond_c
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->updateSettings(Landroid/content/ContentResolver;)V

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->updateSettings(Landroid/content/ContentResolver;)V

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v3, "navigation_mode"

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "oneplus_fullscreen_gesture_type"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_d

    move v3, v1

    goto :goto_8

    :cond_d
    move v3, v4

    :goto_8
    iget-object v6, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "op_gesture_button_side_enabled"

    invoke-static {v6, v7, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_e

    move v6, v1

    goto :goto_9

    :cond_e
    move v6, v4

    :goto_9
    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v8, "nav_icon_hide"

    invoke-static {v7, v8, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_f

    move v5, v1

    goto :goto_a

    :cond_f
    move v5, v4

    :goto_a
    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/OpPhoneWindowManager;->mNavigationMode:I

    if-eq v2, v7, :cond_10

    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iput v2, v7, Lcom/android/server/policy/OpPhoneWindowManager;->mNavigationMode:I

    const-string v2, "OpPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GestureButton: update navigation mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget v8, v8, Lcom/android/server/policy/OpPhoneWindowManager;->mNavigationMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    if-eq v3, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    const-string v2, "OpPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GestureButton: update hideNavBar to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mIsSideEnabled:Z

    if-eq v6, v2, :cond_12

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iput-boolean v6, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mIsSideEnabled:Z

    const-string v2, "OpPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GestureButton: update sideEnabled to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/OpPhoneWindowManager;->mIsSideEnabled:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mIsNavIconHide:Z

    if-eq v5, v2, :cond_15

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iput-boolean v5, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mIsNavIconHide:Z

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    const-class v3, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    :cond_13
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    :cond_14
    const-string v2, "OpPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GestureButton: update isNavIconHide to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/server/policy/OpPhoneWindowManager;->mIsNavIconHide:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez v6, :cond_16

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iput-boolean v1, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    const-string v2, "OpPhoneWindowManager"

    const-string v3, "GestureButton: enable hideNavBar for bottom side gesture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    if-nez p0, :cond_17

    goto :goto_b

    :cond_17
    move v1, v4

    :cond_18
    :goto_b
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayPolicy;->setHasNavigationBar(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method zta()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "oem_acc_key_define"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    new-array v1, v0, [I

    const/16 v4, 0xa

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "oem_acc_key_lock_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "buttons_force_home_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "buttons_show_on_screen_navkeys"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "key_home_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "key_home_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "key_menu_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "key_menu_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "key_back_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "key_back_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "key_app_switch_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "key_app_switch_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "oem_acc_fingerprint_enrolling"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v4, "vibrate_on_touch_intensity"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    new-array v0, v0, [I

    const/16 v1, 0xc

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_sensor_three_finger"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    invoke-static {v0, p0}, Lcom/android/server/policy/OpQuickPayInjector;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    invoke-static {v0, p0}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    invoke-static {v0, p0}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v1, "navigation_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v1, "oneplus_fullscreen_gesture_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v1, "op_gesture_button_side_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta:Landroid/content/ContentResolver;

    const-string v1, "nav_icon_hide"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you()V

    return-void
.end method
