.class public Lcom/oneplus/settings/OPRebootWipeUserdata;
.super Ljava/lang/Object;
.source "OPRebootWipeUserdata.java"


# static fields
.field private static final COMMAND_FILE_OP2:Ljava/io/File;

.field private static final LOG_FILE_OP2:Ljava/io/File;

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final RECOVERY_DIR_OP2:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    const-string v3, "log"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/vendor/op2/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    .line 31
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE_OP2:Ljava/io/File;

    .line 32
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE_OP2:Ljava/io/File;

    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "OPRebootWipeUserdata"

    const-string v2, "bootCommand start"

    .line 91
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v2, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 96
    sget-object v2, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE_OP2:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 97
    sget-object v2, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE_OP2:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 98
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE_OP2:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 107
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 109
    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    .line 110
    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    :try_start_1
    const-string p1, "mount"

    .line 117
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const-string v2, "bootCommand get mount Service"

    .line 118
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p1

    const-string v2, "SystemLocale"

    .line 120
    invoke-interface {p1, v2, v0}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bootCommand setField StorageManager.SYSTEM_LOCALE_KEY"

    .line 121
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PatternVisible"

    .line 122
    invoke-interface {p1, v2, v0}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bootCommand setField StorageManager.PATTERN_VISIBLE_KEY"

    .line 123
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PasswordVisible"

    .line 124
    invoke-interface {p1, v2, v0}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bootCommand setField StorageManager.PASSWORD_VISIBLE_KEY"

    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const-string p1, "power"

    .line 130
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string p1, "recovery"

    .line 131
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 133
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reboot failed (no permissions?)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 114
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 115
    throw p0
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "--shutdown_after"

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 61
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oneplus/settings/OPRebootWipeUserdata;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 65
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--password="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 68
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--resetTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p3, v3, p1

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    aput-object v1, v3, p1

    const/4 p1, 0x4

    aput-object p4, v3, p1

    const/4 p1, 0x5

    aput-object v2, v3, p1

    const/4 p1, 0x6

    const-string p2, "--resetPackage=com.android.settings"

    aput-object p2, v3, p1

    .line 72
    invoke-static {p0, v3}, Lcom/oneplus/settings/OPRebootWipeUserdata;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    throw v0
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3f

    .line 80
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    .line 81
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
