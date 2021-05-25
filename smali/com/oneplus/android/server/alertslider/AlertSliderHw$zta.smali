.class Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;
.super Landroid/os/UEventObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/alertslider/AlertSliderHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-static {v0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->sis(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta()Z

    move-result v0

    const-string v1, "AlertSliderHw"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM UEVENT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const-string v3, "cable."

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    const/16 v6, 0x400

    :try_start_0
    new-array v7, v6, [C

    new-instance v8, Ljava/io/FileReader;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-static {v10}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->you(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7, v0, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7, v0, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_2
    :goto_1
    if-ne v5, v0, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    if-ne v4, v0, :cond_4

    move v0, v5

    :cond_4
    :goto_2
    invoke-static {}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-static {v7}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->you(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/state\nstate:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-static {}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    invoke-static {}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-static {v3}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->you(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found while attempting to determine initial switch state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    if-eq v0, v5, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    if-ne v0, v4, :cond_6

    goto :goto_5

    :cond_6
    const-string v0, "Could not get hw UEvent!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    :goto_5
    iget-object v2, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-static {v2, v0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->tsu(Lcom/oneplus/android/server/alertslider/AlertSliderHw;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse switch state from event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-static {p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->sis(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method zta()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEVPATH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-static {v1}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->you(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->tsu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method
