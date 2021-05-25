.class Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ire"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;


# direct methods
.method private constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ABSENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[SIMChange] NO-SIM, stop the timmer immediately"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string p1, "[SIMChange] HAVE-SIM"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    const/4 p1, 0x1

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    :cond_2
    return-void
.end method
