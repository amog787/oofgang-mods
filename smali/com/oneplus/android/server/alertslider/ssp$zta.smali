.class Lcom/oneplus/android/server/alertslider/ssp$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/alertslider/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/alertslider/ssp;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/alertslider/ssp;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/ssp$zta;->zta:Lcom/oneplus/android/server/alertslider/ssp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/oneplus/android/server/alertslider/ssp;->rtg()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlertSliderVibratorPolicy"

    const-string v1, "Runnable mMiddleVibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v4, 0x3f5

    const/16 v5, 0x78

    const/16 v6, 0x64

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp$zta;->zta:Lcom/oneplus/android/server/alertslider/ssp;

    invoke-static {v0}, Lcom/oneplus/android/server/alertslider/ssp;->ssp(Lcom/oneplus/android/server/alertslider/ssp;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancelNonSelfVibrate()V

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp$zta;->zta:Lcom/oneplus/android/server/alertslider/ssp;

    invoke-static {v0}, Lcom/oneplus/android/server/alertslider/ssp;->cno(Lcom/oneplus/android/server/alertslider/ssp;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp$zta;->zta:Lcom/oneplus/android/server/alertslider/ssp;

    invoke-static {v0}, Lcom/oneplus/android/server/alertslider/ssp;->ssp(Lcom/oneplus/android/server/alertslider/ssp;)Landroid/os/Vibrator;

    move-result-object v3

    invoke-static/range {v2 .. v7}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneMultipleTimes(Landroid/content/Context;Landroid/os/Vibrator;IIII)Z

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp$zta;->zta:Lcom/oneplus/android/server/alertslider/ssp;

    invoke-static {p0}, Lcom/oneplus/android/server/alertslider/ssp;->kth(Lcom/oneplus/android/server/alertslider/ssp;)V

    return-void
.end method
