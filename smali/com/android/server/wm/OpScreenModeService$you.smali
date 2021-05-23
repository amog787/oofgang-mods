.class Lcom/android/server/wm/OpScreenModeService$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$you;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iget-object p3, p0, Lcom/android/server/wm/OpScreenModeService$you;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p3}, Lcom/android/server/wm/OpScreenModeService;->access$900(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/android/server/wm/OpScreenModeService$you;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p4}, Lcom/android/server/wm/OpScreenModeService;->access$1300(Lcom/android/server/wm/OpScreenModeService;)Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashSet;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$you;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p0, p2}, Lcom/android/server/wm/OpScreenModeService;->access$1402(Lcom/android/server/wm/OpScreenModeService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$you;->zta:Lcom/android/server/wm/OpScreenModeService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$1402(Lcom/android/server/wm/OpScreenModeService;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
