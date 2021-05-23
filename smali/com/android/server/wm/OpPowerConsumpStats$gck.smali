.class Lcom/android/server/wm/OpPowerConsumpStats$gck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->you()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "OPCS"

    const-string v0, "# mTrackAlarmListener # sENABLE false, return"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ivd(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ivd(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ivd(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
