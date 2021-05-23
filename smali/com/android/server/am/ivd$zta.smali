.class Lcom/android/server/am/ivd$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ivd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/ivd;


# direct methods
.method constructor <init>(Lcom/android/server/am/ivd;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ivd$zta;->zta:Lcom/android/server/am/ivd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/ivd;->zta()Lcom/android/server/am/ivd;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ivd;->you(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceToProcState(I)I

    move-result p0

    const/16 p2, 0x14

    const/4 v0, 0x3

    if-eq p0, p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUidStateChanged uid:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |procState:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/am/ivd;->rtg(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->zta()Lcom/android/server/am/ivd;

    move-result-object p2

    invoke-static {p2, p1, p0}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;II)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onUidGone uid:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->rtg(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->zta()Lcom/android/server/am/ivd;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/am/ivd;->bvj(Lcom/android/server/am/ivd;I)V

    :cond_2
    :goto_0
    return-void
.end method
