.class Lcom/oneplus/android/server/display/OpColorDisplayService$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/OpColorDisplayService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "frontPackageChanged: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpColorDisplayService"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "lpackageName: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    :try_start_0
    const-string p2, "20801"

    const-string p6, "ro.boot.project_name"

    invoke-static {p6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p6, 0x1

    if-ne p6, p2, :cond_3

    sget-object p2, Lcom/android/server/display/DisplayOLC;->APP_GAMMA:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$800(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gamma App in Front "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p2, p6}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$802(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    iget-object p2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    sget-object p3, Lcom/android/server/display/DisplayOLC;->APP_GAMMA:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$902(Lcom/oneplus/android/server/display/OpColorDisplayService;D)D

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    :goto_0
    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$500(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$800(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Gamma App Gone "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$802(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, p3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$902(Lcom/oneplus/android/server/display/OpColorDisplayService;D)D

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
