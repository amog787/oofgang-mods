.class Lcom/android/server/am/OpForceDarkController$zta;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OpForceDarkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OpForceDarkController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController$zta;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    :try_start_0
    const-string p1, "op_force_dark_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController$zta;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v0}, Lcom/android/server/am/OpForceDarkController;->access$000(Lcom/android/server/am/OpForceDarkController;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x5dc

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$zta;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$100(Lcom/android/server/am/OpForceDarkController;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$zta;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/am/OpForceDarkController;->access$002(Lcom/android/server/am/OpForceDarkController;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController$zta;->zta:Lcom/android/server/am/OpForceDarkController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnOffObserver Ex "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
