.class Lcom/android/server/policy/OpPhoneWindowManager$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$sis;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "Could not close file /proc/touchpanel/tpedge_limit_enable"

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const-string v3, "OpPhoneWindowManager"

    if-eq v1, v2, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$sis;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$sis;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$400(Lcom/android/server/policy/OpPhoneWindowManager;)[B

    move-result-object v0

    const/16 v1, 0x80

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$sis;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$400(Lcom/android/server/policy/OpPhoneWindowManager;)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    new-array v0, v1, [B

    :goto_1
    if-eqz v0, :cond_8

    const/16 v4, 0x4d

    aget-byte v0, v0, v4

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    :goto_2
    add-int/2addr v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RECORD POWER KEY "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_8

    if-ge v0, v1, :cond_8

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$sis;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    int-to-byte p1, v0

    invoke-static {p0, v4, p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$500(Lcom/android/server/policy/OpPhoneWindowManager;IB)Z

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManager;->access$300()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/policy/OpPhoneWindowManager$sis;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v4

    if-eq v2, v4, :cond_7

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$sis;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result p0

    if-ne p1, p0, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, "0"

    goto :goto_4

    :cond_7
    :goto_3
    const-string p0, "1"

    :goto_4
    new-instance p1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/touchpanel/tpedge_limit_enable"

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_7

    :catch_0
    move-exception p0

    move-object v1, p1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception p0

    :goto_5
    :try_start_3
    const-string p1, "Could not write to file /proc/touchpanel/tpedge_limit_enable"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_8

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception p0

    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_6
    return-void

    :goto_7
    if-eqz v1, :cond_9

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    move-exception p1

    invoke-static {v3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_8
    throw p0
.end method
