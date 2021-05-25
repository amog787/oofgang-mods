.class Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnomalyStatusChange([I)V
    .locals 6

    if-eqz p1, :cond_2

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "OPSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oops!, onAnomalyStatusChange, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    iget-object v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    aget v4, p1, v3

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->sis(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "oops!, the enum-definition is not matched with telephony"

    :goto_1
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p0, "onAnomalyStatusChange: wrong parameter !"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno(Lcom/android/server/power/OnePlusStandbyAnalyzer;Landroid/telephony/ServiceState;)V

    return-void
.end method
